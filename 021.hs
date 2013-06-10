-- project euler: problem 21 (http://projecteuler.net/problem=21)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Array
import Primes
import Divisors

ps = primes 9999
ds = array (2, 9999) [ (x, sumProperDivisors' x ps) | x <- [2 .. 9999] ]

main = do
  print $ foldl (\a x -> 
    if ds ! x > 1
      && ds ! x < 10000
      && x /= ds ! x
      && x == ds ! (ds ! x)
      then a + x 
      else a
    ) 0 [2 .. 9999]

-- answer: 31626
-- runtime: 1.0s