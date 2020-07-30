module.exports = {
  stories: ['../output/**/*.Stories/index.js'],
  addons: [],
  webpackFinal: async config => {
    // do mutation to the config
    return config;
  },
};
