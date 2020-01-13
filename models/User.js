const db = require('../db');

module.exports = app => {
  let now = Date.now();
  const User = db.sequelize.define('userinfo', {
    id: {
      type: db.INTEGER,
      allowNull: false, // 是否允许为NULL
      primaryKey: true, // 字段是主键
      autoIncrement: true, // 是否自增
      // field: 'project_title' // 数据库中字段的实际名称，所以这的key相当于给设置别名
    },
    username: {
      type: db.STRING(50),
      allowNull: false
    },
    pwd: {
      type: db.STRING(50),
      allowNull: false
    },
    createAt: {
      type: db.BIGINT,
      // 可以重写某个字段的字段名
      field: 'create_time',
      allowNull: false,
      defaultValue: now,
    },
    updateAt: {
      type: db.BIGINT,
      field: 'update_time',
      allowNull: false,
      defaultValue: now,
    }
  }, {
    freezeTableName: true,
    timestamps: false
  })
  return User;
};
