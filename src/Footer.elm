module Footer exposing (..)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (href, alt)

pageFooter : Html msg
pageFooter = footer [] [ text "Developed by "
                       , footerAuthor "Petar Saulić" "https://www.github.com/diplofocus"
                       , text " & "
                       , footerAuthor "Dušan Miletić" "https://www.github.com/miletich"
                       , text "."
                       ]

footerAuthor : String -> String -> Html msg
footerAuthor name url = a [ href url, alt name ] [ text name ]
