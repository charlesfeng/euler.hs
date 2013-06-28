-- project euler: problem 433 (http://projecteuler.net/problem=433)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Array
import Data.List

s = 100

euc = (listArray ((0, 0), (s, s)) [ ((x, y), euc' x y) | x <- [0 .. s], y <- [0 .. s] ] !)
  where euc' x y = if y == 0 then 0 else 1 + (snd $ euc (y, x `mod` y))

main = do
  print $ 2 * (sum [ snd $ euc (x, y) | x <- [2 .. s], y <- [1 .. x - 1] ]) + (s - 1) * s `div` 2 + s

-- answer: 
-- runtime: 