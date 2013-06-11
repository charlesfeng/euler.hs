-- project euler: problem 34 (http://projecteuler.net/problem=34)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char

main = do
  print $ sum $ [ x | x <- [10 .. 100000], let y = foldl (\a x -> a + product [1 .. x]) 0 $ map digitToInt . show $ x, x == y ]
  
-- answer: 40730
-- runtime: 0.7s