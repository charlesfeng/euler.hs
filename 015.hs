-- project euler: problem 15 (http://projecteuler.net/problem=15)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

fs = scanl1 (*) [1 ..]

main = do
  print $ fs !! 39 `div` (fs !! 19) ^ 2

-- answer: 137846528820
-- runtime: 0.3s