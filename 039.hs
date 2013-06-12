-- project euler: problem 39 (http://projecteuler.net/problem=39)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Ord
import Primes
import Triangles

ps = primes 1000

main = do
  print $ fst $ maximumBy (comparing snd) [ (x, length $ pyTriSum' x ps) | x <- [12 .. 1000] ]

-- answer: 840
-- runtime: 0.4s