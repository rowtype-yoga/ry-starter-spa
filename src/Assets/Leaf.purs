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
    , xmlnsXlink ∷ String
    )

leafOpacity ∷ String
leafOpacity = "1.0"

defaultProps ∷ { | DefaultProps }
defaultProps =
  { xmlns: "http://www.w3.org/2000/svg"
  , xmlnsXlink: "http://www.w3.org/1999/xlink"
  , viewBox: "0 0 100 100"
  , children:
    [ SVG.defs
        { children:
          [ SVG.style
              { children:
                [ R.text ".leaf-a{fill:url(#leaf-a);}.leaf-b{opacity:0.9;fill:url(#leaf-b);}"
                ]
              }
          , SVG.linearGradient
              { id: "leaf-a"
              , x1: "38.51"
              , y1: "74.73"
              , x2: "58.91"
              , y2: "74.89"
              , gradientTransform: "matrix(1, 0, 0, -1, 0, 102)"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#073728"
                    , stopOpacity: leafOpacity
                    }
                , SVG.stop
                    { offset: "0.23"
                    , stopColor: "#044033"
                    , stopOpacity: leafOpacity
                    }
                , SVG.stop
                    { offset: "0.32"
                    , stopColor: "#034415"
                    , stopOpacity: leafOpacity
                    }
                , SVG.stop
                    { offset: "0.46"
                    , stopColor: "#00411c"
                    , stopOpacity: leafOpacity
                    }
                , SVG.stop
                    { offset: "0.51"
                    , stopColor: "#003b07"
                    , stopOpacity: leafOpacity
                    }
                , SVG.stop
                    { offset: "0.58"
                    , stopColor: "#003d0a"
                    , stopOpacity: leafOpacity
                    }
                , SVG.stop
                    { offset: "0.8"
                    , stopColor: "#014412"
                    , stopOpacity: leafOpacity
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#014d03"
                    , stopOpacity: leafOpacity
                    }
                ]
              }
          , SVG.linearGradient
              { id: "leaf-b"
              , x1: "50.35"
              , y1: "47.93"
              , x2: "49.72"
              , y2: "98.11"
              , gradientTransform: "matrix(1, 0, 0, -1, 0, 102)"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0.0"
                    , stopColor: "#340023"
                    , stopOpacity: "1.0"
                    }
                , SVG.stop
                    { offset: "0.4"
                    , stopColor: "#340023"
                    , stopOpacity: "0.7"
                    }
                , SVG.stop
                    { offset: "0.6"
                    , stopColor: "#400030"
                    , stopOpacity: "0.4"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#800060"
                    , stopOpacity: "0.0"
                    }
                ]
              }
          ]
        }
    , SVG.path
        { className: "leaf-a"
        , d: "M62.34,32.08c-1.4,13-6.5,18.5-13.7,18.2s-10.3-8.5-11.1-21.5a28.93,28.93,0,0,1,10.8-24.7S64.54,11.38,62.34,32.08Z"
        }
    , SVG.path
        { className: "leaf-b"
        , d: "M62.34,32.08c-1.4,13-6.5,18.5-13.7,18.2s-10.3-8.5-11.1-21.5a28.93,28.93,0,0,1,10.8-24.7S64.54,11.38,62.34,32.08Z"
        }
    ]
  }
