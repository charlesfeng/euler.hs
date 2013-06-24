-- project euler: problem 26 (http://projecteuler.net/problem=26)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Primes
import Data.List
import Data.Ord

main = do
  -- method 1, using Fermat (runtime 0.3s)
  print $ fst $ maximumBy (comparing snd) [ head [ (x, y) | y <- [1 .. x - 1], (10 ^ y) `mod` x == 1 ] | x <- map (toInteger) $ drop 3 $ primes 1000 ]
  
  -- method 2, using 9's (runtime 3.6s)
  print $ fst $ maximumBy (comparing snd) [ (x, fst $ head $ dropWhile (\a -> (snd a) `rem` x /= 0) [ (y, read (replicate y '9') :: Integer) | y <- [1 ..] ]) | x <- map (toInteger) $ drop 3 $ primes 1000 ]

-- answer: 983
-- runtime: 0.3s