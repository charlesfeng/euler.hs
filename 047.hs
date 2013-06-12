-- project euler: problem 47 (http://projecteuler.net/problem=47)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.IntSet (fromList, toList)
import Data.List
import Primes
import Factor

ps  = primes 150000
nf  = [ (x, length $ (toList . fromList) $ pfactor' x ps) | x <- [2 ..] ]
nff = zipWith4 (\a b c d -> (fst a, snd a == 4 && snd b == 4 && snd c == 4 && snd d == 4)) nf (drop 1 nf) (drop 2 nf) (drop 3 nf)

main = do
  print $ fst $ head $ dropWhile (\a -> snd a == False) nff

-- answer: 134043
-- runtime: 6.5s