{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "ui-server"
, dependencies =
  [ "console"
  , "effect"
  , "express"
  , "interpolate"
  , "psci-support"
  , "react-basic"
  , "react-basic-dom"
  , "react-basic-emotion"
  , "react-basic-hooks"
  , "react-testing-library"
  , "routing"
  , "routing-duplex"
  , "spec"
  ]
, packages = ../packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
