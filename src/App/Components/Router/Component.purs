module App.Components.Router.Component where

import App.Prelude.View

import App.Components.Container as Container
import App.Components.Home as Home
import Data.Foldable (for_)
import Data.Nullable as Nullable
import Foreign (unsafeToForeign)
import Page.Routes (Route(..), routeCodec)
import React.Basic.DOM (css)
import React.Basic.DOM as R
import React.Basic.Hooks as React
import Routing.Duplex (parse, print)
import Routing.PushState (PushStateInterface, matchesWith)

routingTable ∷ Route -> JSX
routingTable route = case route of
  Home -> element Home.component {}
  Docs -> R.text "For now, please refer to the README"
  NotFound ->
      R.div { style: css { maxWidth: "60ch" }
      , children:
        [ R.h1_ [R.text "Not found"]
        , R.a { href: "/", children: [ R.text "Take me back" ] } 
        ]
      }

type Props
  = { nav ∷ PushStateInterface }

component ∷ ReactComponent Props
component =
  reactComponent "Router" \({ nav } ∷ Props) -> React.do
    route /\ setRoute <- useState' NotFound
    cancelListenerRef <- useRef mempty
    useEffectOnce do
      locationState <- nav.locationState
      for_ (parse routeCodec locationState.path) setRoute
      cancelOuterListener <-
        nav.listen \location -> do
          removeListener <-
            nav
              # matchesWith (parse routeCodec) \old new -> do
                  for_ old \o -> nav.pushState (unsafeToForeign Nullable.null) (print routeCodec o)
                  setRoute new
          writeRef cancelListenerRef removeListener
      cancelInnerListener <- readRef cancelListenerRef
      pure (cancelInnerListener *> cancelOuterListener)
    pure
      $ element Container.component
          { children: reactChildrenFromArray [ routingTable route ]
          }
