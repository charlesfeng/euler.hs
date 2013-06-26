-- project euler: problem 72 (http://projecteuler.net/problem=72)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Phi
import Primes

main = do
  print $ foldl' (\a x -> a + phi' x ps) 0 [2 .. 1000000]
    where ps = primes 1000000

-- answer: 303963552391
-- runtime: 123.6s