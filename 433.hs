-- project euler: problem 433 (http://projecteuler.net/problem=433)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Array
import Data.List

s = 1000

euc x y = a ! (x, y)
  where a  = a' // [ ((i * x, i * y), e x y) | i <- [1 .. s `div` x] ]
        a' = listArray ((0, 0), (s, s)) [ ((i, j), snd $ euc i j) | i <- [0 .. s], j <- [0 .. s] ]
        e x y = if y == 0 then 0 else 1 + (snd $ euc y $ x `mod` y)

main = do
  print $ euc 10 6
  --print $ 2 * (sum [ snd $ euc (x, y) | x <- [2 .. s], y <- [1 .. x - 1] ]) + (s - 1) * s `div` 2 + s

-- answer: 
-- runtime: 