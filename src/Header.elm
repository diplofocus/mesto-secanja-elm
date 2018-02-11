module Header exposing (..)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href, src, alt)
import Model exposing (Model)
import User exposing (User, Role)


type alias NavLinkData =
    { name : String
    , url : String
    }


siteHeader : Model -> Html msg
siteHeader model =
    header []
        [ branding model, mainNav model, userBox model.user ]


branding : Model -> Html msg
branding model =
    div []
        [ text "Mesta sećanja" ]


userBox : Maybe User -> Html msg
userBox user =
    case user of
        Nothing ->
            text ""

        Just u ->
            let
                status =
                    case u.role of
                        User.Admin ->
                            text "Admin"

                        User.Regular ->
                            text ""
            in
                div []
                    [ span [] [ text u.name ]
                    , status
                    ]


dummyNav : List NavLinkData
dummyNav =
    [ NavLinkData "Pretraga" "/"
    , NavLinkData "Mapa" "/mapa"
    , NavLinkData "O projektu" "/o-projektu"
    ]


navLink : NavLinkData -> Html msg
navLink navItem =
    li []
        [ a [ alt navItem.name, href navItem.url ]
            [ text navItem.name ]
        ]


navStyles : Attribute msg
navStyles =
    css
        [ margin <| px 0
        , listStyle none
        ]


mainNav : Model -> Html msg
mainNav model =
    nav [] [ ul [ navStyles ] (List.map navLink dummyNav) ]
