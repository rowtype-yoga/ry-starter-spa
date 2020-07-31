module Components.Container.Stories where

import Prelude
import Components.Container as Container
import Effect (Effect)
import React.Basic (JSX, element)
import React.Basic.DOM as R
import React.Basic.Hooks (reactChildrenFromArray)

default ∷ { title ∷ String }
default = { title: "Pages/Container" }

container ∷ Effect JSX
container = pure (element Container.component { children: reactChildrenFromArray [ R.text "Content" ] })
