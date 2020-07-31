module Server.Emotion where

import Effect (Effect)
import React.Basic (JSX, ReactComponent)
import React.Basic.Hooks (ReactChildren)

foreign import data Server ∷ Type

foreign import data Cache ∷ Type

foreign import createEmotionServer ∷ Cache -> Effect Server

foreign import createCache ∷ Effect Cache

foreign import getExtractCritical ∷ Server -> ExtractCritical

foreign import cacheProvider ∷ ReactComponent { value ∷ Cache, children ∷ ReactChildren JSX }

type ExtractCritical
  = String -> Critical

type Critical
  = { html ∷ String, css ∷ String, ids ∷ Array String }
