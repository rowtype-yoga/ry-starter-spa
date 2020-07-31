"use strict";

const { CleanWebpackPlugin } = require("clean-webpack-plugin");

module.exports = {
  plugins: [
    // This plugin deletes (cleans) the output folder
    // `./dist` in our case
    new CleanWebpackPlugin(),
  ],
};
