const db = require('../db');

module.exports = () => {
  let now = Date.now();
  return db.sequelize.define('dict', {
    id: {
      type: db.INTEGER,
      allowNull: false, // 是否允许为NULL
      primaryKey: true, // 字段是主键
      autoIncrement: true, // 是否自增
    },
    dict_type: {
      type: db.STRING(50),
      allowNull: false
    },
    dict_name: {
      type: db.STRING(50),
      allowNull: false
    },
    dict_id: {
      type: db.INTEGER,
      allowNull: false
    },
    dict_content: {
      type: db.STRING(50),
      allowNull: false
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
  });
};
