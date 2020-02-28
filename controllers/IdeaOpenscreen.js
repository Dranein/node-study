const IdeaOpenscreenServices = require('../services/IdeaOpenscreen');
let ideaOpenscreenServices = new IdeaOpenscreenServices();

let add = {
    method: 'POST',
    path: 'ideaOpenscreen/add',
    fn: ideaOpenscreenServices.add()
};

let getList = {
    method: 'GET',
    path: 'ideaOpenscreen/list',
    fn: ideaOpenscreenServices.getList()
};

let deleteById = {
    method: 'GET',
    path: 'ideaOpenscreen/delete',
    fn: ideaOpenscreenServices.delete()
};

let update = {
    method: 'POST',
    path: 'ideaOpenscreen/update',
    fn: ideaOpenscreenServices.update()
};

module.exports = {
    add,
    getList,
    deleteById,
    update
};