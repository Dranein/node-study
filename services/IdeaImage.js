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
        status
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
}

module.exports = IdeaImageServices;
