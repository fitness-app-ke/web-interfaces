import Browser
import Html exposing (..)
import Html Attributes exposing (..)
import Html Events exposing (onInput)

-- MAIN

main =
        Browser.sandbox { init = init, update, view = view }

-- MODEL

type alias Model = 
        { name : String
        , password : String
        , passwordAgain : String
        }

init : Model

init = 
        Model "" "" ""

-- UPDATE

type Msg =
        Name String
        | Password String
        | PasswordAgain String

update : Msg -> Model -> Model
update msg model =
        case msg of
                Name name -> 
                        { model | name = name }

                Password password -> 
                        {model | name = name }

                PasswordAgain password -> 
                        {model | passwordAgain = password }

-- VIEW

view : Model -> Html Msg
view model = 
        div []
        [ viewInput "text" "Name" model.name Name
        , viewInput "password" "Password" model.password Password
        , viewInput "password" "Re-enter Password" model.passwordAgain PasswordAgain
        , viewValidation model
        ]

viewInput : String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg = 
        imput [type_ t, placeholder p, value v, onInput toMsg ] []

viewValidation : Model -> Html msg
viewValidation model = 
        if model.password == model.passwordAgain then
                div [ style "color" "green" ] [ text "OK" ]
         else
                 div [style "color" "red" ] [ text "Password do not match" ]
