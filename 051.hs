-- project euler: problem 51 (http://projecteuler.net/problem=51)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Set (fromList, member)
import Primes

ps  = map (show) $ filter (> 100000) $ primes 999999
sps = fromList ps

main = do
  putStrLn $ fst . head $ filter (\a -> (length $ snd a) > 6) $
    [ (base, gens)
    | base <- filter (\a -> (length $ elemIndices '1' a) > 0) ps
    , pts  <- tail . subsequences $ elemIndices '1' base
    , let spts = fromList pts
    , let gens = [ gen | x <- ['2' .. '9']
                 , let gen = map (\a -> if (fst a) `member` spts then x else snd a) $ zip [0 .. length base - 1] base
                 , gen `member` sps ] ]

-- answer: 121313
-- runtime: 1.4s