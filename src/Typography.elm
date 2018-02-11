module Typography exposing (..)

import Css exposing (..)

baseSize : number
baseSize = 1

lineHeight : Float
lineHeight = 1.5

scale : Float
scale = 0.707

xxxs : Em
xxxs = em <| baseSize * scale ^ 4
xxs : Em
xxs = em <| baseSize * scale ^ 3
xs : Em
xs = em <| baseSize * scale ^ 2
s : Em
s = em <| baseSize * scale
r : Em
r = em <| baseSize
l : Em
l = em <| baseSize / scale
xl : Em
xl = em <| baseSize / scale ^ 2
xxl : Em
xxl = em <| baseSize / scale ^ 3
xxxl : Em
xxxl = em <| baseSize / scale ^ 4
