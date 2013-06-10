-- project euler: problem 16 (http://projecteuler.net/problem=16)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

sd n
  | n < 10     = n
  | otherwise  = (n `mod` 10) + sd (n `div` 10)

main = do
  print $ sd $ 2 ^ 1000

-- answer: 1366
-- runtime: 0.3s