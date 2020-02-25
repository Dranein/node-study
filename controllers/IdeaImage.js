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

module.exports = {
  addIdeaImage,
  getIdeaImageList
};