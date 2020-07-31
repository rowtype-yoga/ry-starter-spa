module App.Components.Home.Stories where

import Prelude

import App.Components.Home as Home
import Effect (Effect)
import React.Basic (JSX, element)

default ∷ { title ∷ String }
default = { title: "Pages/Home" }

home ∷ Effect JSX
home = pure (element Home.component {})
