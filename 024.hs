-- project euler: problem 24 (http://projecteuler.net/problem=24)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char

perm n ds
  | length ds == 1  = [intToDigit . head $ ds]
  | otherwise       = [intToDigit $ ds !! i] ++ perm (n - i * p) (let (x, y) = splitAt i ds in x ++ (tail y))
                        where p = product [1 .. length ds - 1]
                              i = (n - 1) `div` p

main = do
  putStrLn $ perm 1000000 [0 .. 9]

-- answer: 2783915460
-- runtime: 0.2s