const UserServices = require('../services/User');
let userServices = new UserServices();

let getList = {
  method: 'GET',
  path: 'user/list',
  fn: userServices.getList()
};

let addUser = {
  method: 'POST',
  path: 'user/add',
  fn: userServices.addUser()
};

let deleteUser = {
  method: 'GET',
  path: 'user/delete',
  fn: userServices.deleteUser()
};

let updateUser = {
  method: 'POST',
  path: 'user/update',
  fn: userServices.updateUser()
}

module.exports = {
  getList,
  addUser,
  updateUser,
  deleteUser
}