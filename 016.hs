-- project euler: problem 16 (http://projecteuler.net/problem=16)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char

main = do
  print $ sum . map digitToInt . show $ 2 ^ 1000

-- answer: 1366
-- runtime: 0.2s