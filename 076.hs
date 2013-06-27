-- project euler: problem 76 (http://projecteuler.net/problem=76)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Array

sums n = sa (n, n - 1)
  where sa = (listArray ((0, 0), (100, 99)) [ ((x, y), sa' x y) | x <- [0 .. 100], y <- [0 .. 99] ] !)
        sa' n m = if n == 0 then 1 else sum [ snd $ sa (n - x, x) | x <- [1 .. min n m] ]

main = do
  print $ snd $ sums 100

-- answer: 190569291
-- runtime: 0.2s