const IdeaImageServices = require('../services/IdeaImage');
let ideaImageServices = new IdeaImageServices();

let addIdeaImage = {
  method: 'POST',
  path: 'ideaImage/add',
  fn: ideaImageServices.addIdeaImage()
};

module.exports = {
  addIdeaImage
};