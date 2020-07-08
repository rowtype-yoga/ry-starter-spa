"use strict";

const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin");

module.exports = {
  mode: "development",

  // The JavaScript file to be injected into the HTML file
  entry: path.resolve(__dirname, "index.js"),

  plugins: [
    // This plugin allows us to use a HTML file template.
    // In the settings we specify its title and 'entry'
    // specifies a script to be injected into the template
    new HtmlWebpackPlugin({
      title: "Purescript Fan Page",
      template: path.resolve(__dirname, "src", "index.html"),
    }),
  ],

  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "bundle.js",
  },

};
