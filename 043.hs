-- project euler: problem 43 (http://projecteuler.net/problem=43)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Primes

ps = primes 20

main = do
  print $ sum $
    [ read n :: Int 
    | n <- filter (\a -> head a /= '0') $ permutations "0123456789"
    , all (\a -> fst a `mod` snd a == 0) $ zip [ read $ (take 3 $ drop i n) :: Int | i <- [1 .. 7] ] ps ]

-- answer: 16695334890
-- runtime: 44.3s