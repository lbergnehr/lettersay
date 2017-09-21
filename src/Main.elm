import Char
import Html exposing (Html, input, textarea, div, text)
import Html.Attributes exposing (class, autofocus, placeholder)
import Html.Events exposing (onInput)
import SpeechSynthesis exposing (..)

main =
  Html.program {
    init = init,
    update = update,
    subscriptions = subscriptions,
    view = view
  }

-- MODEL

type alias Model = String

init : (Model, Cmd msg)
init = ("", Cmd.none)

-- UPDATE

subscriptions : Model -> Sub msg
subscriptions _ = Sub.none

type Msg = NewInput String

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NewInput str -> (model, say str)

-- VIEW

view : Model -> Html Msg
view model =
  div [ class "container" ] [
    textarea [
      onInput NewInput,
      autofocus True,
      Char.fromCode 9997 |> String.fromChar |> placeholder
    ] []
  ]
