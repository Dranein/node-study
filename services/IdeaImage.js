const JsonResult = require('../helper/JsonResult');
const IdeaImageModel = require('../models/IdeaImage');
let ideaImageModel = IdeaImageModel();

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
  }

  getList() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let { current, pageSize } = ctx.request.query;
      let ideaImageList = await ideaImageModel.findAndCountAll({
        where: '',
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
  }

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
  }

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
}

module.exports = IdeaImageServices;
