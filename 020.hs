-- project euler: problem 20 (http://projecteuler.net/problem=20)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char

main = do
  print $ sum . map digitToInt . show . product $ [1 .. 100]

-- answer: 648
-- runtime: 0.3s