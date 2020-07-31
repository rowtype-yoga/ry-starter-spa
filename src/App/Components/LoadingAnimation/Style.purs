module App.Components.LoadingAnimation.Style (viewbox, petalsContainer, container) where

import Prelude
import React.Basic.Emotion as E

rotatingKeyframes ∷ E.StyleProperty
rotatingKeyframes =
  E.keyframes
    { from: E.nested $ E.css { transform: E.str "rotate(0deg)" }
    , to: E.nested $ E.css { transform: E.str "rotate(360deg)" }
    }

bouncingKeyframes ∷ E.StyleProperty
bouncingKeyframes =
  E.keyframes
    { from: E.nested $ E.css { transform: E.str "translate(0, 5%)" }
    , "25%": E.nested $ E.css { transform: E.str "translate(0, 10%)" }
    , "50%": E.nested $ E.css { transform: E.str "translate(0, 7%)" }
    , "75%": E.nested $ E.css { transform: E.str "translate(0, 11%)" }
    , to: E.nested $ E.css { transform: E.str "translate(0, 5%)" }
    }

viewbox ∷ E.Style
viewbox =
  E.css
    { transform: E.str "rotateX(62deg)"
    , width: E.percent 100.0
    , height: E.percent 100.0
    , paddingTop: E.percent 20.0
    }

petalsContainer ∷ E.Style
petalsContainer =
  E.css
    { position: E.str "absolute"
    , width: E.percent 75.0
    , height: E.percent 75.0
    , top: E.percent 0.0
    , left: E.percent 12.7
    , animationName: bouncingKeyframes
    , animationDuration: E.str "8s"
    , animationIterationCount: E.str "infinite"
    , animationTimingFunction: E.str "ease-in-out"
    }

container ∷ E.Style
container =
  E.css
    { width: E.percent 100.0
    , height: E.percent 100.0
    , animationName: rotatingKeyframes
    , animationDuration: E.str "60s"
    , animationIterationCount: E.str "infinite"
    , animationTimingFunction: E.str "linear"
    }
