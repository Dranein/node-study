const db = require('../db');

module.exports = () => {
    let now = Date.now();
    return db.sequelize.define('idea_openscreen', {
        id: {
            type: db.INTEGER,
            allowNull: false, // 是否允许为NULL
            primaryKey: true, // 字段是主键
            autoIncrement: true, // 是否自增
        },
        title: {
            type: db.STRING(50),
            allowNull: false
        },
        type: {
            type: db.INTEGER,
            allowNull: false
        },
        image_url: {
            type: db.STRING(50),
            allowNull: false
        },
        video_url: {
            type: db.STRING(50),
            allowNull: false
        },
        video_cover: {
            type: db.STRING(50),
            allowNull: false
        },
        promotion_industry: {
            type: db.INTEGER,
            allowNull: false
        },
        promotion_content: {
            type: db.STRING(50),
            allowNull: false
        },
        promotion_cycle: {
            type: db.STRING(50),
            allowNull: false
        },
        openscreen_putin_type: {
            type: db.INTEGER,
            allowNull: false
        },
        openscreen_show_type: {
            type: db.INTEGER,
            allowNull: false
        },
        openscreen_promotion_product: {
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
            type: db.STRING(50),
            allowNull: false
        },
        tags: {
            type: db.STRING(50),
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
