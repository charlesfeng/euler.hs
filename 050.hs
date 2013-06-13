-- project euler: problem 50 (http://projecteuler.net/problem=50)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Array
import Data.Ord
import Data.Set (fromList, member)
import Primes

ps  = primes 50000
sps = fromList $ primes 1000000
ss  = scanl (+) 0 ps
sss = listArray (0, length ss - 1) ss

main = do
  print $ snd $ maximumBy (comparing fst) $ [ (y - x + 1, d) | x <- [0 .. length ss - 2], y <- [x + 1 .. length ss - 1], let d = (sss ! y) - (sss ! x), d < 1000000, d `member` sps ]

-- answer: 997651
-- runtime: 13.7s