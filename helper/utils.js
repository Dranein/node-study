const path = require('path');
const fs = require('fs');

/**
 * @description 判断文件夹是否存在 如果不存在则创建文件夹
 */
function checkDirExist(p) {
  if (!fs.existsSync(p)) {
    fs.mkdirSync(p);
  }
}

function getUploadDirName() {
  const date = new Date();
  let month = Number.parseInt(date.getMonth()) + 1;
  month = month.toString().length > 1 ? month : `0${month}`;
  const dir = `${date.getFullYear()}${month}${date.getDate()}`;
  return dir;
}

/**
 * @description 获取文件后缀
 */
function getUploadFileExt(name) {
  let ext = name.split('.');
  return ext[ext.length - 1];
}

/**
 * @description 新建并获取文件名
 */
function getUploadFileName(ext){
  return `${Date.now()}${Number.parseInt(Math.random() * 10000)}.${ext}`;
}

const Utils = {
  getUploadDirName,
  checkDirExist,
  getUploadFileExt,
  getUploadFileName
}

module.exports = Utils;