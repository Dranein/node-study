const Koa = require('koa');
// 处理post请求，解析request的body
const bodyParser = require('koa-bodyparser');
// 导入controller middleware:
const controller = require('./controller');

const Sequelize = require('sequelize');
const config = require('./config');

const app = new Koa();

let sequelize = new Sequelize(config.database, config.username, config.password, {
  host: config.host,
  dialect: 'mysql',
  pool: {
    max: 5,
    min: 0,
    idle: 30000
  }
});

let User = sequelize.define('userinfo', {
  id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  userid: Sequelize.INTEGER,
  username: Sequelize.STRING(50),
  pwd: Sequelize.STRING(50),
}, {
  freezeTableName: true,
  timestamps: false
});

(async () => {
  let user = await User.findAll({
    where: {
      username: 'dranein'
    }
  });
  console.log(`find ${user.length} pets:`);
  for (let p of user) {
    console.log(JSON.stringify(p));
  }
})();

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






