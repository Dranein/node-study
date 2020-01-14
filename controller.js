const fs = require('fs');
// 注册url，koa-router返回的是个函数
const router = require('koa-router')();

function addControllers(router, controllers_dir) {
  // 扫描controllers下面的js文件
  let file = fs.readdirSync(`${__dirname}/${controllers_dir}`).filter(f => f.endsWith('.js'));
  for (let f of file) {
    console.log(`process controller: ${f}...`);
    let mapping = require(`${__dirname}/${controllers_dir}/${f}`);
    addMapping(router, mapping);
  }
}

function addMapping(router, mapping) {
  for (let key in mapping) {
    let obj = mapping[key];
    if (obj.method === 'GET') {
      router.get(`/${obj.path}`, obj.fn);
      console.log(`register URL mapping: GET /${obj.path}`);
    } else if (obj.method === 'POST') {
      router.post(`/${obj.path}`, obj.fn);
      console.log(`register URL mapping: POST /${obj.path}`);
    } else {
      console.log(`invalid URL: ${obj.method}/${obj.path}`);
    }
  }
}

function controller (dir) {
  const controllers_dir = dir || 'controllers';
  addControllers(router, controllers_dir);
  return router.routes();
}

module.exports = controller;

