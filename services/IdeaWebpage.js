const JsonResult = require('../helper/JsonResult');
const IdeaWebpageModel = require('../models/IdeaWebpage');
let ideaWebpageModel = IdeaWebpageModel();
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

class IdeaVideoServices {
  add () {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        title = '',
        url = '',
        image_cover = '',
        promotion_industry = '',
        advert_type = '',
        webpage_type = '',
        conversion_type = '',
        promotion_cycle = '',
        page_num = '',
        conversion_cost = '',
        uv = '',
        average_time = '',
        click_rate = '',
        conversion_rate = '',
        nice_reason = '',
        bright_analysis = '',
        top_copywritings = '',
        authors = '',
        tags = '',
        status= ''
      } = ctx.request.body;
      if (promotion_industry === ''
        || advert_type === ''
        || webpage_type === ''
        || conversion_type === ''
        || click_rate === ''
        || conversion_cost === '') {
        jsonResult.fail({status: 301});
        return false;
      }
      let now = Date.now();
      await ideaWebpageModel.create({
        url,
        title,
        image_cover,
        promotion_industry,
        advert_type,
        webpage_type,
        conversion_type,
        promotion_cycle,
        page_num,
        conversion_cost,
        uv,
        average_time,
        click_rate,
        conversion_rate,
        nice_reason,
        bright_analysis,
        top_copywritings: JSON.stringify(top_copywritings),
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
        status = '',
        webpage_type = '',
        title = '' } = ctx.request.query;
      let parms = {};
      if (status !== '') parms['status'] = status;
      if (webpage_type !== '') parms['webpage_type'] = webpage_type;
      if (promotion_industry !== '') parms['promotion_industry'] = promotion_industry;
      if (advert_type !== '') parms['advert_type'] = advert_type;
      if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%'};
      let ideaWebpageList = await ideaWebpageModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order: [
          ['updateAt', 'DESC'],
        ]
      });
      jsonResult.ok({
        data: ideaWebpageList
      });
    }
  }

  delete() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id} = ctx.request.query;
      if (!id || id === '') {
        jsonResult.fail({ctx, status: 403})
      } else {
        let ideaWebpage = await this.findOneUserById(id);
        if (ideaWebpage) {
          await ideaWebpageModel.destroy({where: {id}})
          jsonResult.ok();
        } else {
          jsonResult.fail({status: 101})
        }
      }
    }
  }

  update() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id = ''} = ctx.request.query;
      let {
        title = '',
        url = '',
        image_cover = '',
        promotion_industry = '',
        advert_type = '',
        webpage_type = '',
        conversion_type = '',
        promotion_cycle = '',
        page_num = '',
        conversion_cost = '',
        uv = '',
        average_time = '',
        click_rate = '',
        conversion_rate = '',
        nice_reason = '',
        bright_analysis = '',
        top_copywritings = '',
        authors = '',
        tags = '',
        status= ''
      } = ctx.request.body;
      if (id === '') {
        jsonResult.fail({ctx, status: 302})
      } else {
        let ideaWebpage = await this.findOneUserById(id);
        if (ideaWebpage) {
          let now = Date.now();
          await ideaWebpage.update({
            url,
            title,
            image_cover,
            promotion_industry,
            advert_type,
            webpage_type,
            conversion_type,
            promotion_cycle,
            page_num,
            conversion_cost,
            uv,
            average_time,
            click_rate,
            conversion_rate,
            nice_reason,
            bright_analysis,
            top_copywritings: JSON.stringify(top_copywritings),
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
    return ideaWebpageModel.findOne({where: {id: id}});
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
        status = '',
        webpage_type = '',
        title = '' } = ctx.request.query;
      let parms = {
        status: 0
      };
      if (webpage_type !== '') parms['webpage_type'] = webpage_type;
      if (promotion_industry !== '') parms['promotion_industry'] = promotion_industry;
      if (advert_type !== '') parms['advert_type'] = advert_type;
      if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%'};
      let ideaWebpageList = await ideaWebpageModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order: [
          ['updateAt', 'DESC'],
        ]
      });
      jsonResult.ok({
        data: ideaWebpageList
      });
    }
  }

}

module.exports = IdeaVideoServices;
