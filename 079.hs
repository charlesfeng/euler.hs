-- project euler: problem 79 (http://projecteuler.net/problem=79)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List (nub, sort, foldl1', permutations, elemIndex)
import Data.Set (fromList, toList, union)

ts = nub $ sort $ map (show) [319, 680, 180, 690, 129, 620, 762, 689, 762, 318, 368, 710, 720, 710, 629, 168, 160, 689, 716, 731, 736, 729, 316, 729, 729, 710, 769, 290, 719, 680, 318, 389, 162, 289, 162, 718, 729, 319, 790, 680, 890, 362, 319, 760, 316, 729, 380, 319, 728, 716]

main = do
  putStrLn $ head $
    filter (\a -> all (\t -> elemIndex (t !! 0) a < elemIndex (t !! 1) a && elemIndex (t !! 1) a < elemIndex (t !! 2) a) ts) $
    permutations $ toList . foldl1' (\a x -> a `union` x) . map (fromList) $ ts

-- answer: 73162890
-- runtime: 0.2s