const db = require('../db');

module.exports = () => {
  let now = Date.now();
  return db.sequelize.define('user', {
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
    classify: {
      type: db.INTEGER,
      allowNull: true
    },
    createAt: {
      type: db.BIGINT,
      // 可以重写某个字段的字段名
      allowNull: false,
      defaultValue: now,
    },
    updateAt: {
      type: db.BIGINT,
      allowNull: false,
      defaultValue: now,
    }
  }, {
    freezeTableName: true,
    timestamps: false
  });
};
