-- triangles module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Triangles (pyTriSum, pyTriSum', pyTris) where

import Data.List
import Divisors

pyTris :: [[Int]]
pyTris = concat [ [ sort [m ^ 2 - n ^ 2, 2 * m * n, m ^ 2 + n ^ 2] | n <- [1 .. m - 1], gcd m n == 1, odd $ m - n ] | m <- [1 ..] ]

pyTriSum :: Int -> [[Int]]  
pyTriSum s = _pyTriSum s (divisors s)

pyTriSum' :: Int -> [Int] -> [[Int]]
pyTriSum' s ps = _pyTriSum s (divisors' s ps)

_pyTriSum :: Int -> [Int] -> [[Int]]
_pyTriSum s fs = nub $
  [ sort $ map (* (s `div` x)) [m ^ 2 + n ^ 2, m ^ 2 - n ^ 2, 2 * m * n]
  | x <- tail fs
  , m <- filter (\a -> a ^ 2 < x `div` 2 && a ^ 2 > x `div` 4) $ init fs
  , let n = x `div` (2 * m) - m
  , m * (m + n) == x `div` 2 ]