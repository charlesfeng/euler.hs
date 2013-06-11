-- project euler: problem 28 (http://projecteuler.net/problem=28)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

ss n = if n == 1 then 1 else 4 * n ^ 2 - 6 * n + 6

main = do
  print $ sum [ ss x | x <- [1, 3 .. 1001] ]

-- answer: 669171001
-- runtime: 0.2s