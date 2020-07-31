module Components.Container.Style where

import Prelude
import React.Basic.Emotion as E

global ∷ E.Style
global =
  E.css
    { "html, body":
      E.nested
        $ E.css
            { background: E.str "linear-gradient(to bottom right, #10354a, #002334)"
            , minHeight: E.vh 100.0
            , minWidth: E.vw 100.0
            }
    , "h1":
      E.nested
        $ E.css
            { fontSize: E.em 3.5
            , fontWeight: E.str "black"
            }
    , "*":
      E.nested
        $ E.css
            { fontFamily: E.str "system-ui, sans-serif"
            , color: E.str "#f7f7f0"
            }
    }
