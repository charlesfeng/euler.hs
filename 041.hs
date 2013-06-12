-- project euler: problem 41 (http://projecteuler.net/problem=41)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Char
import Primes

ps = primes 31427

main = do
  putStrLn $ head $ dropWhile (\a -> not $ isPrime' (read a) ps) $ 
    (reverse . sort . concat) [ y | x <- ['1' .. '9'], let y = filter (\a -> (odd . digitToInt . last) a) $ permutations ['1' .. x] ]

-- answer: 7652413
-- runtime: 1.7s