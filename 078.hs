-- project euler: problem 78 (http://projecteuler.net/problem=78)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Array

pf = (listArray (1, 60000) [ (x, pf' x) | x <- [1 .. 60000] ] !)
  where pf' x = (sum [ (if odd m then 1 else -1) *
                  ((if a < 0 then 0 else if a == 0 then 1 else snd . pf $ a) + 
                   (if b < 0 then 0 else if b == 0 then 1 else snd . pf $ b))
                | m <- takeWhile (\a -> a * (3 * a - 1) `div` 2 <= x) [1 ..]
                , let a = x - (m * (3 * m - 1) `div` 2)
                , let b = x - ((-m) * (3 * (-m) - 1) `div` 2) ]) `mod` 1000000

main = do
  print $ fst . head . dropWhile (\a -> (snd a) /= 0) $ [ pf x | x <- [1 .. 60000] ]

-- answer: 55374
-- runtime: 55.9s