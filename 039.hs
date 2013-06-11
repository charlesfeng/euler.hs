-- project euler: problem 39 (http://projecteuler.net/problem=39)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Ord

tris n = length [ (a, b, c) | a <- [1 .. n `div` 2], b <- [a .. n `div` 2], let c = n - a - b, a + b + c == n, a ^ 2 + b ^ 2 == c ^ 2 ]

main = do
  print $ fst $ maximumBy (comparing snd) [ (n, tris n) | n <- [12 .. 1000] ]

-- answer: 840
-- runtime: 142.7s