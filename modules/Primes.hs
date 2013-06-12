-- primes module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Primes (primes) where

import Data.Array.Unboxed

primes :: Int -> [Int]
primes n = 2 : [ x | x <- [3, 5 .. n], ps ! x ]
  where
    ps = s 5 $ accumArray (\_ _ -> False) True (3, n) [ (x, ()) | x <- [9, 15 .. n] ]
    s p a
      | q > n      = a
      | otherwise  = if null t then a' else s (head t) a'
      where
        q  = p * p
        a' :: UArray Int Bool
        a' = a // [ (i, False) | i <- [q, q + 2 * p .. n] ]
        t  = [ i | i <- [p + 2, p + 4 .. n], a' ! i ]