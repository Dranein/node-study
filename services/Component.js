const ComponentModel = require('../models/Component');
const JsonResult = require('../helper/JsonResult');
let componentModel = ComponentModel();

class ComponentServices {
  getList() {
    return async (ctx, next) => {
      let user = await componentModel.findAll();
      let jsonResult = new JsonResult(ctx);
      jsonResult.ok({data: user});
    }
  }
  addComponent() {
    return async (ctx, next) => {
      console.log(ctx.request.files);
      ctx.body = JSON.stringify(ctx.request.files);
    }
  }
}

module.exports = ComponentServices;
