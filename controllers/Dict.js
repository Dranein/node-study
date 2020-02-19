const DictServices = require('../services/Dict');
let dictServices = new DictServices();

let getList = {
  method: 'GET',
  path: 'dict',
  fn: dictServices.getList()
};

module.exports = {
  getList
};