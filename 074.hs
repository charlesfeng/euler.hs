-- project euler: problem 74 (http://projecteuler.net/problem=74)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char
import Data.Set (fromList, toList)

link n = sum . map (\a -> product [1 .. digitToInt a]) . show $ n

chain n = length $ last $ takeWhile (\a -> (length . toList . fromList $ a) == length a) [ take x l | x <- [1 ..] ]
  where l = iterate (link) n

main = do
  print $ length $ [ x | x <- [1 .. 999999], chain x == 60 ]

-- answer: 402
-- runtime: 338.7s