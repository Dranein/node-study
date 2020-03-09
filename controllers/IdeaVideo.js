const IdeaVideoServices = require('../services/IdeaVideo');
let ideaVideoServices = new IdeaVideoServices();

let addIdeaVideo = {
  method: 'POST',
  path: 'ideaVideo/add',
  fn: ideaVideoServices.addIdeaVideo()
};

let getIdeaVideoList = {
  method: 'GET',
  path: 'ideaVideo/list',
  fn: ideaVideoServices.getList()
};

let deleteIdeaVideo = {
  method: 'GET',
  path: 'ideaVideo/delete',
  fn: ideaVideoServices.deleteIdeaVideo()
};

let updateIdeaVideo = {
  method: 'POST',
  path: 'ideaVideo/update',
  fn: ideaVideoServices.updateIdeaVideo()
};


// C端
let getListToC = {
  method: 'GET',
  path: 'idea/video/list',
  fn: ideaVideoServices.getListToC()
};

module.exports = {
  addIdeaVideo,
  getIdeaVideoList,
  deleteIdeaVideo,
  updateIdeaVideo,
  getListToC
};