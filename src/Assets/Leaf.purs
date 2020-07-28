module Assets.Leaf where

import Prim.Row (class Union)
import React.Basic (JSX)
import React.Basic.DOM as R
import React.Basic.DOM.Internal (SharedSVGProps)
import React.Basic.DOM.SVG (Props_svg)
import React.Basic.DOM.SVG as SVG
import Record as Record

leaf ∷
  ∀ missingProps givenProps intermediateProps.
  Union givenProps DefaultProps intermediateProps =>
  Union intermediateProps missingProps (SharedSVGProps Props_svg) =>
  { | givenProps } -> JSX
leaf props = SVG.svg (Record.union props defaultProps)

type DefaultProps
  = ( children ∷ Array JSX
    , viewBox ∷ String
    , xmlns ∷ String
    , x ∷ String
    , y ∷ String
    , xmlSpace ∷ String
    )

defaultProps ∷ { | DefaultProps }
defaultProps =
  { xmlns: "http://www.w3.org/2000/svg"
  , viewBox: "0 0 100 100"
  , x: "0px"
  , y: "0px"
  , xmlSpace: "preserve"
  , children:
    [ SVG.defs
        { children:
          [ SVG.linearGradient
              { id: "leaf-gradient-1"
              , x1: "38.97"
              , y1: "27.93"
              , x2: "59.37"
              , y2: "27.77"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#085500"
                    }
                , SVG.stop
                    { offset: "0.19"
                    , stopColor: "#075404"
                    }
                , SVG.stop
                    { offset: "0.32"
                    , stopColor: "#046818"
                    }
                , SVG.stop
                    { offset: "0.46"
                    , stopColor: "#008232"
                    }
                , SVG.stop
                    { offset: "0.51"
                    , stopColor: "#003c00"
                    }
                , SVG.stop
                    { offset: "0.58"
                    , stopColor: "#004704"
                    }
                , SVG.stop
                    { offset: "0.8"
                    , stopColor: "#026a11"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#085901"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "leaf-gradient-2"
              , x1: "50.8"
              , y1: "54.69"
              , x2: "50.16"
              , y2: "4.5"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0.47"
                    , stopColor: "#003c00"
                    }
                , SVG.stop
                    { offset: "0.68"
                    , stopColor: "#015007"
                    , stopOpacity: "0.58"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#026a11"
                    , stopOpacity: "0"
                    }
                ]
              }
          ]
        }
    , SVG.path
        { d: "M62.78,32.72C61.4,45.7,56.25,51.23,49.06,51S38.78,42.42,38,29.4A28.86,28.86,0,0,1,48.82,4.73S65,12,62.78,32.72Z"
        , style: R.css { fill: "url(#leaf-gradient-1)", opacity: 0.33 }
        }
    , SVG.path
        { d: "M62.78,32.72C61.4,45.7,56.25,51.23,49.06,51S38.78,42.42,38,29.4A28.86,28.86,0,0,1,48.82,4.73S65,12,62.78,32.72Z"
        , style: R.css { fill: "url(#leaf-gradient-2)" }
        }
    ]
  }
