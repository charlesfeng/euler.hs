-- project euler: problem 38 (http://projecteuler.net/problem=38)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List

pan n = length c == 9 && (length . nub) c == length c && not ('0' `elem` c)
  where c = foldl (\a x -> a ++ show x) "" n

main = do
  print $ maximum $ [ read $ foldl (\a x -> a ++ show x) "" p :: Int | x <- [1 .. 10000], y <- [1 .. 20], let p = [ x * z | z <- [1 .. y] ], pan p ]

-- answer: 932718654
-- runtime: 2.9s