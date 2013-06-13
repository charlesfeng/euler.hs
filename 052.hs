-- project euler: problem 52 (http://projecteuler.net/problem=52)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List

pass x = all (\a -> sx == (sort . show $ a * x)) [2 .. 6]
  where sx = sort $ show x

main = do
  print $ head $ dropWhile (\a -> not $ pass a) [100000 ..]

-- answer: 142857
-- runtime: 0.3a