"use strict";

const path = require("path");
const { merge } = require('webpack-merge');
const common = require('./webpack.common.js');

module.exports = merge(common, {
  mode: 'production',

  // The JavaScript file to be injected into the HTML file
  entry: path.resolve(__dirname, "index.prod.js"),

  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "bundle.js",
  },
});
