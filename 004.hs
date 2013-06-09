-- project euler: problem 4 (http://projecteuler.net/problem=4)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

main = do
  print $ maximum [ x * y | x <- [999, 998 .. 800], y <- [999, 998 .. 800], show(x * y) == reverse(show(x * y)) ]

-- answer: 906609
-- runtime: 0.3s