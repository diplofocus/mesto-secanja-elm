module Model exposing (..)

import User exposing (User)


type alias Model =
    { user : Maybe User }
