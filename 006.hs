-- project euler: problem 6 (http://projecteuler.net/problem=6)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

main = do
  print $ (sum [1 .. 100]) ^ 2 - foldl (\x y -> x + y * y) 0 [1 .. 100]

-- answer: 25164150
-- runtime: 0.2s