-- project euler: problem 66 (http://projecteuler.net/problem=66)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Ratio
import Data.List
import Data.Ord
import Minus

frac n = frac' [] n 0
  where frac' s b c
          | [a', b', c'] `elem` s = let m = map (!! 0) s in (head m, tail m)
          | otherwise             = frac' (s ++ [[a', b', c']]) b' c'
          where b' = numerator $ (n - c ^ 2) % b
                a' = fst $ last $ takeWhile (\x -> snd x > 0) [ (x, n - (c - x * b') ^ 2) | x <- [1 ..] ]
                c' = b' * a' - c

cont n = [ cont' m | m <- [1 ..] ]
  where f = frac n
        cont' m
          | m == 1    =  fst f % 1
          | otherwise = (fst f % 1) + (recip $ foldl (\a x -> (x % 1) + (recip a)) (head an % 1) (tail an))
          where an = map (toInteger) . reverse . take (m - 1) . cycle . snd $ f

main = do
  print $ fst . maximumBy (comparing snd) $
    [ (d, numerator $ head $ dropWhile (\a -> (numerator a) ^ 2 - d * (denominator a) ^ 2 /= 1) $ cont d)
    | d <- [1 .. 1000] `minus` [ y ^ 2 | y <- [1 .. 31] ] ]

-- answer: 661
-- runtime: 1.0s