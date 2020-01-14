const ComponentServices = require('../services/Component');
let componentServices = new ComponentServices();

let getList = {
  method: 'GET',
  path: 'component/list',
  fn: componentServices.getList()
};

let addComponent = {
  method: 'POST',
  path: 'component/add',
  fn: componentServices.addComponent()
}

module.exports = {
  getList,
  addComponent
}