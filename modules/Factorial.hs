-- factorial module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Factorial (factorCount) where

factorCount :: Int -> Int -> Int
factorCount n p
  | n == 0     = 0
  | otherwise  = (n `div` p) + factorCount (n `div` p) p