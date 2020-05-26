const AgileCaseServices = require('../services/AgileCase');
let agileCaseServices = new AgileCaseServices();


let getList = {
  method: 'GET',
  path: 'agileCase',
  fn: agileCaseServices.getList()
};

let add = {
  method: 'POST',
  path: 'agileCase/add',
  fn: agileCaseServices.add()
};

let deleteById = {
  method: 'GET',
  path: 'agileCase/delete',
  fn: agileCaseServices.delete()
};

let update = {
  method: 'POST',
  path: 'agileCase/update',
  fn: agileCaseServices.update()
};

// C端
let getListToC = {
  method: 'GET',
  path: 'agileCase/list',
  fn: agileCaseServices.getListToC()
};

module.exports = {
  getList,
  getListToC,
  add,
  deleteById,
  update
};