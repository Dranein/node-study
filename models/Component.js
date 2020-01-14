const db = require('../db');

module.exports = () => {
  let now = Date.now();
  return db.sequelize.define('component' , {
    id: {
      type: db.INTEGER,
      allowNull: false, // 是否允许为NULL
      primaryKey: true, // 字段是主键
      autoIncrement: true, // 是否自增
    },
    classify_id: {
      type: db.STRING,
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
    imgUrl: {
      type: db.STRING,
      allowNull: false, // 是否允许为NULL
    },
    createAt: {
      type: db.BIGINT,
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
};
