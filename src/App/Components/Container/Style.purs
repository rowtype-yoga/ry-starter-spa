module App.Components.Container.Style where

import Prelude
import React.Basic.Emotion as E

global ∷ E.Style
global =
  E.css
    { html:
      E.nested
        $ E.css
            { boxSizing: E.str "border-box"
            }
    , body:
      E.nested
        $ E.css
            { minHeight: E.vh 100.0
            , minWidth: E.vw 100.0
            , fontFamily: E.str "system-ui, sans-serif"
            , color: E.str "#f7f7f0"
            , background: E.str "linear-gradient(to bottom right, #10354a, #002334)"
            , margin: E.str "0"
            }
    , h1:
      E.nested
        $ E.css
            { fontSize: E.em 3.5
            , fontWeight: E.str "black"
            }
    , "*, *:before, *:after":
      E.nested
        $ E.css
            { boxSizing: E.str "inherit"
            }
    }
