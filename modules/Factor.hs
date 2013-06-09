-- prime factorization module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Factor (factor, pfactor, pfactor') where

import Primes
  
factor :: Int -> [Int]
factor n = _factor n 2

_factor :: Int -> Int -> [Int]
_factor n f
  | f * f > n       = [n]
  | n `mod` f == 0  = f : _factor (n `div` f) 2
  | otherwise       = _factor n (f + 1)
  
pfactor :: Int -> [Int]
pfactor n = _pfactor n 0 (primes n)
  
pfactor' :: Int -> [Int] -> [Int]
pfactor' n ps = _pfactor n 0 ps

_pfactor :: Int -> Int -> [Int] -> [Int]
_pfactor n i p
  | f * f > n       = [n]
  | n `mod` f == 0  = f : _pfactor (n `div` f) 0 p
  | otherwise       = _pfactor n (i + 1) p
  where f = p !! i