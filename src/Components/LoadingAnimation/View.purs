module Components.LoadingAnimation.View where

import Prelude.View

import Assets.Leaf as Leaf
import Assets.Petal as Petal
import Components.LoadingAnimation.Style as Style
import Data.Array ((..))
import Data.Int as Int
import React.Basic.DOM (css)
import React.Basic.DOM as R
import React.Basic.Emotion as E

component ∷ ReactComponent { size :: String }
component =
  reactComponent "LoadingAnimation" \{ size } -> React.do
    pure
      $ R.div
          { style: css { width: size, height: size, position: "relative", boxSizing: "border-box" }
          , children:
            [ E.element R.div'
                { className: "lilypad-viewbox"
                , css: Style.viewbox
                , children:
                  [ E.element R.div'
                      { className: "lilypad-container"
                      , css: Style.container
                      , children: [ leafCircle ]
                      }
                  ]
                }
            , E.element R.div'
                { className: "petals-container"
                , css: Style.petalsContainer
                , children:
                  [ Petal.petal { style: css {} }
                  ]
                }
            ]
          }

leafCircle ∷ JSX
leafCircle = fragment $ ((0 .. 3) # map (rotatedLeaf 0)) <> ((0 .. 3) # map (rotatedLeaf 45))
  where
  rotatedLeaf offset i =
    leaf
      { style:
        css
          { transform: "scale("<> show scale <>", 1.0) rotate(" <> show (i * 87 + offset) <> "deg)"
          , position: "absolute"
          }
      , width: "100%"
      , height: "100%"
      }
    where
    leaf = Leaf.leaf
    scale = 1.0 - (((Int.toNumber offset) - 45.0)/450.0 * 0.3)
    
