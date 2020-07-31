module Page.Routes where

import Prelude hiding ((/))

import Data.Either (hush)
import Data.Generic.Rep (class Generic)
import Data.Maybe (fromMaybe)
import Routing.Duplex (RouteDuplex', parse, root)
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

parseOrNotFound :: String -> Route
parseOrNotFound str = parse routeCodec str # hush # fromMaybe NotFound

-- Instances so we can use route in this way
derive instance genericRoute ∷ Generic Route _
derive instance eqRoute ∷ Eq Route
derive instance ordRoute ∷ Ord Route
