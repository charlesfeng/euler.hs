-- project euler: problem 65 (http://projecteuler.net/problem=65)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Ratio
import Data.Char

main = do
  print $ sum $ map (digitToInt) $ show $ numerator $ 2 + (recip $ foldl (\a x -> (x % 1) + (recip a)) (head frac % 1) (tail frac))
  where frac = map (toInteger) $ reverse $ (concat [ [1, 2 * x, 1] | x <- [1 .. 33] ]) ++ [1]

-- answer: 255
-- runtime: 0.2s