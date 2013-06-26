-- project euler: problem 433 (http://projecteuler.net/problem=433)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Primes

s = 10000

euc (x, y) = euc' (x, y) 0
  where euc' (x, y) n = if y == 0 then n else euc' (y, x `mod` y) (n + 1)

rels (m, n) = (s `div` m) * (euc (m, n) + euc (n, m)) +
  (if 2 * m - n <= s then rels (2 * m - n, m) else 0) +
  (if 2 * m + n <= s then rels (2 * m + n, m) else 0) +
  (if m + 2 * n <= s then rels (m + 2 * n, n) else 0)
  
  x, y -> y, x mod y
  
  x = y' + n * y

main = do
  print $ s + rels (2, 1) + rels (3, 1)
  --print $ foldl1' (+) [ euclid x y | x <- [1 .. 100], y <- [1 .. 100] ]

-- answer: 
-- runtime: 