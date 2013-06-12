-- project euler: problem 7 (http://projecteuler.net/problem=7)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Primes

main = do
  print $ primes 120000 !! 10000

-- answer: 104743
-- runtime: 0.3s