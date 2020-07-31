module App.Assets.Petal where

import Prim.Row (class Union)
import React.Basic (JSX)
import React.Basic.DOM as R
import React.Basic.DOM.Internal (SharedSVGProps)
import React.Basic.DOM.SVG (Props_svg)
import React.Basic.DOM.SVG as SVG
import Record as Record

petal ∷
  ∀ missingProps givenProps intermediateProps.
  Union givenProps DefaultProps intermediateProps =>
  Union intermediateProps missingProps (SharedSVGProps Props_svg) =>
  { | givenProps } -> JSX
petal props = SVG.svg (Record.union props defaultProps)

type DefaultProps
  = ( children ∷ Array JSX
    , viewBox ∷ String
    , xmlns ∷ String
    , xmlnsXlink ∷ String
    )

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
                [ R.text ".petal-a{isolation:isolate;}.petal-b,.petal-c,.petal-d,.petal-e,.petal-f,.petal-g,.petal-h,.petal-i,.petal-k{fill-rule:evenodd;}.petal-b{fill:url(#petal-a);}.petal-c{fill:url(#petal-b);}.petal-d{fill:url(#petal-c);}.petal-e{fill:url(#petal-d);}.petal-f{opacity:0.7;fill:url(#petal-e);}.petal-g{fill:url(#petal-f);}.petal-h{fill:url(#petal-g);}.petal-i{fill:url(#petal-h);}.petal-j{opacity:0.74;}.petal-j,.petal-k{mix-blend-mode:multiply;}.petal-k{fill:url(#petal-i);}"
                ]
              }
          , SVG.linearGradient
              { id: "petal-a"
              , x1: "64.1"
              , y1: "54.23"
              , x2: "85.26"
              , y2: "54.23"
              , gradientTransform: "matrix(0.8, -0.27, 0.32, 0.95, -35.2, 4.14)"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#e59cc9"
                    }
                , SVG.stop
                    { offset: "0.46"
                    , stopColor: "#e196c5"
                    }
                , SVG.stop
                    { offset: "0.5"
                    , stopColor: "#db82be"
                    }
                , SVG.stop
                    { offset: "0.56"
                    , stopColor: "#d771b9"
                    }
                , SVG.stop
                    { offset: "0.63"
                    , stopColor: "#d366b5"
                    }
                , SVG.stop
                    { offset: "0.73"
                    , stopColor: "#d25fb3"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#d15db2"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "petal-b"
              , x1: "68.21"
              , y1: "39.52"
              , x2: "54.66"
              , y2: "36.65"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#d15db2"
                    }
                , SVG.stop
                    { offset: "0.4"
                    , stopColor: "#d25fb3"
                    }
                , SVG.stop
                    { offset: "0.54"
                    , stopColor: "#d366b5"
                    }
                , SVG.stop
                    { offset: "0.65"
                    , stopColor: "#d771b9"
                    }
                , SVG.stop
                    { offset: "0.73"
                    , stopColor: "#db82be"
                    }
                , SVG.stop
                    { offset: "0.8"
                    , stopColor: "#e196c5"
                    }
                , SVG.stop
                    { offset: "0.84"
                    , stopColor: "#e49ac8"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#e59cc9"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "petal-c"
              , x1: "59.27"
              , y1: "37.02"
              , x2: "79.76"
              , y2: "48.38"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#e59cc9"
                    }
                , SVG.stop
                    { offset: "0.55"
                    , stopColor: "#e196c5"
                    }
                , SVG.stop
                    { offset: "0.59"
                    , stopColor: "#db82be"
                    }
                , SVG.stop
                    { offset: "0.63"
                    , stopColor: "#d771b9"
                    }
                , SVG.stop
                    { offset: "0.69"
                    , stopColor: "#d366b5"
                    }
                , SVG.stop
                    { offset: "0.77"
                    , stopColor: "#d25fb3"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#d15db2"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "petal-d"
              , x1: "22.05"
              , y1: "48.22"
              , x2: "44.42"
              , y2: "37.31"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#e59cc9"
                    }
                , SVG.stop
                    { offset: "0.32"
                    , stopColor: "#e196c5"
                    }
                , SVG.stop
                    { offset: "0.36"
                    , stopColor: "#db82be"
                    }
                , SVG.stop
                    { offset: "0.42"
                    , stopColor: "#d771b9"
                    }
                , SVG.stop
                    { offset: "0.49"
                    , stopColor: "#d366b5"
                    }
                , SVG.stop
                    { offset: "0.58"
                    , stopColor: "#d25fb3"
                    }
                , SVG.stop
                    { offset: "0.85"
                    , stopColor: "#d15db2"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "petal-e"
              , x1: "51.15"
              , y1: "17.01"
              , x2: "51.15"
              , y2: "64.19"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#e5b5d3"
                    , stopOpacity: "0"
                    }
                , SVG.stop
                    { offset: "0.07"
                    , stopColor: "#e6b6d0"
                    , stopOpacity: "0.02"
                    }
                , SVG.stop
                    { offset: "0.15"
                    , stopColor: "#e7b9c9"
                    , stopOpacity: "0.08"
                    }
                , SVG.stop
                    { offset: "0.24"
                    , stopColor: "#eabfbc"
                    , stopOpacity: "0.17"
                    }
                , SVG.stop
                    { offset: "0.34"
                    , stopColor: "#eec6aa"
                    , stopOpacity: "0.3"
                    }
                , SVG.stop
                    { offset: "0.44"
                    , stopColor: "#f2d094"
                    , stopOpacity: "0.47"
                    }
                , SVG.stop
                    { offset: "0.54"
                    , stopColor: "#f8dc78"
                    , stopOpacity: "0.67"
                    }
                , SVG.stop
                    { offset: "0.63"
                    , stopColor: "#ffe959"
                    , stopOpacity: "0.9"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "petal-f"
              , x1: "77.87"
              , y1: "60.17"
              , x2: "66.21"
              , y2: "48.51"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#d662b1"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#e07ebc"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "petal-g"
              , x1: "23.95"
              , y1: "58.36"
              , x2: "32.86"
              , y2: "48.46"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#c959a9"
                    }
                , SVG.stop
                    { offset: "0.27"
                    , stopColor: "#ca5cab"
                    }
                , SVG.stop
                    { offset: "0.5"
                    , stopColor: "#cf67b0"
                    }
                , SVG.stop
                    { offset: "0.72"
                    , stopColor: "#d678b8"
                    }
                , SVG.stop
                    { offset: "0.92"
                    , stopColor: "#e090c3"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#e59cc9"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "petal-h"
              , x1: "35.68"
              , y1: "55.02"
              , x2: "62.13"
              , y2: "54.84"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#c454aa"
                    }
                , SVG.stop
                    { offset: "0"
                    , stopColor: "#c555ab"
                    }
                , SVG.stop
                    { offset: "0.08"
                    , stopColor: "#d564bb"
                    }
                , SVG.stop
                    { offset: "0.13"
                    , stopColor: "#db69c0"
                    }
                , SVG.stop
                    { offset: "0.27"
                    , stopColor: "#da6ec1"
                    }
                , SVG.stop
                    { offset: "0.45"
                    , stopColor: "#d87dc3"
                    }
                , SVG.stop
                    { offset: "0.48"
                    , stopColor: "#d781c3"
                    }
                , SVG.stop
                    { offset: "0.49"
                    , stopColor: "#d884c5"
                    }
                , SVG.stop
                    { offset: "0.54"
                    , stopColor: "#dd8dc9"
                    }
                , SVG.stop
                    { offset: "0.61"
                    , stopColor: "#de90cb"
                    }
                , SVG.stop
                    { offset: "0.62"
                    , stopColor: "#de90cb"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#de8ecb"
                    }
                ]
              }
          , SVG.linearGradient
              { id: "petal-i"
              , x1: "50"
              , y1: "73.44"
              , x2: "50"
              , y2: "29.33"
              , gradientUnits: "userSpaceOnUse"
              , children:
                [ SVG.stop
                    { offset: "0"
                    , stopColor: "#470e3f"
                    }
                , SVG.stop
                    { offset: "0.2"
                    , stopColor: "#97705b"
                    , stopOpacity: "0.61"
                    }
                , SVG.stop
                    { offset: "0.42"
                    , stopColor: "#d2b870"
                    , stopOpacity: "0.32"
                    }
                , SVG.stop
                    { offset: "0.66"
                    , stopColor: "#f4e37c"
                    , stopOpacity: "0.15"
                    }
                , SVG.stop
                    { offset: "1"
                    , stopColor: "#fff080"
                    , stopOpacity: "0.1"
                    }
                ]
              }
          ]
        }
    , SVG.title
        { children:
          [ R.text "petal"
          ]
        }
    , SVG.g
        { className: "petal-a"
        , children:
          [ SVG.path
              { className: "petal-b"
              , d: "M50.28,35.74c2.56,10.17,3.5,15.42-1.94,17.28s-12.58-4.69-16-14.62S29.78,24.5,36.09,17C42.59,22.63,47.42,24.41,50.28,35.74Z"
              }
          , SVG.path
              { className: "petal-c"
              , d: "M48.33,36.49c-.57,10.48-4.49,15.38,1.92,18S65,51.26,69,41.53s-7.45-22.3-7.45-22.3S48.9,26.08,48.33,36.49Z"
              }
          , SVG.path
              { className: "petal-d"
              , d: "M59.53,46.93C52,60.42,43.41,56.71,48.44,61.74S66.41,62,77.35,51,84,19.76,84,19.73C77.47,29.64,66.17,35.11,59.53,46.93Z"
              }
          , SVG.path
              { className: "petal-e"
              , d: "M42.76,47.39c7.58,13.49,16.13,9.78,11.1,14.8s-18,.24-28.91-10.7-6.61-31.28-6.64-31.31C24.82,30.09,36.12,35.57,42.76,47.39Z"
              }
          , SVG.path
              { className: "petal-f"
              , d: "M84,19.73c-3.79,5.77-9.21,10-14.39,14.94-1.26-7.91-8.07-15.44-8.07-15.44s-9.28,5-12.28,13C46.31,24,41.86,22,36.09,17c-5.15,6.12-6.63,9.88-5.16,16.47-4.61-4.24-9.26-8.18-12.62-13.3,0,0-4.3,20.37,6.64,31.31,9.71,9.71,21,14.57,26.92,12C58.07,64.84,68.38,60,77.35,51,88.29,40.1,84,19.76,84,19.73ZM47,53.3a5.67,5.67,0,0,0,1-.18,7,7,0,0,0,2.24,1.34,8.55,8.55,0,0,0,2.68.6,23.79,23.79,0,0,1-2.12,1.53A22.32,22.32,0,0,1,47,53.3Z"
              }
          , SVG.path
              { className: "petal-g"
              , d: "M40.27,68.31c3.91,7.43,18.16,4.93,32.93-5.85S95.58,27,92.86,29.51C81.58,40,36.37,60.89,40.27,68.31Z"
              }
          , SVG.path
              { className: "petal-h"
              , d: "M55.5,68c-3.3,6.35-16.93,3.6-30.43-6.15S6.72,37.51,6.59,32.68C17,42.09,58.8,61.64,55.5,68Z"
              }
          , SVG.path
              { className: "petal-i"
              , d: "M62.05,54.93c0,10.22-5.92,18.51-13.23,18.51S35.59,65.15,35.59,54.93,48.82,36.42,48.82,36.42,62.05,44.71,62.05,54.93Z"
              }
          , SVG.g
              { className: "petal-j"
              , children:
                [ SVG.path
                    { className: "petal-k"
                    , d: "M92.86,29.51c-5.61,5.22-19.63,13-31.81,20.44C58,42.15,48.82,36.42,48.82,36.42s-10.32,6.46-12.73,15C24.77,44.59,11.77,37.37,6.59,32.68c.13,4.83,5,19.41,18.48,29.16a56.3,56.3,0,0,0,16.35,8.44,10.77,10.77,0,0,0,7.4,3.16,10,10,0,0,0,5.24-1.52c5.63-1.28,12.33-4.49,19.14-9.46C88,51.69,95.58,27,92.86,29.51Z"
                    }
                ]
              }
          ]
        }
    ]
  }
