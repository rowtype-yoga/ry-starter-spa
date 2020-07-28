module Components.Container.Style where

import Prelude
import React.Basic.Emotion as E

global ∷ E.Style
global =
  E.css
    { "html, body":
      E.nested
        $ E.css
            { background: E.str "#223"
            }
    , "h1":
      E.nested
        $ E.css
            { fontSize: E.em 3.5
            , fontWeight: E.str "normal"
            }
    , "*":
      E.nested
        $ E.css
            { fontFamily: E.str "'Victor Mono', sans-serif"
            , color: E.str "#f7f7f0"
            }
    }

center ∷ E.Style
center =
  E.css
    { display: E.str "grid"
    , justifyContent: E.str "center"
    , alignItems: E.str "center"
    , width: E.str "100vw"
    , height: E.str "100vh"
    }

content ∷ E.Style
content =
  E.css
    { display: E.str "flex"
    , flexDirection: E.str "column"
    , justifyContent: E.str "center"
    , alignItems: E.str "center"
    }
