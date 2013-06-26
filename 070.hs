-- project euler: problem 70 (http://projecteuler.net/problem=70)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Ord
import Data.Ratio
import Data.Array
import Primes

lps = primes 3162
ps  = primes 5000000
sps = listArray (0, length ps - 1) ps

main = do
  print $ fst $ minimumBy (comparing snd) $
    [ (pr, pr % ph)
    | a <- lps
    , b <- takeWhile (<= 10000000 `div` a) $ dropWhile (<= a) ps
    , let pr  = a * b
    , let ph  = (a - 1) * (b - 1)
    , (sort . show) pr == (sort . show) ph ]

-- answer: 8319823
-- runtime: 10.1s