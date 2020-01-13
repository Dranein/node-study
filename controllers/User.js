const UserModel = require('../models/User');
let User = UserModel();

let getAllUser = {
  method: 'GET',
  path: '/getAllUser',
  fn: async (ctx, next) => {
    ctx.response.type = 'application/json';
    let user = await User.findAll();
    console.log(`find ${user.length} user:`);
    let result = {
      data: []
    };
    if (user.length > 0) {
      for (let u of user) {
        let {id, username} = u;
        result.data.push({id, username});
      }
    }
    ctx.response.body = result;
  }
};

let addUser = {
  method: 'POST',
  path: '/addUser',
  fn: async (ctx, next) => {
    ctx.response.type = 'application/json';
    let {username = '', pwd = ''} = ctx.request.body;
    if (username === '') {
      ctx.response.body = {msg: '请传入用户名'};
    } else if (pwd === '') {
      ctx.response.body = {msg: '请传入密码'};
    } else {
      let user = await User.create({username, pwd});
      console.log('created: ' + JSON.stringify(user));
      ctx.response.body = {msg: '添加成功'};
    }

  }
};

let deleteUser = {
  method: 'GET',
  path: '/deleteUser',
  fn: async (ctx, next) => {
    ctx.response.type = 'application/json';
    let {id} = ctx.request.query;
    if (!id || id === '') {
      ctx.response.body = {msg: 'id不能为空'};
    } else {
      await User.destroy({
        where: {id}
      })
      console.log('destroy: user: id = ' + id);
      ctx.response.body = {msg: '删除成功'};
    }
  }
};

let updateUserById = {
  method: 'POST',
  path: '/updateUserById',
  fn: async (ctx, next) => {
    ctx.response.type = 'application/json';
    let id = ctx.request.body.id || '';
    let username = ctx.request.body.username || '';
    let pwd = ctx.request.body.pwd || '';
    if (id === '') {
      ctx.response.body = '请传入id';
    } else if (username === '' && pwd === '') {
      ctx.response.body = '请传入修改的内容';
    } else {
      let user = await findOneUserById(id);
      console.log('updateUserById: user: ' + JSON.stringify(user));
      if (user) {
        await user.update({
          username
        });
        ctx.response.body = {msg: '修改成功'};
      } else {
        ctx.response.body = {msg: '该用户不存在'};
      }
    }
  }
}

let findOneUserById = (id) => {
  return User.findOne({where: {id: id}});
};

module.exports = {
  getAllUser,
  addUser,
  updateUserById,
  deleteUser
}