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

// C端
let getListToC = {
    method: 'GET',
    path: 'idea/openscreen/list',
    fn: ideaOpenscreenServices.getListToC()
};


// C端
let getDetailToC = {
    method: 'GET',
    path: 'idea/openscreen/detail',
    fn: ideaOpenscreenServices.getDetailToC()
};

module.exports = {
    add,
    getList,
    deleteById,
    update,
    getListToC,
    getDetailToC
};