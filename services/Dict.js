const JsonResult = require('../helper/JsonResult');
const DictModel = require('../models/Dict');
let dictModel = DictModel();

class DictServices {
  getList() {
    return async (ctx, next) => {
      let jsonResult = new JsonResult(ctx);
      let dicts = await dictModel.findAll();
      let data = {};
      dicts.map(item => {
        if (data[item.dict_type]) {
          data[item.dict_type].child.push({
            id: item.dict_id,
            name: item.dict_content
          });
        } else {
          data[item.dict_type] = {
            typeName: item.dict_name,
            child: [
              {
                id: item.dict_id,
                name: item.dict_content
              }
            ]
          }
        }
      });
      jsonResult.ok({data});
    }
  }
}

module.exports = DictServices;
