const path = require('path');
const svg2psreact = require("svg2psreact");

const assetsDir = path.join(__dirname, 'src', 'Assets');

svg2psreact.convertAllSVGsInDirectory("Assets", assetsDir)
