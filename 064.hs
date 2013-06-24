-- project euler: problem 64 (http://projecteuler.net/problem=64)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Ratio
import Data.Set (insert, size, empty, member)
import Minus

frac n = frac' empty n 0
  where frac' s b c
          | (a', b', c') `member` s = (size s) - 1
          | otherwise               = frac' (insert (a', b', c') s) b' c'
          where b' = numerator $ (n - c ^ 2) % b
                a' = fst $ last $ takeWhile (\x -> snd x > 0) [ (x, n - (c - x * b') ^ 2) | x <- [1 ..] ]
                c' = b' * a' - c

main = do
  print $ length [ x | x <- [1 .. 10000] `minus` [ y ^ 2 | y <- [1 .. 100] ], odd $ frac x ]
  
-- answer: 1322
-- runtime: 10.7s