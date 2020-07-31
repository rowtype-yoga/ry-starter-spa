module App.Components.LoadingAnimation.Stories where

import Prelude
import App.Components.LoadingAnimation as LoadingAnimation
import Effect (Effect)
import React.Basic (JSX, element)

default ∷ { title ∷ String }
default = { title: "Assets/Loading Animation" }

fullScreen ∷ Effect JSX
fullScreen = pure (element LoadingAnimation.component { size: "min(100vh,100vw)" })

fixedSize :: Effect JSX
fixedSize = pure (element LoadingAnimation.component { size: "100px" })
