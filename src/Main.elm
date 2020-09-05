module Main exposing (main)

import Browser
import Html

type Model =
    EmptyModel

type alias Msg = ()

view : Model -> Html.Html Msg
view _ =
    Html.text "Hello world"

--update : Msg -> Model -> (Model, Cmd Msg)
-- update _ model = (model, Cmd.none)

main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> ( EmptyModel, Cmd.none )
        , view = view
        , update = \_ model -> (model, Cmd.none)
        , subscriptions = \_ -> Sub.none
        }
