
## Using Custom Types for ID

Currently, the `id` field in `Post` is an interger. We could mistakenly pass an identifier of a different data structure, which also happens to be an integer,  
to a function expecting a post `id`. The Elm compiler won't be able to catch a bug like that. We can help the compiler by implementing identifiers as  
*custom types* <https://elmprogramming.com/type-system.html#creating-our-own-types>. 

...from
```elm
type alias Post =
    { id : Int
    -- more types --
    }
```

...to 
```elm
type alias Post = 
    { id : PostId
    }
```

`PostId` is an opaque type <https://elmprogramming.com/commands.html#opaque-type> 
