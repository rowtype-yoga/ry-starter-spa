module Components.Example.View (component) where

import Prelude.View
import Color as Colour
import React.Basic.DOM as R
import React.Basic.Emotion as E
import React.Basic.Hooks as React

-- | A component that is a button which displays a
-- | count and a button to increase this count
component :: ReactComponent { initialValue :: Int }
component =
  reactComponent "Counter" \{ initialValue } -> React.do
    counter /\ updateCounter <- useState initialValue
    pure
      $ E.element R.button'
          { onClick: handler_ $ updateCounter (_ + 1)
          , className: "example-counter"
          , children:
            [ R.text $ "Increment: " <> show counter ]
          , css: buttonStyle
          }

buttonStyle :: E.Style
buttonStyle =
  E.css
    { display: E.str "inline-block"
    , border: E.str "none"
    , padding: E.str "1rem 2rem"
    , borderRadius: E.rem 1.2
    , margin: E.px 0
    , "text-decoration": E.str "none"
    , background: E.color (Colour.rgb 0 105 189)
    , color: E.color Colour.white
    , "font-family": E.str "sans-serif"
    , "font-size": E.rem 1.0
    , cursor: E.str "pointer"
    , "text-align": E.str "center"
    , transition: E.str "background 550ms ease-in-out"
    , "-webkit-appearance": E.str "none"
    , "-moz-appearance": E.str "none"
    , "box-shadow": E.str "0px 2px 8px #333333"
    , "&:hover":
      E.nested
        $ E.css
            { background: E.color (Colour.rgb 30 135 219)
            , transition: E.str "background 550ms ease-in-out"
            }
    , "&:active":
      E.nested
        $ E.css
            { background: E.color (Colour.rgb 0 105 189)
            , transition: E.str "background 550ms ease-in-out"
            , "box-shadow": E.str "inset 0px 2px 3px #001243"
            }
    }
