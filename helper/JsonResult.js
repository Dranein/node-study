const statusList = {
  101: '该用户不存在',
  200: 'OK',
  301: '参数不完整',
  302: 'id不能为空',
  303: '请传入修改的内容',
  defaultStatus: '未知错误'
};

class JsonResult {
  constructor(ctx){
    this.ctx = ctx;
    this.ctx.response.type = 'application/json';
  }
  ok({data = ''} = {}){
    this.ctx.response.body = {
      status: 200,
      msg: statusList[200],
      data: data || ''
    }
  }
  fail({status, data}){
    this.ctx.response.body = {
      status,
      msg: statusList[status] || statusList.defaultStatus,
      data: data || ''
    }
  }
}

module.exports = JsonResult;