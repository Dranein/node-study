const AgileCaseClassifyModel = require('../models/AgileCaseClassify');
const JsonResult = require('../helper/JsonResult');
let agileCaseClassifyModel = AgileCaseClassifyModel();

class AgileCaseClassifyServices {
  getList() {
    return async (ctx, next) => {
      let agileCaseClassifys = await agileCaseClassifyModel.findAll();
      let jsonResult = new JsonResult(ctx);
      jsonResult.ok({data: agileCaseClassifys});
    }
  }
}

module.exports = AgileCaseClassifyServices;
