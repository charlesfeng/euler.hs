-- project euler: problem 75 (http://projecteuler.net/problem=75)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Triangles

main = do
  print $ length . filter (\a -> length a == 1) . group . sort . concat .
    map (\a -> let s = sum a in [ b * s | b <- [1 .. 1500000 `div` s] ]) .
    takeWhile (\a -> sum a <= 3000000) $ pyTris

-- answer: 161667
-- runtime: 4.9s