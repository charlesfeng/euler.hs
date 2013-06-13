-- project euler: problem 55 (http://projecteuler.net/problem=55)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

rsum n = (read $ (reverse . show) n :: Integer) + n
pali n = (reverse . show $ n) == show n
lych n = (length $ dropWhile (\a -> not $ pali a) $ tail $ scanl (\a _ -> rsum a) n [1 .. 51]) == 0

main = do
  print $ sum $ [ 1 | x <- [10 .. 10000], lych x ]

-- answer: 249
-- runtime: 0.6s