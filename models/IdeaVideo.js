const db = require('../db');

module.exports = () => {
  let now = Date.now();
  return db.sequelize.define('idea_video', {
    id: {
      type: db.INTEGER,
      allowNull: false, // 是否允许为NULL
      primaryKey: true, // 字段是主键
      autoIncrement: true, // 是否自增
    },
    title: {
      type: db.STRING(500),
      allowNull: false
    },
    video_url: {
      type: db.STRING(500),
      allowNull: false
    },
    video_cover: {
      type: db.STRING(500),
      allowNull: false
    },
    promotion_industry: {
      type: db.INTEGER,
      allowNull: false
    },
    video_type: {
      type: db.INTEGER,
      allowNull: false
    },
    video_position: {
      type: db.INTEGER,
      allowNull: false
    },
    advert_type: {
      type: db.INTEGER,
      allowNull: false
    },
    video_promotion_product: {
      type: db.INTEGER,
      allowNull: false
    },
    video_putin_type: {
      type: db.INTEGER,
      allowNull: false
    },
    click_rate: {
      type: db.DOUBLE,
      allowNull: false
    },
    conversion_cost: {
      type: db.DOUBLE,
      allowNull: false
    },
    authors: {
      type: db.STRING(500),
      allowNull: false
    },
    tags: {
      type: db.STRING(500),
      allowNull: false
    },
    status: {
      type: db.INTEGER,
      allowNull: false
    },
    pv: {
      type: db.INTEGER,
      allowNull: true
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
