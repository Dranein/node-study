const JsonResult = require('../helper/JsonResult');
const IdeaImageModel = require('../models/IdeaImage');

let ideaImageModel = IdeaImageModel();

const Sequelize = require('sequelize');
const Op = Sequelize.Op;

class IdeaImageServices {
  addIdeaImage () {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        title = '',
        images = '',
        preview_image = '',
        promotion_industry = '',
        image_promotion_product = '',
        advert_type = '',
        image_show_type = '',
        image_putin_type = '',
        click_rate = '',
        conversion_cost = '',
        authors = '',
        tags = '',
        status= ''
      } = ctx.request.body;
      if (promotion_industry === ''
        || image_promotion_product === ''
        || advert_type === ''
        || image_show_type === ''
        || image_putin_type === ''
        || click_rate === ''
        || conversion_cost === '') {
        jsonResult.fail({status: 301});
        return false;
      }
      let now = Date.now();
      await ideaImageModel.create({
        title,
        images: JSON.stringify(images),
        preview_image,
        promotion_industry,
        image_promotion_product,
        advert_type,
        image_show_type,
        image_putin_type,
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
  };

  getList() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        current,
        pageSize,
        promotion_industry = '',
        advert_type = '',
        status = '',
        title = '' } = ctx.request.query;
      let parms = {};
      if (promotion_industry !== '') parms['promotion_industry'] = promotion_industry;
      if (status !== '') parms['status'] = status;
      if (advert_type !== '') parms['advert_type'] = advert_type;
      if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%'};
      let ideaImageList = await ideaImageModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order: [
          ['updateAt', 'DESC'],
        ]
      });
      jsonResult.ok({
        data: ideaImageList
      });
    }
  };

  deleteIdeaImage() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id} = ctx.request.query;
      if (!id || id === '') {
        jsonResult.fail({ctx, status: 403})
      } else {
        let ideaImage = await this.findOneUserById(id);
        if (ideaImage) {
          await ideaImageModel.destroy({where: {id}})
          jsonResult.ok();
        } else {
          jsonResult.fail({status: 101})
        }
      }
    }
  };

  updateIdeaImage() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id = ''} = ctx.request.query;
      let {
        title = '',
        images = '',
        preview_image = '',
        promotion_industry = '',
        image_promotion_product = '',
        advert_type = '',
        image_show_type = '',
        image_putin_type = '',
        click_rate = '',
        conversion_cost = '',
        authors = '',
        tags = '',
        status= ''
      } = ctx.request.body;
      if (id === '') {
        jsonResult.fail({ctx, status: 302})
      } else {
        let ideaImage = await this.findOneUserById(id);
        if (ideaImage) {
          let now = Date.now();
          await ideaImage.update({
            title,
            images: JSON.stringify(images),
            preview_image,
            promotion_industry,
            image_promotion_product,
            advert_type,
            image_show_type,
            image_putin_type,
            click_rate,
            conversion_cost,
            authors: JSON.stringify(authors),
            tags: JSON.stringify(tags),
            status: status,
            updateAt: now
          });
          jsonResult.ok();
        } else {
          jsonResult.fail({status: 101})
        }
      }
    }
  };

  findOneUserById(id) {
    return ideaImageModel.findOne({where: {id: id}});
  };

  //  toC
  getListToC () {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        current,
        pageSize,
        promotion_industry = '',
        advert_type = '',
        seachTxt = '',
        orderBy = '' } = ctx.request.query;
      let parms = {
        status: 0
      };
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
      let ideaImageList = await ideaImageModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order
      });
      jsonResult.ok({
        data: ideaImageList
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
        let ideaImage = await this.findOneUserById(id);
        if (ideaImage && ideaImage.status === 0) {
          let ideaImageList = await ideaImageModel.findAndCountAll({
            where: {
              promotion_industry: ideaImage.promotion_industry,
              status: 0,
              [Op.not]: [{ id: ideaImage.id}]
            },
            limit: Number(12),
            offset: 0,
            order: [['pv', 'DESC']]
          });
          let hotList = ideaImageList.rows;
          this.addPv(ideaImage);
          ideaImage.click_rate = '**';
          ideaImage.conversion_cost = '**';
          jsonResult.ok({data: {
            detail: ideaImage,
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

module.exports = IdeaImageServices;
