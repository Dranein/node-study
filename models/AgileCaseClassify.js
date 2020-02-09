const db = require('../db');

module.exports = () => {
  let now = Date.now();
  return db.sequelize.define('agile_case_classify' , {
    id: {
      type: db.INTEGER,
      allowNull: false, // 是否允许为NULL
      primaryKey: true, // 字段是主键
      autoIncrement: true, // 是否自增
    },
    name: {
      type: db.STRING,
      allowNull: false, // 是否允许为NULL
    },
    order: {
      type: db.INTEGER,
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
