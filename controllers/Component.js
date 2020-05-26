const ComponentServices = require('../services/Component');
let componentServices = new ComponentServices();

let getList = {
  method: 'GET',
  path: 'component',
  fn: componentServices.getList()
};

let add = {
  method: 'POST',
  path: 'component/add',
  fn: componentServices.add()
};

let deleteById = {
  method: 'GET',
  path: 'component/delete',
  fn: componentServices.delete()
};

let update = {
  method: 'POST',
  path: 'component/update',
  fn: componentServices.update()
};

// C端
let getListToC = {
  method: 'GET',
  path: 'component/list',
  fn: componentServices.getListToC()
};

module.exports = {
  getList,
  getListToC,
  add,
  deleteById,
  update
};