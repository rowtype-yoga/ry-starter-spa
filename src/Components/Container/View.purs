module Components.Container.View (component) where

import Prelude.View

import Components.Container.Style as Styles
import Components.LoadingAnimation as LoadingAnimation
import React.Basic.DOM as R
import React.Basic.Emotion as E

component ∷ ReactComponent {}
component =
  reactComponent "Container" \_ -> React.do
    pure
      $ fragment
          [ element E.global { styles: Styles.global }
          , E.element R.div'
              { className: "main-container"
              , css: Styles.center
              , children:
                [ E.element R.div'
                    { className: "main-content" 
                    , css: Styles.content
                    , children:
                      [ element LoadingAnimation.component { size: "14rem" }
                      , R.h1_ [ R.text "Rowtype", R.i_ [ R.text "Yoga" ] ]
                      ]
                    }
                ]
              }
          ]
