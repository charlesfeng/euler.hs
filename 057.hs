-- project euler: problem 57 (http://projecteuler.net/problem=57)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Ratio

main = do
  print $ length $
    filter (\a -> (length . show . numerator) a > (length . show . denominator) a) $
    tail $ scanl (\a _ -> 1 + 1 / (1 + a)) (1 % 1) [1 .. 1000]

-- answer: 153
-- runtime: 0.4s