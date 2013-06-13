-- project euler: problem 49 (http://projecteuler.net/problem=49)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Set (fromList, toList, intersection)
import Primes
import Perms

main = do
  putStrLn $ last $
    [ (show $ n !! x) ++ (show $ n !! y) ++ (show $ n !! z)
    | n <- lps
    , x <- [0 .. length n - 3]
    , y <- [x + 1 .. length n - 2]
    , z <- [y + 1 .. length n - 1]
    , n !! z - n !! y == n !! y - n !! x ]
    where ps  = filter (>= 1000) $ primes 9999
          sps = fromList ps
          lps = filter (\a -> length a > 2) $ nub [ sort $ toList $ sps `intersection` (fromList . filter (> 1000) . map (\a -> read a :: Int) . (perms 4) . show) x | x <- ps ]

-- answer: 296962999629
-- runtime: 0.6s