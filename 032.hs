-- project euler: problem 32 (http://projecteuler.net/problem=32)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char
import Data.List

pan a b = length d == 9 && (length . nub) d == length d && not ('0' `elem` d)
  where c = a * b
        d = show a ++ show b ++ show c

main = do
  print $ sum $ nub $
    [ x * y
    | x <- [1 .. 98]
    , y <- [123 .. 4987]
    , pan x y ]

-- answer: 45228
-- runtime: 1.2s