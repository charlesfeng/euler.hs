-- project euler: problem 40 (http://projecteuler.net/problem=40)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char

d n = if n == 1 then 1 else digitToInt $ (show $ 10 ^ length p + q) !! r
  where p = takeWhile (< n) $ scanl1 (+) [ 9 * 10 ^ x * (x + 1) | x <- [0 ..] ]
        q = (n - last p - 1) `div` (length p + 1)
        r = (n - last p - 1) `mod` (length p + 1)

main = do
  print $ product [ d $ 10 ^ x | x <- [0 .. 6] ]

-- answer: 210
-- runtime: 0.2s