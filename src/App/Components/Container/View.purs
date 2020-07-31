module App.Components.Container.View (component) where

import App.Prelude.View
import App.Components.Container.Style as Styles
import Data.Array as Array
import React.Basic.Emotion as E

type Props
  = { children ∷ ReactChildren JSX }

component ∷ ReactComponent Props
component =
  reactComponentWithChildren "Container" \({ children } ∷ Props) -> React.do
    pure
      $ fragment
      $ Array.cons
          (element E.global { styles: Styles.global })
          (reactChildrenToArray children)
