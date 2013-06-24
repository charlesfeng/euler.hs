-- project euler: problem 29 (http://projecteuler.net/problem=29)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Set (fromList, size)

main = do
  print $ (size . fromList) [ a ^ b | a <- [2 .. 100], b <- [2 .. 100] ]

-- answer: 9183
-- runtime: 0.2s