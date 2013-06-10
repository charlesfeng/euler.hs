-- project euler: problem 14 (http://projecteuler.net/problem=14)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)
  
cz = (map cz' [0 .. ] !!)
  where
    cz' n
      | n == 1          = 1
      | n > 999999      = _cz n
      | n `mod` 2 == 0  = 1 + (cz $ n `div` 2)
      | otherwise       = 1 + (cz $ 3 * n + 1)

_cz n
  | n < 1000000       = cz n
  | n `mod` 2 == 0  = 1 + (_cz $ n `div` 2)
  | otherwise       = 1 + (_cz $ 3 * n + 1)

main = do
  print $ head $ foldl1 (\a b -> if last b > last a then b else a) [ [x, y] | x <- [1 .. 999999], let y = cz x ]

-- answer: 
-- runtime: 