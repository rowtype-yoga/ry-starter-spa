module App.Components.Home.Style where

import React.Basic.Emotion as E

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
