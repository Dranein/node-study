const db = require('../db');

module.exports = () => {
  let now = Date.now();
  return db.sequelize.define('agile_case' , {
    id: {
      type: db.INTEGER,
      allowNull: false, // 是否允许为NULL
      primaryKey: true, // 字段是主键
      autoIncrement: true, // 是否自增
    },
    classify_id: {
      type: db.INTEGER,
      allowNull: false, // 是否允许为NULL
    },
    title: {
      type: db.STRING,
      allowNull: false, // 是否允许为NULL
    },
    hallmark: {
      type: db.STRING,
      allowNull: false, // 是否允许为NULL
    },
    demoUrl: {
      type: db.STRING,
      allowNull: false, // 是否允许为NULL
    },
    createAt: {
      type: db.BIGINT,
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
  })
};
