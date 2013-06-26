-- project euler: problem 69 (http://projecteuler.net/problem=69)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Primes

main = do
  print $ last . takeWhile (< 1000000) . scanl1 (*) $ primes 1000000

-- answer: 510510
-- runtime: 0.6s