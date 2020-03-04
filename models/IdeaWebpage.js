const db = require('../db');

module.exports = () => {
  let now = Date.now();
  return db.sequelize.define('idea_webpage', {
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
    url: {
      type: db.STRING(500),
      allowNull: false
    },
    image_cover: {
      type: db.STRING(500),
      allowNull: false
    },
    promotion_industry: {
      type: db.INTEGER,
      allowNull: false
    },
    advert_type: {
      type: db.INTEGER,
      allowNull: false
    },
    webpage_type: {
      type: db.INTEGER,
      allowNull: false
    },
    conversion_type: {
      type: db.INTEGER,
      allowNull: false
    },
    promotion_cycle: {
      type: db.STRING(500),
      allowNull: false
    },
    page_num: {
      type: db.DOUBLE,
      allowNull: false
    },
    conversion_cost: {
      type: db.DOUBLE,
      allowNull: false
    },
    uv: {
      type: db.INTEGER,
      allowNull: false
    },
    average_time: {
      type: db.DOUBLE,
      allowNull: false
    },
    click_rate: {
      type: db.DOUBLE,
      allowNull: false
    },
    conversion_rate: {
      type: db.DOUBLE,
      allowNull: false
    },
    nice_reason: {
      type: db.STRING,
      allowNull: false
    },
    bright_analysis: {
      type: db.STRING(1200),
      allowNull: false
    },
    top_copywritings: {
      type: db.STRING(500),
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
