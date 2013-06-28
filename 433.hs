-- project euler: problem 433 (http://projecteuler.net/problem=433)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Array
import Data.List

s = 10000

euc = (listArray ((0, 0), (s, s)) [ ((x, y), euc' x y) | x <- [0 .. s], y <- [0 .. s] ] !)
  where euc' x y = if y == 0 then 0 else 1 + (snd $ euc (y, x `mod` y))

eucs = foldl' (\a (m, n) -> a + (s `div` m) * ((snd $ euc (m, n)) + (snd $ euc (n, m)))) 0

gen l = concat [ filter (/= (0, 0)) [g1, g2, g3]
               | (m, n) <- l
               , let g1 = if 2 * m - n <= s then (2 * m - n, m) else (0, 0)
               , let g2 = if 2 * m + n <= s then (2 * m + n, m) else (0, 0)
               , let g3 = if m + 2 * n <= s then (m + 2 * n, n) else (0, 0) ]

main = do
  print $ s +
    (foldl' (\a l -> a + eucs l) 0 $ takeWhile (/= []) $ iterate (gen) [(2, 1)]) +
    (foldl' (\a l -> a + eucs l) 0 $ takeWhile (/= []) $ iterate (gen) [(3, 1)])

-- answer: 
-- runtime: 