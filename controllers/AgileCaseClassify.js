const AgileCaseClassifyServices = require('../services/AgileCaseClassify');
let agileCaseClassifyServices = new AgileCaseClassifyServices();

let getList = {
  method: 'GET',
  path: 'agileCaseClassify/list',
  fn: agileCaseClassifyServices.getList()
};


module.exports = {
  getList
}