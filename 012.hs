-- project euler: problem 12 (http://projecteuler.net/problem=12)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Primes
import Divisors

ps = primes 10000000

main = do
  print $ head $ [ y | x <- [1 ..], let y = x * (x + 1) `div` 2, numDivisors' y ps > 500 ]

-- answer: 76576500
-- runtime: 3.3s