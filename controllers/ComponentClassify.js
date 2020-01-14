const ComponentClassifyServices = require('../services/ComponentClassify');
let componentClassifyServices = new ComponentClassifyServices();

let getList = {
  method: 'GET',
  path: 'componentClassify/list',
  fn: componentClassifyServices.getList()
};


module.exports = {
  getList
}