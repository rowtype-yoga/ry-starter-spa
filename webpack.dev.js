"use strict";

const path = require("path");
const { merge } = require('webpack-merge');
const common = require('./webpack.common.js');
const ReactRefreshWebpackPlugin = require("@pmmmwh/react-refresh-webpack-plugin");

module.exports = merge(common, {
  mode: 'development',

  // The JavaScript file to be injected into the HTML file
  entry: path.resolve(__dirname, "index.dev.js"),

  devtool: 'inline-source-map',

  // This plugin updates React components without losing their state
  plugins: [
    new ReactRefreshWebpackPlugin(),
  ],

  devServer: {
    contentBase: path.join(__dirname, 'dist'),
    compress: true,
    port: 9000,
    hotOnly: true,
    hot: true,
  },
});
