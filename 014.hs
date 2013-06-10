-- project euler: problem 14 (http://projecteuler.net/problem=14)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Array
import Data.Ord

terms n = memo
  where
    memo = listArray (1, n) $ 0 : [ 1 + term n x | x <- [2 .. n] ]
    term n x = if x' <= n then memo ! x' else 1 + term n x'
      where x' = if even x then x `div` 2 else 3 * x + 1

main = do
  print $ fst . maximumBy (comparing snd) . assocs . terms $ 1000000

-- answer: 837799
-- runtime: 7.0s