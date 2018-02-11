module User exposing (..)


type alias User =
    { name : String
    , avatar : String
    , role : Role
    }


type Role
    = Regular
    | Admin
