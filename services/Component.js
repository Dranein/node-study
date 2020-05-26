const ComponentModel = require('../models/Component');
const JsonResult = require('../helper/JsonResult');
let componentModel = ComponentModel();

const Sequelize = require('sequelize');
const Op = Sequelize.Op;

class ComponentServices {
  getList() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        current,
        pageSize,
        status = '',
        classify_id = '',
        title = '' } = ctx.request.query;
      let parms = {};
      if (status !== '') parms['status'] = status;
      if (classify_id !== '') parms['classify_id'] = classify_id;
      if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%' };
      let componentList = await componentModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order: [
          ['updateAt', 'DESC'],
        ]
      });
      jsonResult.ok({
        data: componentList
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
        classify_id = '',
        status = '' } = ctx.request.body;
      if (title === '') {
        jsonResult.fail({ status: 301 });
        return false;
      }
      let now = Date.now();
      await componentModel.create({
        title,
        imgUrl: JSON.stringify(imgUrl),
        hallmark,
        classify_id,
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
          await componentModel.destroy({ where: { id } })
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
        classify_id = '',
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
            classify_id,
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
    return componentModel.findOne({ where: { id: id } });
  };


  // C端
  getListToC() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {
        current,
        pageSize,
        classify_id = '',
        title = '' } = ctx.request.query;
      let parms = {
        status: 0
      };
      if (classify_id !== '') parms['classify_id'] = classify_id;
      if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%' };
      let componentList = await componentModel.findAndCountAll({
        where: parms,
        limit: Number(pageSize),
        offset: (Number(current) - 1) * Number(pageSize),
        order: [
          ['updateAt', 'DESC'],
        ]
      });
      jsonResult.ok({
        data: componentList
      });
    }
  };
}

module.exports = ComponentServices;
