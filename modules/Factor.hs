-- prime factorization module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Factor (factor, pfactor) where

import Primes
  
factor :: Int -> [Int]
factor n = factor' n 2

factor' :: Int -> Int -> [Int]
factor' n f
  | f * f > n       = [n]
  | n `mod` f == 0  = f : factor' (n `div` f) 2
  | otherwise       = factor' n (f + 1)
  
pfactor :: Int -> [Int]
pfactor n = pfactor' n 0 (primes n)

pfactor' :: Int -> Int -> [Int] -> [Int]
pfactor' n i p
  | f * f > n       = [n]
  | n `mod` f == 0  = f : pfactor' (n `div` f) 0 p
  | otherwise       = pfactor' n (i + 1) p
  where f = p !! i