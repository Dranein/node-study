const ComponentModel = require('../models/Component');
const JsonResult = require('../helper/JsonResult');
let componentModel = ComponentModel();

class ComponentServices {
  getList() {
    return async (ctx, next) => {
      let component = await componentModel.findAll();
      let jsonResult = new JsonResult(ctx);
      jsonResult.ok({data: component});
    }
  }
  addComponent() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {title = '', hallmark = '', imgUrl = '', classify_id = ''} = ctx.request.body;
      if (title === '' || hallmark === '' || imgUrl === '' || classify_id === '') {
        jsonResult.fail({status: 301});
      } else {
        await componentModel.create({title, hallmark, imgUrl, classify_id});
        jsonResult.ok();
      }
    }
  }
}

module.exports = ComponentServices;
