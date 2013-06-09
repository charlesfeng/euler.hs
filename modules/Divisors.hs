-- divisors module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Divisors (numDivisors, numProperDivisors, sumDivisors, sumProperDivisors) where

import Factor
import Data.List

numDivisors :: Int -> Int
numDivisors n = product $ map (\x -> 1 + length x) $ group $ pfactor n

numProperDivisors :: Int -> Int
numProperDivisors n = numDivisors n - 1

sumDivisors :: Int -> Int
sumDivisors n = product $ map (\x -> ((head x) ^ (1 + length x) - 1) `div` (head x - 1)) $ group $ pfactor n
  
sumProperDivisors :: Int -> Int
sumProperDivisors n = sumDivisors n - n