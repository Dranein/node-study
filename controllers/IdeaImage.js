const IdeaImageServices = require('../services/IdeaImage');
let ideaImageServices = new IdeaImageServices();

let addIdeaImage = {
  method: 'POST',
  path: 'ideaImage/add',
  fn: ideaImageServices.addIdeaImage()
};

let getIdeaImageList = {
  method: 'GET',
  path: 'ideaImage/list',
  fn: ideaImageServices.getList()
};

let deleteIdeaImage = {
  method: 'GET',
  path: 'ideaImage/delete',
  fn: ideaImageServices.deleteIdeaImage()
};

let updateIdeaImage = {
  method: 'POST',
  path: 'ideaImage/update',
  fn: ideaImageServices.updateIdeaImage()
};

module.exports = {
  addIdeaImage,
  getIdeaImageList,
  deleteIdeaImage,
  updateIdeaImage
};