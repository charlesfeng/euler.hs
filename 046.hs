-- project euler: problem 46 (http://projecteuler.net/problem=46)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Primes
import Minus

ps  = primes 5999
sqs = [ 2 * x ^ 2 | x <- [1 .. 55] ]

f n = [ (x, y) | x <- ps', y <- sqs', x + y == n ] /= []
  where ps'  = takeWhile (< n) ps
        sqs' = takeWhile (< n) sqs

main = do
  print $ head $ dropWhile (f) $ [9, 11 .. 5999] `minus` ps

-- answer: 5777
-- runtime: 2.7s