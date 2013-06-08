-- project euler: problem 9 (http://projecteuler.net/problem=9)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

main = do
  print $ product $ head $ [[a, b, 1000 - a - b] | a <- [1 .. 998], b <- [a .. 999 - a], a ^ 2 + b ^ 2 == (1000 - a - b) ^ 2]

-- answer: 31875000
-- runtime: 1.0s