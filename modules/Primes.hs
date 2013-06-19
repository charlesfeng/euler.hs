-- primes module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Primes (primes, isPrime, isPrime', isPrimeMR) where

import Data.Array.Unboxed
import Mod

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

isPrime :: Int -> Bool
isPrime n = all (\a -> (n `mod` a /= 0) || (n == a)) ps
  where ps = primes $ (ceiling . sqrt . fromIntegral) n

isPrime' :: Int -> [Int] -> Bool
isPrime' n ps = all (\a -> (n `mod` a /= 0) || (n == a)) $ takeWhile (< (ceiling . sqrt . fromIntegral) n) ps

isPrimeMR :: (Integral a, Show a) => a -> a -> Bool
isPrimeMR n a
  | n < 2   || even n   = False
  | b0 == 1 || b0 == n' = True
  | otherwise           = iter (tail b)
  where 
    n'     = n - 1
    (k, m) = aux 0 n'
    b0     = modPow a m n
    b      = take (fromIntegral k) $ iterate (\x -> (x * x) `rem` n) b0
    aux k m
      | r == 1     = (k, m)
      | otherwise  = aux (k + 1) q
      where (q, r) = quotRem m 2
    iter [] = False
    iter (x : xs)
      | x == 1     = False
      | x == n'    = True
      | otherwise  = iter xs