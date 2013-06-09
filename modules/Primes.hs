-- primes module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Primes (primes) where

import Minus

primes :: Int -> [Int]

primes n = 2 : s [3, 5 .. n] where
  s (p : x)
    | p * p > n  = p : x
    | otherwise  = p : s (x `minus` [p * p, p * p + 2 * p ..])