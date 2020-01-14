const UserModel = require('../models/User');
const JsonResult = require('../helper/JsonResult');
let userModel = UserModel();

class UserServices {
  getList() {
    return async (ctx, next) => {
      let user = await userModel.findAll();
      let jsonResult = new JsonResult(ctx);
      let data = user.length > 0 ? user.map(item => ({
        id: item.id,
        username: item.username
      })) : [];
      jsonResult.ok({data});
    }
  }

  addUser() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {username = '', pwd = ''} = ctx.request.body;
      if (username === '') {
        jsonResult.fail({status: 301});
      } else if (pwd === '') {
        jsonResult.fail({status: 301});
      } else {
        await userModel.create({username, pwd});
        jsonResult.ok();
      }
    }
  }

  deleteUser() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id} = ctx.request.query;
      if (!id || id === '') {
        jsonResult.fail({ctx, status: 302})
      } else {
        let user = await this.findOneUserById(id);
        if (user) {
          await userModel.destroy({where: {id}})
          jsonResult.ok();
        } else {
          jsonResult.fail({status: 101})
        }
      }
    }
  }

  updateUser() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let {id = ''} = ctx.request.query;
      let {username = '', pwd = ''} = ctx.request.body;
      if (id === '') {
        jsonResult.fail({ctx, status: 302})
      } else if (username === '' && pwd === '') {
        jsonResult.fail({ctx, status: 303})
      } else {
        let user = await this.findOneUserById(id);
        if (user) {
          let now = Date.now();
          await user.update({
            username,
            updateAt: now
          });
          jsonResult.ok();
        } else {
          jsonResult.fail({status: 101})
        }
      }
    }
  }

  findOneUserById(id) {
    return userModel.findOne({where: {id: id}});
  };
}

module.exports = UserServices;