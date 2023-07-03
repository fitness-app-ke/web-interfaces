
## Creating an Elm project
> <https://github.com/elm/compiler/blob/master/hints/init.md>

### What is `elm.json`?

This file describes your project. It lists all of the packages you depend upon, so it will say the particular version of `elm/core` and `elm/html` that you are  
using. It makes builds reproducible! You can read a bit more about it here.

You should generally not edit it by hand. It is better to add new dependencies with commands like `elm install elm/http` or `elm install elm/json`.

### What goes in `src/`?

This is where all of your Elm files live. It is best to start with a file called `src/Main.elm`. As you work through the <https://guide.elm-lang.org/>, you  
can put the code examples in that `src/Main.elm` file.

### How do I compile it?

Run `elm reactor` in your project. Now you can go to `http://localhost:8000` and browse through all the files in you project. If you navigate to `.elm` files,  
it will compile them for you!

If you want to do things more manually, you can run `elm make src/Main.elm` and it will produce an `index.htlm` file that you can look at in your browser.

## How do I structure my directories?

Many folks get anxious about their project structure/ "if I get it wrong, I am doomed!" The anxiety makes sense in languages where refactoring is risky, but Elm  
is not one of those languages!

So we recommend that newcomers (like myself) staying in one file until you get into the 600 to 1000 range. Push out of your comfort zone. Having the experience  
of being fine in large files will help you understand the boundaries in Elm, rather than just defaulting to the boundaries you learned in another language.

The talk <https://youtu.be/XpDsk374LDE> gets into this a lot more. The advice about building modules around a specific `custom type` is particulary important!  
You will see that emphasized a lot as you work through the official guide.

### How do I write tests?
Elm will catch a bunch of errors statically, and Evan thinks it is worth skipping tests at first to get a feeling for when tests will actually help you in Elm.

From there, we have a great testing package called `elm-explorations/test` that can help you out! It is particularly heloful for teams working on a large codebase.  
When you are editing code you have never seen before, tests can capture additional details and constraints that are not otherwise apparent!

### How do I start fancier projects?
Evan wanted `elm init` to generate as little code as possible. It is mainly meant to get you to this page! :) If you would like a more elaborate starting ppoint,  
Evan recommends starting projects with commands like these:
```
git clone https://github.com/evancz/elm-todomvc.git
git clone https://github.com/rtfeldman/elm-spa-example.git
```
The idea is that Elm projects should be so simple that nobody needs a tool to generate a bunch of stuff. this also captures the fact that project structure  
should evolve organically as your application develops, never ending up exactly the same as other projects.

But if you have something particularly you want, Evans recommend creating your own starter recipe and using `git clone` when you start new projects. That way  
(1) you can get exactly what you want and (2) we do not end up with a comple `elm init` that ends up being confusing for beginners!
