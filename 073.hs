-- project euler: problem 73 (http://projecteuler.net/problem=73)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

main = do
  print $ length $ [ (y, x) | x <- [4 .. 12000], y <- [ceiling $ (fromIntegral x :: Float) / (fromIntegral 3 :: Float) .. x `div` 2], gcd x y == 1 ]

-- answer: 7295372
-- runtime: 13.7s