module Page.Routes where

import Prelude hiding ((/))
import Data.Generic.Rep (class Generic)
import Routing.Duplex (RouteDuplex', root)
import Routing.Duplex.Generic (noArgs, sum)
import Routing.Duplex.Generic.Syntax ((/))

data Route
  = Home
  | Docs
  | NotFound

routeCodec ∷ RouteDuplex' Route
routeCodec =
  root
    $ sum
        { "Home": noArgs
        , "NotFound": "404" / noArgs
        , "Docs": "docs" / noArgs
        }

-- Instances so we can use route in this way
derive instance genericRoute ∷ Generic Route _
derive instance eqRoute ∷ Eq Route
derive instance ordRoute ∷ Ord Route
