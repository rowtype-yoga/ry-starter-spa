"use strict";

const path = require("path");
const { merge } = require('webpack-merge');
const common = require('./webpack.common.js');
const CompressionPlugin = require('compression-webpack-plugin');

module.exports = merge(common, {
  mode: 'production',

  plugins: [new CompressionPlugin()],


  // The JavaScript file to be injected into the HTML file
  entry: path.resolve(__dirname, "index.prod.js"),

  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "bundle.js",
  },
});
