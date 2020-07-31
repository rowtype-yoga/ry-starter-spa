module Main where

import App.Prelude.Default

import App.Components.Router.Component as Router
import Effect.Exception (throw)
import React.Basic (JSX, element)
import React.Basic.DOM (render)
import Routing.PushState as PushState
import Web.DOM (Element)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

-- | Constructs the main React Component for this single-page-application.
mkApp :: Effect JSX
mkApp = do
  nav <- PushState.makeInterface
  pure $ element Router.component { nav }

-- | The id of the HTML element which will wrap the React App.
-- | It needs to match your `index.html` file, for example:
-- |```html
-- |<body>
-- |  <div id="container"></div>
-- |</body>
-- |```
containerId :: String
containerId = "container"

main :: Effect Unit
main = do
  container <- getContainerById containerId
  app <- mkApp
  render app container

-- | Finds an Element based on its ID in
-- | the entire document and throws if it
-- | can't be found
getContainerById :: String -> Effect Element
getContainerById id = do
  documentNode <- window >>= document <#> toNonElementParentNode
  maybeContainerElement <- getElementById id documentNode
  case maybeContainerElement of
    Just containerElement -> pure containerElement
    Nothing -> throw "Container element not found."
