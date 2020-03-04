const IdeaWebpageServices = require('../services/IdeaWebpage');
let ideaWebpageServices = new IdeaWebpageServices();

let add = {
  method: 'POST',
  path: 'ideaWebpage/add',
  fn: ideaWebpageServices.add()
};

let getList = {
  method: 'GET',
  path: 'ideaWebpage/list',
  fn: ideaWebpageServices.getList()
};

let deleteById = {
  method: 'GET',
  path: 'ideaWebpage/delete',
  fn: ideaWebpageServices.delete()
};

let update = {
  method: 'POST',
  path: 'ideaWebpage/update',
  fn: ideaWebpageServices.update()
};

module.exports = {
  add,
  getList,
  deleteById,
  update
};