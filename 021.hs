-- project euler: problem 21 (http://projecteuler.net/problem=21)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Primes
import Divisors

ps = primes 9999
ds = map (\x -> sumProperDivisors' x ps) [2 .. 9999]

main = do
  print $ foldl (\a x -> 
    if ds !! (x - 2) > 1
      && ds !! (x - 2) < 10000
      && x /= ds !! (x - 2)
      && x == ds !! (ds !! (x - 2) - 2)
      then a + x 
      else a
    ) 0 [2 .. 9999]

-- answer: 31626
-- runtime: 2.7s