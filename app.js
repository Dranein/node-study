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

// 跨域设置
// app.use(convert(cors));
app.use(async (ctx, next) => {
  ctx.set('Access-Control-Allow-Origin', '*');
  await next();
});
app.use(async (ctx, next)=> {
  ctx.set('Access-Control-Allow-Origin', '*');
  ctx.set('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
  ctx.set('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
  if (ctx.method == 'OPTIONS') {
    ctx.body = 200;
  } else {
    await next();
  }
});

// add controllers:
app.use(controller());

app.listen(3001);
console.log('port 3001....')






