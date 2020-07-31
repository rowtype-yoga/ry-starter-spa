const core = require('@emotion/core')
const createEmotionServer = require('create-emotion-server').default
const createCache = require('@emotion/cache').default

exports.cacheProvider = core.CacheProvider
exports.createEmotionServer = (cache) => () => createEmotionServer(cache)
exports.createCache = createCache
exports.getExtractCritical = (server) => server.extractCritical
