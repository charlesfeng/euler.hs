-- project euler: problem 58 (http://projecteuler.net/problem=58)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Ratio
import Primes

ps = primes 30000

main = do
  print $ fst $ head . dropWhile (\a -> snd a >= 1 % 10) $
    map (\a -> (fst a, (fst . snd) a % (snd . snd) a)) $ tail $
    scanl (\a b -> (fst b, ((fst . snd $ a) + (length $
      filter (\b -> (isPrimeMR b (b * 2 `div` 3)) && (isPrimeMR b (b * 3 `div` 4))) (snd b)),
      (snd . snd) a + (length . snd) b))) (0, (0, 1)) $
    [ (y, d) | x <- [1 ..], let y = 2 * x + 1, let d = [ y ^ 2 - z * y + z | z <- [3, 2 .. 0] ] ]

-- answer: 26241
-- runtime: 6.7s