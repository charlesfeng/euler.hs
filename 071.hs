-- project euler: problem 71 (http://projecteuler.net/problem=71)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Ord
import Data.Ratio

main = do
  print $ numerator . fst . minimumBy (comparing snd) $ [ (y % x, 3 % 7 - y % x) | x <- [8 .. 1000000], let y = (if x `mod` 7 == 0 then x - 1 else x) * 3 `div` 7 ]

-- answer: 428570
-- runtime: 6.2s