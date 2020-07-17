module Components.Example.View where

import Prelude.View
import React.Basic.DOM as R
import React.Basic.Hooks as React

-- | A component that is a button which displays a
-- | count and a button to increase this count
component :: Component Int
component =
  React.component "Counter" \initialValue -> React.do
    counter /\ updateCounter <- useState initialValue
    pure
      $ R.button
          { onClick: handler_ $ updateCounter (_ + 1)
          , children:
            [ R.text $ "Increment: " <> show counter ]
          }
