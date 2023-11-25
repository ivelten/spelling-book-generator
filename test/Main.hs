module Main (main) where

import Test.Tasty
import Test.Tasty.HUnit
import SpellingBookGenerator

tests :: TestTree
tests = testGroup "SpellingBookGenerator"
  [ testGroup "speller"
    [ testCase "Empty word array" $ do
        let result = speller []
        result @?= ""
    ,
      testCase "Array with empty string word" $ do
        let result = speller [""]
        result @?= ""
    ,
      testCase "Array with whitespace only word" $ do
        let result = speller [" "]
        result @?= ""
    ,
      testCase "Array with multiple cases" $ do
        let result = speller ["", "lion", " ", "car",  "", "    ", "book", "  "]
        result @?= "l is for lion, c is for car, b is for book"
    ]
  ]

main :: IO ()
main = defaultMain tests
