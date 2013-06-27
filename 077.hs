-- project euler: problem 77 (http://projecteuler.net/problem=77)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Array
import Primes

ps  = primes 100
sps = listArray (0, length ps - 1) ps

sa = (listArray ((0, 0), (100, length ps - 1)) [ ((x, y), sa' x y) | x <- [0 .. 100], y <- [0 .. length ps - 1] ] !)
  where sa' n m
          | n == 0    = 1
          | n == 1    = 0
          | otherwise = sum [ snd $ sa (n - sps ! x, x) | x <- [0 .. (length $ takeWhile (<= n) $ take (m + 1) ps) - 1] ]

sums n = sa (n, (length $ takeWhile (<= n) ps) - 1)

main = do
  print $ fst $ head $ dropWhile (\a -> snd a <= 5000) [ (n, snd . sums $ n) | n <- [2 .. 100] ]

-- answer: 71
-- runtime: 0.3s