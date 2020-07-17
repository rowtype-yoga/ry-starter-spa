"use strict";

const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin");
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

module.exports = {
  mode: "development",

  // The JavaScript file to be injected into the HTML file
  entry: path.resolve(__dirname, "index.js"),

  plugins: [
    // This plugin deletes (cleans) the output folder
    // `./dist` in our case
    new CleanWebpackPlugin(),
    // This plugin allows us to use a HTML file template.
    // In the settings we specify its title and 'entry'
    // specifies a script to be injected into the template
    new HtmlWebpackPlugin({
      title: "PureScript Starter",
      template: path.resolve(__dirname, "src", "index.html"),
    }),
  ],

  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "bundle.js",
  },
};
