module SpellingBookGenerator (speller) where

-- | Generates text for spelling book.
--   For example, if you write speller ["lion", "duck"], the result will
--   be "l is for lion, d is for duck".
speller :: [[Char]] -> [Char]
speller =
  concatenate . map spellWord . removeEmpty
  where
    -- Remove empty is the first helper function.
    -- It just traverses all words and remove the ones which are just
    -- empty or white space strings.
    removeEmpty :: [[Char]] -> [[Char]]
    removeEmpty = filter (\x -> x /= [] && notElem ' ' x)
    -- This is the basic map function which creates the spelling for
    -- each word.
    spellWord :: [Char] -> [Char]
    spellWord [] = []
    spellWord (x : xs) = x : " is for " ++ (x : xs)
    -- This function concatenates every spelling generated, putting
    -- a comma and a space between them.
    concatenate :: [[Char]] -> [Char]
    concatenate [] = []
    concatenate (x : xs) = foldl (\acc e -> acc ++ ", " ++ e) x xs
