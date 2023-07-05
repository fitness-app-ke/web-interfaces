module Post exposing (Post, PostId, postDecoder, postsDecoder)

import Json.Decode as Decode exposing (Decoder, int, list, string)
import Json.Decode.Pipeline exposing (required)


type alias Post =
        { id : PostId
        , title : String
        , authorName : String
        , authorUrl : String
        }

type PostId
        = PostId Int

postsDecoder : Decoder (List Post)
postsDecoder =
        list postDecoder

postDecoder : Decoder Post
postDecoder =
        Decode.succeed Post
        |> required "id" int
        |> required "title" string
        |> required "authorName" string
        |> required "authorUrl" string
