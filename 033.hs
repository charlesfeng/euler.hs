-- project euler: problem 33 (http://projecteuler.net/problem=33)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Ratio

main = do
  print $ denominator $ foldl (\p [a, b, c, d] -> p * (a % b)) 1 $ filter (cur) $ concat $
    [ [ [10 * a + b, 10 * b + c, a, c]
      , [10 * b + a, 10 * b + c, a, c]
      , [10 * a + b, 10 * c + b, a, c]
      , [10 * b + a, 10 * c + b, a, c] ]
    | a <- [1 .. 9], b <- [1 .. 9], c <- [1 .. 9], a /= b, b /= c, a /= c ]
  where cur [a, b, c, d] = a % b == c % d && a % b < 1

-- answer: 100
-- runtime: 0.2s