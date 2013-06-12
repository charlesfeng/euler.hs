-- permutations module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Perms (perms, combs) where

perms :: Int -> [a] -> [[a]]
perms 0 _   = [[]]
perms 1 [x] = [[x]]
perms n xs
  | n < length xs  = concatMap (perms n) $ combs n xs
  | n > length xs  = []
  | otherwise      = concatMap (\a -> map (xs !! a :) $ perms (n - 1) (take a xs ++ drop (a + 1) xs)) [0 .. n - 1]

combs :: Int -> [a] -> [[a]]
combs 0 _        = [[]]
combs _ []       = []
combs n (x : xs) = (map (x :) (combs (n - 1) xs)) ++ (combs n xs)