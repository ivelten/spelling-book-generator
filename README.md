# spelling-book-generator

This is a library made as an exercise for the Function Programming in Haskell course of the University of Glasgow.

The library exposes a single function `speller`, which generates "text for a speelling book".
For example, if you apply the function like `speller ["lion", "car"]`, you will get a string `"l is for lion, c is for car"`.

A small test suite was added to check the function behavior against common cases.

## How to run the test project

- Install GHC and Cabal. Easiest way may be using [GHCup](https://www.haskell.org/ghcup/).
- Run `cabal test` in the root folder of the project.
