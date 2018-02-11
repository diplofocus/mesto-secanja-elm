module Main exposing (..)

import Css exposing (..)
import Html
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href, src)
import Header exposing (siteHeader)
import Footer exposing (pageFooter)
import Model exposing (Model)
import User exposing (User)


maybe : a -> Maybe a -> a
maybe default maybeValue =
    case maybeValue of
        Nothing ->
            default

        Just value ->
            value



---- MODEL ----


init : ( Model, Cmd Msg )
init =
    ( Model <| Just <| User "Petar" "nekiavatar" User.Admin, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


dummyMainContent : Html msg
dummyMainContent =
    div [] [ text "Coming Soon!" ]


viewLayout : Attribute msg
viewLayout =
    css
        [ displayFlex
        , flexDirection column
        , justifyContent spaceBetween
        , height <| vh 100
        ]


view : Model -> Html Msg
view model =
    div
        [ viewLayout
        ]
        [ siteHeader model
        , dummyMainContent
        , pageFooter
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view >> toUnstyled
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
