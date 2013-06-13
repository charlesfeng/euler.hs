-- project euler: problem 53 (http://projecteuler.net/problem=53)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

main = do
  print $ length $ [ (n, r) | n <- [23 .. 100], r <- [2 .. n - 1]
                   , let ncr = (product [1 .. n]) `div` ((product [1 .. r]) * (product [1 .. n - r])), ncr > 1000000 ]

-- answer: 4075
-- runtime: 0.2s