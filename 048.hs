-- project euler: problem 48 (http://projecteuler.net/problem=48)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Mod

main = do
  print $ (sum [ modPow x x 10000000000 | x <- [1 .. 1000] ]) `mod` 10000000000

-- answer: 9110846700
-- runtime: 0.2s