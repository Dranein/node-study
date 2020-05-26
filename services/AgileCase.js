const AgileCaseModel = require('../models/AgileCase');
const JsonResult = require('../helper/JsonResult');
let agileCaseModel = AgileCaseModel();

const Sequelize = require('sequelize');
const Op = Sequelize.Op;

class AgileCaseServices {
  getList() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        current,
        pageSize,
        status = '',
        case_classify_id = '',
        title = '' } = ctx.request.query;
      let parms = {};
      if (status !== '') parms['status'] = status;
      if (case_classify_id !== '') parms['case_classify_id'] = case_classify_id;
      if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%' };
      let agileCaseList = await agileCaseModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order: [
          ['updateAt', 'DESC'],
        ]
      });
      jsonResult.ok({
        data: agileCaseList
      });
    }
  }
  add() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        title = '',
        hallmark = '',
        imgUrl = '',
        demoUrl = '',
        case_classify_id = '',
        status = '' } = ctx.request.body;
      if (title === '') {
        jsonResult.fail({ status: 301 });
        return false;
      }
      let now = Date.now();
      await agileCaseModel.create({
        title,
        imgUrl: JSON.stringify(imgUrl),
        hallmark,
        case_classify_id,
        demoUrl,
        status,
        updateAt: now,
        createAt: now
      });
      jsonResult.ok();
    }
  }
  delete() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let { id } = ctx.request.query;
      if (!id || id === '') {
        jsonResult.fail({ ctx, status: 403 })
      } else {
        let component = await this.findOneUserById(id);
        if (component) {
          await agileCaseModel.destroy({ where: { id } })
          jsonResult.ok();
        } else {
          jsonResult.fail({ status: 101 })
        }
      }
    }
  }

  update() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let { id = '' } = ctx.request.query;
      let {
        title = '',
        hallmark = '',
        imgUrl = '',
        demoUrl = '',
        case_classify_id = '',
        status = ''
      } = ctx.request.body;
      if (id === '') {
        jsonResult.fail({ ctx, status: 302 })
      } else {
        let component = await this.findOneUserById(id);
        if (component) {
          let now = Date.now();
          await component.update({
            title,
            hallmark,
            case_classify_id,
            demoUrl,
            imgUrl: JSON.stringify(imgUrl),
            status,
            updateAt: now,
          });
          jsonResult.ok();
        } else {
          jsonResult.fail({ status: 404 })
        }
      }
    }
  };

  findOneUserById(id) {
    return agileCaseModel.findOne({ where: { id: id } });
  };


  // C端
  getListToC() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        current,
        pageSize,
        case_classify_id = '',
        title = '' } = ctx.request.query;
      let parms = {
        status: 0
      };
      if (case_classify_id !== '') parms['case_classify_id'] = case_classify_id;
      if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%' };
      let agileCaseList = await agileCaseModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order: [
          ['updateAt', 'DESC'],
        ]
      });
      jsonResult.ok({
        data: agileCaseList
      });
    }
  };
}

module.exports = AgileCaseServices;
