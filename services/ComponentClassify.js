const ComponentClassifyModel = require('../models/ComponentClassify');
const JsonResult = require('../helper/JsonResult');
let componentClassifyModel = ComponentClassifyModel();

class componentClassifyServices {
  getList() {
    return async (ctx, next) => {
      let componentClassifys = await componentClassifyModel.findAll();
      let jsonResult = new JsonResult(ctx);
      jsonResult.ok({data: componentClassifys});
    }
  }
}

module.exports = componentClassifyServices;
