module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)



-- MAIN


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , subscriptions = subscriptions
        , update = update
        , view = view
        }



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- MODEL


type alias Model =
    { title : String
    , description : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { title = "Hello, world"
      , description = "Start your Elm project with this template!"
      }
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp Never


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp _ ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "Project template"
    , body =
        [ main_ [ class "main" ]
            [ h1 [] [ text model.title ]
            , p [] [ text model.description ]
            ]
        ]
    }
