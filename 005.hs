-- project euler: problem 5 (http://projecteuler.net/problem=5)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

main = do
  print $ foldl lcm 1 [2 .. 20]

-- answer: 232792560
-- runtime: 0.2s