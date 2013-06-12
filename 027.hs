-- project euler: problem 27 (http://projecteuler.net/problem=27)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Primes
import Data.List
import Data.Set
import Data.Ord

ps    = primes 10000
pss   = fromList ps
isP n = member n pss

main = do
  print $ fst $ maximumBy (comparing snd) [ (a * b, length $ takeWhile (isP) [ n ^ 2 + a * n + b | n <- [0 ..] ]) | a <- [-999 .. 999], b <- [-999 .. 999] ]

-- answer: -59231
-- runtime: 18.1s