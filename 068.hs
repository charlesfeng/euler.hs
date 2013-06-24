-- project euler: problem 68 (http://projecteuler.net/problem=68)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List

main = do
  putStrLn $ maximum $ [ r | x <- permutations [1 .. 10], ring x, let r = string x, length r == 16 ]
  where 
    r1 x     = [x !! 0, x !! 5, x !! 6]
    r2 x     = [x !! 1, x !! 6, x !! 7]
    r3 x     = [x !! 2, x !! 7, x !! 8]
    r4 x     = [x !! 3, x !! 8, x !! 9]
    r5 x     = [x !! 4, x !! 9, x !! 5]
    ring x   = (x !! 0 < x !! 1) && (x !! 0 < x !! 2) && (x !! 0 < x !! 3) && (x !! 0 < x !! 4) &&
               (sum $ r1 x) == (sum $ r2 x) && (sum $ r2 x) == (sum $ r3 x) && (sum $ r3 x) == (sum $ r4 x) && (sum $ r4 x) == (sum $ r5 x)
    string x = foldl (\a b -> a ++ show b) [] $ (r1 x) ++ (r2 x) ++ (r3 x) ++ (r4 x) ++ (r5 x)

-- answer: 6531031914842725
-- runtime: 10.4s