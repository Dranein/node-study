const JsonResult = require('../helper/JsonResult');

class FileServices {
  upload() {
    return async (ctx, next) => {
      let fileName = ctx.request.files.file.name;
      let jsonResult = new JsonResult(ctx);
      let data = {
        url: fileName
      };
      jsonResult.ok({data});
    }
  }
}

module.exports = FileServices;
