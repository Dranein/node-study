const Koa = require('koa');
const path = require('path');
const static = require("koa-static");
const koaBody = require('koa-body')
const controller = require('./controller');
const Utils = require('./helper/utils');

const app = new Koa();

// log request URL:
app.use(async (ctx, next) => {
  console.log(`Process ${ctx.request.method} ${ctx.request.url}...`);
  await next();
});

// body 解析
app.use(koaBody({
  multipart: true, // 支持文件上传
  // encoding:'gzip',
  formidable: {
    uploadDir: path.join(__dirname, 'static/'), // 设置文件上传目录
    keepExtensions: true,    // 保持文件的后缀
    maxFieldsSize: 20 * 1024 * 1024, // 文件上传大小
    onFileBegin: (name, file) => { // 文件上传前的设置
      console.log('------------------------------------')
      console.log(`name: ${file.name}`);
      console.log(`fileSavePath: ${file.path}`);
      // 获取文件后缀
      const ext = Utils.getUploadFileExt(file.name);
      // 最终要保存到的文件夹目录
      const dirName = Utils.getUploadDirName();
      const fileName = Utils.getUploadFileName(ext);
      const dir = path.join(__dirname, `static/${dirName}`);
      // 检查文件夹是否存在如果不存在则新建文件夹
      Utils.checkDirExist(dir);
      // 获取文件名称
      file.name = `${dirName}/${fileName}`;;
      file.path = `${dir}/${fileName}`;
      app.context.uploadpath = app.context.uploadpath ? app.context.uploadpath : {};
      app.context.uploadpath[name] = `${dirName}/${fileName}`;
      console.log('------------------------------------')
    },
  }
}));


// 设置静态资源文件夹
app.use(static(
  path.join(__dirname, 'static/')
))


// 跨域设置
app.use(async (ctx, next) => {
  ctx.set('Access-Control-Allow-Origin', '*');
  await next();
});
app.use(async (ctx, next) => {
  ctx.set('Access-Control-Allow-Origin', '*');
  ctx.set('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
  ctx.set('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
  if (ctx.method == 'OPTIONS') {
    ctx.body = 200;
  } else {
    await next();
  }
});

// add controllers: 路由都在这里控制
app.use(controller());

app.listen(8080);
console.log('port 8080....')






