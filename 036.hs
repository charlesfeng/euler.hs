-- project euler: problem 36 (http://projecteuler.net/problem=36)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Numeric
import Data.Char

main = do
  print $ sum $ [ x | x <- [1 .. 999999], let y = show x, let z = b2 x, pal y, pal z ]
  where b2 x  = showIntAtBase 2 intToDigit x ""
        pal x = x == reverse x

-- answer: 872187
-- runtime: 1.5s