const JsonResult = require('../helper/JsonResult');
const IdeaOpenscreenModel = require('../models/IdeaOpenscreen');
let ideaOpenscreenModel = IdeaOpenscreenModel();
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

class IdeaOpenscreenServices {
    add () {
        return async (ctx, next) => {
            let jsonResult = new JsonResult(ctx);
            let {
                title = '',
                type = '',
                image_url = '',
                video_url = '',
                video_cover = '',
                promotion_industry = '',
                promotion_content = '',
                promotion_cycle = '',
                openscreen_putin_type = '',
                openscreen_show_type = '',
                openscreen_promotion_product = '',
                click_rate = '',
                conversion_cost = '',
                authors = '',
                tags = '',
                status= ''
            } = ctx.request.body;
            if (promotion_industry === ''
                || openscreen_putin_type === ''
                || openscreen_show_type === ''
                || openscreen_promotion_product === ''
                || click_rate === ''
                || conversion_cost === '') {
                jsonResult.fail({status: 301});
                return false;
            }
            let now = Date.now();
            await ideaOpenscreenModel.create({
                title,
                type,
                image_url,
                video_url,
                video_cover,
                promotion_industry,
                promotion_content,
                promotion_cycle,
                openscreen_putin_type,
                openscreen_show_type,
                openscreen_promotion_product,
                click_rate,
                conversion_cost,
                authors: JSON.stringify(authors),
                tags: JSON.stringify(tags),
                status,
                updateAt: now,
                createAt: now
            });
            jsonResult.ok();
        }
    }

    getList() {
        return async (ctx, next) => {
            let jsonResult = new JsonResult(ctx);
            let {
                current,
                pageSize,
                status = '',
                promotion_industry = '',
                openscreen_putin_type = '',
                openscreen_show_type = '',
                openscreen_promotion_product = '',
                title = '' } = ctx.request.query;
            let parms = {};
            if (status !== '') parms['status'] = status;
            if (promotion_industry !== '') parms['promotion_industry'] = promotion_industry;
            if (openscreen_putin_type !== '') parms['openscreen_putin_type'] = openscreen_putin_type;
            if (openscreen_show_type !== '') parms['openscreen_show_type'] = openscreen_show_type;
            if (openscreen_promotion_product !== '') parms['openscreen_promotion_product'] = openscreen_promotion_product;
            if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%'};
            let ideaOpenscreenList = await ideaOpenscreenModel.findAndCountAll({
                where: parms,
                limit: Number(pageSize),
                offset: (Number(current) - 1) * Number(pageSize),
                order: [
                    ['updateAt', 'DESC'],
                ]
            });
            jsonResult.ok({
                data: ideaOpenscreenList
            });
        }
    }

    delete() {
        return async (ctx, next) => {
            let jsonResult = new JsonResult(ctx);
            let {id} = ctx.request.query;
            if (!id || id === '') {
                jsonResult.fail({ctx, status: 403})
            } else {
                let ideaOpenscreen = await this.findOneUserById(id);
                if (ideaOpenscreen) {
                    await ideaOpenscreenModel.destroy({where: {id}})
                    jsonResult.ok();
                } else {
                    jsonResult.fail({status: 101})
                }
            }
        }
    }

    update() {
        return async (ctx, next) => {
            let jsonResult = new JsonResult(ctx);
            let {id = ''} = ctx.request.query;
            let {
                title = '',
                type = '',
                image_url = '',
                video_url = '',
                video_cover = '',
                promotion_industry = '',
                promotion_content = '',
                promotion_cycle = '',
                openscreen_putin_type = '',
                openscreen_show_type = '',
                openscreen_promotion_product = '',
                click_rate = '',
                conversion_cost = '',
                authors = '',
                tags = '',
                status= ''
            } = ctx.request.body;
            if (id === '') {
                jsonResult.fail({ctx, status: 302})
            } else {
                let ideaOpenscreen = await this.findOneUserById(id);
                if (ideaOpenscreen) {
                    let now = Date.now();
                    await ideaOpenscreen.update({
                        title,
                        type,
                        image_url,
                        video_url,
                        video_cover,
                        promotion_industry,
                        promotion_content,
                        promotion_cycle,
                        openscreen_putin_type,
                        openscreen_show_type,
                        openscreen_promotion_product,
                        click_rate,
                        conversion_cost,
                        authors: JSON.stringify(authors),
                        tags: JSON.stringify(tags),
                        status,
                        updateAt: now,
                    });
                    jsonResult.ok();
                } else {
                    jsonResult.fail({status: 101})
                }
            }
        }
    };

    findOneUserById(id) {
        return ideaOpenscreenModel.findOne({where: {id: id}});
    };

    // C端
    getListToC() {
        return async (ctx, next) => {
            let jsonResult = new JsonResult(ctx);
            let {
                current,
                pageSize,
                status = '',
                promotion_industry = '',
                openscreen_putin_type = '',
                openscreen_show_type = '',
                openscreen_promotion_product = '',
                title = '' } = ctx.request.query;
            let parms = {
                status: 0
            };
            if (promotion_industry !== '') parms['promotion_industry'] = promotion_industry;
            if (openscreen_putin_type !== '') parms['openscreen_putin_type'] = openscreen_putin_type;
            if (openscreen_show_type !== '') parms['openscreen_show_type'] = openscreen_show_type;
            if (openscreen_promotion_product !== '') parms['openscreen_promotion_product'] = openscreen_promotion_product;
            if (title !== '') parms['title'] = { [Op.like]: '%' + title + '%'};
            let ideaOpenscreenList = await ideaOpenscreenModel.findAndCountAll({
                where: parms,
                limit: Number(pageSize),
                offset: (Number(current) - 1) * Number(pageSize),
                order: [
                    ['updateAt', 'DESC'],
                ]
            });
            jsonResult.ok({
                data: ideaOpenscreenList
            });
        }
    };

    getDetailToC () {
        return async (ctx, next) => {
            let jsonResult = new JsonResult(ctx);
            let {id} = ctx.request.query;
            if (!id || id === '') {
                jsonResult.fail({ctx, status: 403})
            } else {
                let detail = await this.findOneUserById(id);
                if (detail && detail.status === 0) {
                    let List = await ideaOpenscreenModel.findAndCountAll({
                        where: {
                            promotion_industry: detail.promotion_industry,
                            status: 0
                        },
                        limit: Number(12),
                        offset: 0,
                        order: [['pv', 'DESC']]
                    });
                    let hotList = List.rows.filter(item => item.id !== detail.id) || [];
                    this.addPv(detail);
                    jsonResult.ok({data: {
                        detail,
                        hotList
                    }});
                } else {
                    jsonResult.fail({status: 101});
                }
            }
        }
    };

    addPv (obj) {
        obj.update({
            ...obj,
            pv: obj.pv + 1
        });
    };
}

module.exports = IdeaOpenscreenServices;
