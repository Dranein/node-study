const AgileCaseModel = require('../models/AgileCase');
const JsonResult = require('../helper/JsonResult');
let agileCaseModel = AgileCaseModel();

class AgileCaseServices {
  getList() {
    return async (ctx, next) => {
      let agileCase = await agileCaseModel.findAll();
      let jsonResult = new JsonResult(ctx);
      jsonResult.ok({data: agileCase});
    }
  }
  addAgileCase() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {title = '', hallmark = '', demoUrl = '', classify_id = ''} = ctx.request.body;
      if (title === '' || hallmark === '' || demoUrl === '' || classify_id === '') {
        jsonResult.fail({status: 301});
      } else {
        await agileCaseModel.create({title, hallmark, demoUrl, classify_id});
        jsonResult.ok();
      }
    }
  }
}

module.exports = AgileCaseServices;
