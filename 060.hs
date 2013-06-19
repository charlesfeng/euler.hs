-- project euler: problem 60 (http://projecteuler.net/problem=60)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Array
import Data.Set (fromList, toList, member, intersection)
import Primes

ps  = tail $ primes 10000
aps = listArray (0, length ps - 1) ps
sps = fromList ps

pairs = 
  map (fromList) $
    [ map (snd) $ filter (fst) $
      [ (isP pa && isP pb, y)
      | y <- [x + 1 .. length ps - 1]
      , let py = aps ! y
      , let pa = (read $ (show px ++ show py) :: Int)
      , let pb = (read $ (show py ++ show px) :: Int) ]
    | x <- [0 .. length ps - 2]
    , let px = aps ! x ]
  where
    isP n
      | n <= 10000 = n `member` sps
      | otherwise  = (isPrimeMR n (n * 2 `div` 3)) && (isPrimeMR n (n * 3 `div` 4))

apairs = listArray (0, length pairs - 1) pairs

main = do
  print $ sum $ map (\x -> aps ! x) $ head $
    [ [a, b, c, d, e]
    | a <- [0 .. length pairs - 1]
    , b <- toList $ apairs ! a
    , c <- toList $ (apairs ! a) `intersection` (apairs ! b)
    , d <- toList $ ((apairs ! a) `intersection` (apairs ! b)) `intersection` (apairs ! c)
    , e <- toList $ (((apairs ! a) `intersection` (apairs ! b)) `intersection` (apairs ! c)) `intersection` (apairs ! d) ]

-- answer: 26033
-- runtime: 33.9s