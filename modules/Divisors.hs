-- divisors module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Divisors (divisors, divisors', properDivisors, properDivisors', numDivisors, numDivisors', numProperDivisors, numProperDivisors', sumDivisors, sumDivisors', sumProperDivisors, sumProperDivisors') where

import Factor
import Numeric
import Data.List
import Data.Char
import Data.IntSet (toList, fromList)

divisors :: Int -> [Int]
divisors n = (toList . fromList) $ map (\a -> if a == [] then 1 else product a) $ subsequences fs
  where fs = pfactor n

divisors' :: Int -> [Int] -> [Int]
divisors' n ps = (toList . fromList) $ map (\a -> if a == [] then 1 else product a) $ subsequences fs
  where fs = pfactor' n ps

properDivisors :: Int -> [Int]
properDivisors n = init $ divisors n

properDivisors' :: Int -> [Int] -> [Int]
properDivisors' n ps = init $ divisors' n ps

numDivisors :: Int -> Int
numDivisors n = product $ map (\x -> 1 + length x) $ group $ pfactor n

numDivisors' :: Int -> [Int] -> Int
numDivisors' n ps = product $ map (\x -> 1 + length x) $ group $ pfactor' n ps

numProperDivisors :: Int -> Int
numProperDivisors n = numDivisors n - 1

numProperDivisors' :: Int -> [Int] -> Int
numProperDivisors' n ps = numDivisors' n ps - 1

sumDivisors :: Int -> Int
sumDivisors n = product $ map (\x -> ((head x) ^ (1 + length x) - 1) `div` (head x - 1)) $ group $ pfactor n

sumDivisors' :: Int -> [Int] -> Int
sumDivisors' n ps = product $ map (\x -> ((head x) ^ (1 + length x) - 1) `div` (head x - 1)) $ group $ pfactor' n ps
  
sumProperDivisors :: Int -> Int
sumProperDivisors n = sumDivisors n - n
  
sumProperDivisors' :: Int -> [Int] -> Int
sumProperDivisors' n ps = sumDivisors' n ps - n