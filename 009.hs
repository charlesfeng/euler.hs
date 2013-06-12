-- project euler: problem 9 (http://projecteuler.net/problem=9)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Triangles

main = do
  print $ product $ head $ pyTriSum 1000

-- answer: 31875000
-- runtime: 0.3s