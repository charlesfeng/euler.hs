-- project euler: problem 25 (http://projecteuler.net/problem=25)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

f    = 1 : 1 : zipWith (+) f (tail f)
lf n = length $ show $ f !! (n - 1)

main = do
  print $ head $ [ x | x <- [1 ..], let y = lf x, y >= 1000 ]

-- answer: 4782
-- runtime: 0.3s