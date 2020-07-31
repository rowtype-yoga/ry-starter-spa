module App.Components.Home.View (component) where

import App.Prelude.View

import App.Components.Home.Style as Styles
import App.Components.LoadingAnimation as LoadingAnimation
import Effect.Class.Console (log)
import React.Basic.DOM as R
import React.Basic.Emotion as E

component ∷ ReactComponent {}
component =
  reactComponent "Home" \_ -> React.do
    pure
      $ E.element R.div'
          { className: "main-Home"
          , css: Styles.center
          , children:
            [ E.element R.div'
                { className: "main-content"
                , css: Styles.content
                , children:
                  [ element LoadingAnimation.component { size: "14rem" }
                  , R.h1
                          { onClick: handler_ (log "Clicked")
                          , children: [ R.text "Welcome" ]
                          }
                  , R.a { href: "/docs", children: [ R.text "What's next?" ] }
                  ]
                }
            ]
          }
