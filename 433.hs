-- project euler: problem 433 (http://projecteuler.net/problem=433)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List

s = 1000

euc (x, y) = euc' (x, y) 0
  where euc' (x, y) n = if y == 0 then n else euc' (y, x `mod` y) (n + 1)

eucs = foldl' (\a (m, n) -> a + (s `div` m) * (euc (m, n) + euc (n, m))) 0

rels (m, n) = (s `div` m) * (euc (m, n) + euc (n, m)) +
  (if 2 * m - n <= s then rels (2 * m - n, m) else 0) +
  (if 2 * m + n <= s then rels (2 * m + n, m) else 0) +
  (if m + 2 * n <= s then rels (m + 2 * n, n) else 0)

gen l = concat [ filter (/= (0, 0)) [g1, g2, g3]
               | (m, n) <- l
               , let g1 = if 2 * m - n <= s then (2 * m - n, m) else (0, 0)
               , let g2 = if 2 * m + n <= s then (2 * m + n, m) else (0, 0)
               , let g3 = if m + 2 * n <= s then (m + 2 * n, n) else (0, 0) ]

main = do
  print $ s +
    (foldl' (\a l -> a + eucs l) 0 $ takeWhile (/= []) $ iterate (gen) [(2, 1)]) +
    (foldl' (\a l -> a + eucs l) 0 $ takeWhile (/= []) $ iterate (gen) [(3, 1)])
  --print $ foldl1' (+) [ euclid x y | x <- [1 .. 100], y <- [1 .. 100] ]

-- answer: 
-- runtime: 