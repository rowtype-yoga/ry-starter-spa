module Yoga where

import Prelude

import Effect.Unsafe (unsafePerformEffect)
import Prim.Row (class Lacks)
import React.Basic.Hooks (JSX, ReactComponent, Render)
import React.Basic.Hooks as Hooks

reactComponent ::
  forall hooks props.
  Lacks "children" props =>
  Lacks "key" props =>
  Lacks "ref" props =>
  String ->
  ({ | props } -> Render Unit hooks JSX) ->
  ReactComponent { | props }
reactComponent = (map map map) unsafePerformEffect Hooks.reactComponent
