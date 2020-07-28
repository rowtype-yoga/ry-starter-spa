module Components.LoadingAnimation.View where

import Prelude.View
import Assets.Leaf as Leaf
import Assets.Petal as Petal
import Components.LoadingAnimation.Style as Style
import Data.Array ((..))
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
leafCircle = fragment $ (0 .. 7) # map rotatedLeaf
  where
  rotatedLeaf i =
    leaf
      { style:
        css
          { transform: "rotate(" <> show (i * 45) <> "deg)"
          , position: "absolute"
          }
      , width: "100%"
      , height: "100%"
      }
    where
    leaf = Leaf.leaf
