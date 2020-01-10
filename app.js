const Koa = require('koa');
// 处理post请求，解析request的body
const bodyParser = require('koa-bodyparser');
// 导入controller middleware:
const controller = require('./controller');

const app = new Koa();

// log request URL:
app.use(async (ctx, next) => {
  console.log(`Process ${ctx.request.method} ${ctx.request.url}...`);
  await next();
});

// parse request body:
app.use(bodyParser());

// add controllers:
app.use(controller());

app.listen(3000);
console.log('port 3000....')






