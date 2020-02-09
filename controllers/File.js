const FileServices = require('../services/File');
let fileServices = new FileServices();

let upload = {
  method: 'POST',
  path: 'file/upload',
  fn: fileServices.upload()
};

module.exports = {
  upload
};