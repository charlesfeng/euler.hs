-- project euler: problem 35 (http://projecteuler.net/problem=35)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Set
import Primes

ps    = primes 1000000
pss   = fromList ps

cir x = all (\x -> member x pss) $ rot x
  where rot x = [ (x `mod` p) * 10 ^ (l - r) + (x `div` p) | let l = length . show $ x, r <- [1 .. l], let p = 10 ^ r ]

main = do
  print $ length $ [ x | x <- ps, cir x ]

-- answer: 55
-- runtime: 1.5s