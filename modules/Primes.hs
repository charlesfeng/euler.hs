-- primes module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Primes
( primes
) where

import Minus

primes n = 2 : s [3, 5 .. n] where
  s []      = []
  s (p : x) = p : s (x `minus` [p * p, p * p + 2 * p .. n])