-- project euler: problem  (http://projecteuler.net/problem=)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Primes

main = do
  print $ sum $ primes 2000000

-- answer: 142913828922
-- runtime: 47.6s