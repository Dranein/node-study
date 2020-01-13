const Sequelize = require('sequelize');
console.log('init sequelize...');

const config = require('./config');

let sequelize = new Sequelize(
  config.database,
  config.username,
  config.password,
  {
    host: config.host,
    dialect: 'mysql',
    pool: {
      max: 5,
      min: 0,
      idle: 30000
    }
  }
);

const db = {
  sequelize
};

const TYPES = ['STRING', 'INTEGER', 'BIGINT', 'TEXT', 'DOUBLE', 'DATEONLY', 'BOOLEAN'];
for (let type of TYPES) {
  db[type] = Sequelize[type];
}

module.exports = db;