-- project euler: problem 1 (http://projecteuler.net/problem=1)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

main = do
  print $ sum $ [ x | x <- [1 .. 999], x `mod` 3 == 0 || x `mod` 5 == 0 ]

-- answer: 233168
-- runtime: 0.2s