-- project euler: problem 69 (http://projecteuler.net/problem=69)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Ord
import Data.Ratio
import Phi
import Primes

ps = primes 1000000

main = do
  print $ fst $ maximumBy (comparing snd) [ (x, x % (phi' x ps)) | x <- [1 .. 1000000] ]

-- answer: 510510
-- runtime: 138.9s