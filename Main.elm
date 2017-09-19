import Html exposing (Html, input, div)


main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model = String

model : Model
model = ""


-- UPDATE

type Msg = NewInput String

update : Msg -> Model -> Model
update msg model =
  case msg of
    NewInput str -> str


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ input [] [] ]
