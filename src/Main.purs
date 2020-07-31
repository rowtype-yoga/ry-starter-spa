module Main where

import App.Prelude.Default

import App.Components.Router.Component as Router
import Effect.Exception (throw)
import Page.Routes (parseOrNotFound)
import React.Basic (JSX, element)
import React.Basic.DOM (render, hydrate)
import Routing.PushState as PushState
import Web.DOM (Element)
import Web.DOM.NonElementParentNode (getElementById)
import Web.Event.EventTarget (addEventListener, eventListener)
import Web.HTML (window)
import Web.HTML.Event.EventTypes (load)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)
import Web.HTML.Window as Window

main ∷ { serverSideRendering ∷ Boolean } -> Effect Unit
main { serverSideRendering } = do
  app <- mkApp
  runOnLoad do 
    container <- getContainerById containerId
    create app container
  where
  create = 
    if serverSideRendering 
    then hydrate 
    else render

-- | Constructs the main React Component for this single-page-application.
mkApp ∷ Effect JSX
mkApp = do
  nav <- PushState.makeInterface
  locationState <- nav.locationState
  let initialRoute = parseOrNotFound locationState.path
  pure $ element Router.component { nav, initialRoute }

-- | The id of the HTML element which will wrap the React App.
-- | It needs to match your `index.html` file, for example:
-- |```html
-- |<body>
-- |  <div id="container"></div>
-- |</body>
-- |```
containerId ∷ String
containerId = "container"

-- | Finds an Element based on its ID in
-- | the entire document and throws if it
-- | can't be found
getContainerById ∷ String -> Effect Element
getContainerById id = do
  documentNode <- window >>= document <#> toNonElementParentNode
  maybeContainerElement <- getElementById id documentNode
  case maybeContainerElement of
    Just containerElement -> pure containerElement
    Nothing -> throw "Container element not found."

-- | Runs an effect when the "onload" event on window fires
runOnLoad :: Effect Unit -> Effect Unit
runOnLoad doOnLoad = do
  win <- window
  listener <- eventListener onLoad 
  addEventListener load listener false (Window.toEventTarget win)
  where
    onLoad _ = doOnLoad
