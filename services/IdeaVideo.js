const JsonResult = require('../helper/JsonResult');
const IdeaVideoModel = require('../models/IdeaVideo');
let ideaVideoModel = IdeaVideoModel();
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

class IdeaVideoServices {
  addIdeaVideo () {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        title = '',
        video_url = '',
        video_cover = '',
        promotion_industry = '',
        video_type = '',
        video_position = '',
        advert_type = '',
        video_promotion_product = '',
        video_putin_type = '',
        click_rate = '',
        conversion_cost = '',
        authors = '',
        tags = '',
        status= ''
      } = ctx.request.body;
      if (promotion_industry === ''
        || video_type === ''
        || video_position === ''
        || advert_type === ''
        || video_promotion_product === ''
        || video_putin_type === ''
        || click_rate === ''
        || conversion_cost === '') {
        jsonResult.fail({status: 301});
        return false;
      }
      let now = Date.now();
      await ideaVideoModel.create({
        title,
        video_url,
        video_cover,
        promotion_industry,
        video_type,
        advert_type,
        video_position,
        video_promotion_product,
        video_putin_type,
        click_rate,
        conversion_cost,
        authors: JSON.stringify(authors),
        tags: JSON.stringify(tags),
        status,
        updateAt: now,
        createAt: now
      });
      jsonResult.ok();
    }
  }

  getList() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        current,
        pageSize,
        promotion_industry = '',
        advert_type = '',
        video_type = '',
        status = '',
        video_position = '',
        title = '' } = ctx.request.query;
      let parms = {};
      if (status !== '') parms['status'] = status;
      if (video_type !== '') parms['video_type'] = video_type;
      if (video_position !== '') parms['video_position'] = video_position;
      if (promotion_industry !== '') parms['promotion_industry'] = promotion_industry;
      if (advert_type !== '') parms['advert_type'] = advert_type;
      if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%'};
      let ideaVideoList = await ideaVideoModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order: [
          ['updateAt', 'DESC'],
        ]
      });
      jsonResult.ok({
        data: ideaVideoList
      });
    }
  }

  deleteIdeaVideo() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id} = ctx.request.query;
      if (!id || id === '') {
        jsonResult.fail({ctx, status: 403})
      } else {
        let ideaVideo = await this.findOneUserById(id);
        if (ideaVideo) {
          await ideaVideoModel.destroy({where: {id}})
          jsonResult.ok();
        } else {
          jsonResult.fail({status: 101})
        }
      }
    }
  }

  updateIdeaVideo() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id = ''} = ctx.request.query;
      let {
        title = '',
        video_url = '',
        video_cover = '',
        promotion_industry = '',
        video_type = '',
        video_position = '',
        advert_type = '',
        video_promotion_product = '',
        video_putin_type = '',
        click_rate = '',
        conversion_cost = '',
        authors = '',
        tags = '',
        status= ''
      } = ctx.request.body;
      if (id === '') {
        jsonResult.fail({ctx, status: 302})
      } else {
        let ideaVideo = await this.findOneUserById(id);
        if (ideaVideo) {
          let now = Date.now();
          await ideaVideo.update({
            title,
            video_url,
            video_cover,
            promotion_industry,
            video_type,
            advert_type,
            video_position,
            video_promotion_product,
            video_putin_type,
            click_rate,
            conversion_cost,
            authors: JSON.stringify(authors),
            tags: JSON.stringify(tags),
            status,
            updateAt: now,
          });
          jsonResult.ok();
        } else {
          jsonResult.fail({status: 101})
        }
      }
    }
  };

  findOneUserById(id) {
    return ideaVideoModel.findOne({where: {id: id}});
  };

  // C端
  getListToC() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        current,
        pageSize,
        promotion_industry = '',
        advert_type = '',
        video_type = '',
        video_position = '',
        seachTxt = '',
        orderBy = '' } = ctx.request.query;
      let parms = {
        status: 0
      };
      if (video_type !== '') parms['video_type'] = video_type;
      if (video_position !== '') parms['video_position'] = video_position;
      if (promotion_industry !== '') parms['promotion_industry'] = promotion_industry;
      if (advert_type !== '') parms['advert_type'] = advert_type;
      let order = [['updateAt', 'DESC']];
      if (orderBy === 'pv') {
        order = [['pv', 'DESC']];
      }
      if (seachTxt !== '') {
        parms[Op.or] = [
          { 'title': { [Op.like]: '%' + seachTxt + '%'} },
          { 'authors': { [Op.like]: '%' + seachTxt + '%'} },
          { 'tags': { [Op.like]: '%' + seachTxt + '%'} }
        ];
      }
      let ideaVideoList = await ideaVideoModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order
      });
      jsonResult.ok({
        data: ideaVideoList
      });
    }
  };

  getDetailToC () {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id} = ctx.request.query;
      if (!id || id === '') {
        jsonResult.fail({ctx, status: 403})
      } else {
        let detail = await this.findOneUserById(id);
        if (detail && detail.status === 0) {
          let List = await ideaVideoModel.findAndCountAll({
            where: {
              promotion_industry: detail.promotion_industry,
              status: 0
            },
            limit: Number(12),
            offset: 0,
            order: [['pv', 'DESC']]
          });
          let hotList = List.rows.filter(item => item.id !== detail.id) || [];
          this.addPv(detail);
          jsonResult.ok({data: {
              detail,
              hotList
            }});
        } else {
          jsonResult.fail({status: 101});
        }
      }
    }
  };

  addPv (obj) {
    obj.update({
      ...obj,
      pv: obj.pv + 1
    });
  };
}

module.exports = IdeaVideoServices;
