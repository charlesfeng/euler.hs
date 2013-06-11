-- project euler: problem 30 (http://projecteuler.net/problem=30)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char

main = do
  print $ sum $ [ x | x <- [2 .. 999999], let y = foldl (\a b -> a + b ^ 5) 0 (map digitToInt . show $ x), y == x ]

-- answer: 443839
-- runtime: 8.2s