module Assets.Petal where

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

type DefaultProps = ( children :: Array JSX
, viewBox :: String
, xmlns :: String
, xmlnsXlink :: String)

defaultProps :: { | DefaultProps }
defaultProps =
     { xmlns: "http://www.w3.org/2000/svg"
     , xmlnsXlink: "http://www.w3.org/1999/xlink"
     , viewBox: "0 0 100 100"
     , children: 
     [ SVG.defs
       { children: 
       [ SVG.style
         { children: 
         [ R.text ".petalA{isolation:isolate;}.petalB,.petalC,.petalD,.petalE,.petalF,.petalG,.petalH,.petalI,.petalK{fill-rule:evenodd;}.petalB{fill:url(#petalA);}.petalC{fill:url(#petalB);}.petalD{fill:url(#petalC);}.petalE{fill:url(#petalD);}.petalF{opacity:0.7;fill:url(#petalE);}.petalG{fill:url(#petalF);}.petalH{fill:url(#petalG);}.petalI{fill:url(#petalH);}.petalJ{opacity:0.74;}.petalJ,.petalK{mix-blend-mode:multiply;}.petalK{fill:url(#petalI);}"
         ]
         }
       , SVG.linearGradient
         { id: "petalA"
         , x1: "323.41"
         , y1: "-217.05"
         , x2: "346.95"
         , y2: "-217.05"
         , gradientTransform: "matrix(0.8, -0.27, 0.32, 0.95, -157.82, 323.27)"
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
         { id: "petalB"
         , x1: "70.01"
         , y1: "31.04"
         , x2: "54.94"
         , y2: "27.84"
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
         { id: "petalC"
         , x1: "60.07"
         , y1: "28.26"
         , x2: "82.87"
         , y2: "40.89"
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
         { id: "petalD"
         , x1: "18.67"
         , y1: "40.71"
         , x2: "43.55"
         , y2: "28.58"
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
         { id: "petalE"
         , x1: "51.04"
         , y1: "6"
         , x2: "51.04"
         , y2: "58.48"
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
         { id: "petalF"
         , x1: "80.48"
         , y1: "54.33"
         , x2: "67.25"
         , y2: "41.09"
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
         { id: "petalG"
         , x1: "20.78"
         , y1: "51.99"
         , x2: "30.69"
         , y2: "40.97"
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
         { id: "petalH"
         , x1: "33.83"
         , y1: "48.27"
         , x2: "63.26"
         , y2: "48.08"
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
         { id: "petalI"
         , x1: "49.76"
         , y1: "68.77"
         , x2: "49.76"
         , y2: "19.7"
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
     , SVG.g
       { className:"petalA"
       , children: 
       [ SVG.path
         { className:"petalB"
         , d: "M50.07,26.83C52.92,38.15,54,44,47.92,46.05s-14-5.22-17.77-16.26S27.27,14.33,34.28,6C41.52,12.25,46.89,14.22,50.07,26.83Z"
         }
       , SVG.path
         { className:"petalC"
         , d: "M47.9,27.66c-.63,11.66-5,17.11,2.14,20s16.45-3.56,20.82-14.38S62.58,8.46,62.58,8.46,48.53,16.09,47.9,27.66Z"
         }
       , SVG.path
         { className:"petalD"
         , d: "M60.36,39.28C51.94,54.29,42.43,50.16,48,55.76S68,56,80.18,43.85,87.53,9.05,87.56,9C80.32,20,67.75,26.13,60.36,39.28Z"
         }
       , SVG.path
         { className:"petalE"
         , d: "M41.71,39.79c8.43,15,17.94,10.88,12.34,16.47s-20,.26-32.16-11.91S14.54,9.56,14.51,9.52C21.75,20.54,34.32,26.64,41.71,39.79Z"
         }
       , SVG.path
         { className:"petalF"
         , d: "M87.56,9c-4.22,6.42-10.25,11.17-16,16.62-1.4-8.8-9-17.18-9-17.18S52.26,14.06,48.91,23C45.66,13.72,40.7,11.55,34.28,6c-5.72,6.8-7.37,11-5.73,18.31-5.14-4.71-10.3-9.09-14-14.79,0,0-4.79,22.66,7.38,34.83,10.8,10.8,23.35,16.21,30,13.39,6.9,1.46,18.37-3.92,28.34-13.89C92.35,31.68,87.53,9.05,87.56,9ZM46.43,46.37a7.13,7.13,0,0,0,1.12-.21A7.67,7.67,0,0,0,50,47.65a9.34,9.34,0,0,0,3,.67A24.63,24.63,0,0,1,50.66,50,24.42,24.42,0,0,1,46.43,46.37Z"
         }
       , SVG.path
         { className:"petalG"
         , d: "M38,63.3c4.34,8.26,21.18,5.24,37.61-6.74s24.9-39.47,21.88-36.65C84.89,31.56,33.6,55,38,63.3Z"
         }
       , SVG.path
         { className:"petalH"
         , d: "M55.88,62.71c-3.68,7.06-18.83,4-33.86-6.85S1.62,28.8,1.47,23.43C13,33.89,59.55,55.65,55.88,62.71Z"
         }
       , SVG.path
         { className:"petalI"
         , d: "M63.16,48.18c0,11.37-6.59,20.59-14.71,20.59S33.73,59.55,33.73,48.18s14.72-20.6,14.72-20.6S63.16,36.8,63.16,48.18Z"
         }
       , SVG.g
         { className:"petalJ"
         , children: 
         [ SVG.path
           { className:"petalK"
           , d: "M97.44,19.91C91.26,25.65,75.69,34.25,62,42.5c-3.48-8.61-13.54-14.92-13.54-14.92S37,34.77,34.29,44.29C21.69,36.67,7.23,28.65,1.47,23.43,1.62,28.8,7,45,22,55.86a64.27,64.27,0,0,0,17,9A8.8,8.8,0,0,0,43,67.32a10.93,10.93,0,0,0,11.26-.23C60.66,65.54,68.15,62,75.56,56.56,92,44.58,100.46,17.09,97.44,19.91Z"
           }
         ]
         }
       ]
       }
     ]
     }
