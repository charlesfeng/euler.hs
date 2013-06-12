-- project euler: problem 23 (http://projecteuler.net/problem=23)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.IntSet (toList, fromList)
import Primes
import Divisors

ps   = primes 28123
ab   = filter (\x -> x < sumProperDivisors' x ps) [2 .. 28122]
sums = [ x + y | x <- ab, y <- ab, x <= y, x + y <= 28123 ]

main = do
  print $ (28123 * 28124 `div` 2) - (sum . toList . fromList) sums

-- answer: 4179871
-- runtime: 28.8