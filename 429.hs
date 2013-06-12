-- project euler: problem 429 (http://projecteuler.net/problem=429)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Factorial
import Mod
import Primes

main = do
  print $ foldl' (\a x -> (a * x) `mod` m) 1 [ 1 + modPow p (2 * factorCount n p) m | p <- ps ]
  where n = 100000000
        m = 1000000009
        ps = primes n

-- answer: 98792821
-- runtime: 156.3s