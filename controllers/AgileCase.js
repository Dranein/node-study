const AgileCaseServices = require('../services/AgileCase');
let agileCaseServices = new AgileCaseServices();

let getList = {
  method: 'GET',
  path: 'agileCase/list',
  fn: agileCaseServices.getList()
};

let addAgileCase = {
  method: 'POST',
  path: 'agileCase/add',
  fn: agileCaseServices.addAgileCase()
}

module.exports = {
  getList,
  addAgileCase
}