module Main where

import Prelude

import App.Components.Router.Component as Router
import Data.Foldable (intercalate)
import Data.Interpolate (i)
import Effect (Effect)
import Effect.Console (log)
import Node.Express.App (App, get, listenHttp)
import Node.Express.Request (getPath)
import Node.Express.Response (send, sendFile)
import Node.HTTP (Server)
import Page.Routes (parseOrNotFound)
import React.Basic (JSX, element)
import React.Basic.Hooks (reactChildrenFromArray)
import Server.Emotion (getExtractCritical)
import Server.Emotion as Emotion

main ∷ Effect Server
main = do
  app <- mkApp
  listenHttp app 55555 \_ ->
    log $ "Listening on " <> show 55555

foreign import renderToString ∷ JSX -> String

mkApp ∷ Effect App
mkApp = do
  emotionCache <- Emotion.createCache
  emotionServer <- Emotion.createEmotionServer emotionCache
  pure $ handlers emotionCache emotionServer

handlers :: Emotion.Cache -> Emotion.Server -> App
handlers emotionCache emotionServer = do
    -- | Handler for loading our bundled JavaScript React App
    get "/bundle.js" do
      sendFile "bundle.js"
    -- | We always send a response
    get "*" do
      p <- getPath
      let
        route = parseOrNotFound p
        container = [ element Router.static { route } ] # reactChildrenFromArray
        jsx = element Emotion.cacheProvider { value: emotionCache, children: container }
        componentString = renderToString jsx
        critical = (emotionServer # getExtractCritical) componentString
      send $ indexHTML critical

indexHTML ∷ Emotion.Critical -> String
indexHTML { html, css, ids } =
  i
    """
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/victormono@latest/dist/index.min.css" rel="stylesheet">
  <style data-emotion-css=""""
    (ids # intercalate " ")
    "\">"
    css
    """</style>
  <script src="/bundle.js"></script>
</head>

<body>
  <div id="container">"""
    html
    """</div>
</body>

</html>
"""
