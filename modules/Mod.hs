-- modular arithmetic module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Mod (modInv, modPow) where

import Numeric
import Data.Char

modInv :: Int -> Int -> Int
modInv p q
  | p == 1     = 1
  | otherwise  = ((p - modInv (q `mod` p) p) * q + 1) `div` p

modPow :: Int -> Int -> Int -> Int
modPow b n m =
  foldl  (\a x -> (a * x) `mod` m) 1 $
  map    (\a -> fst a) $
  filter (\a -> snd a == '1') $
  zip    (scanl (\a x -> (a ^ 2) `mod` m) b $ takeWhile (< n) [ 2 ^ x | x <- [0 ..] ])
         (reverse $ showIntAtBase 2 intToDigit n "")