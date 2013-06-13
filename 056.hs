-- project euler: problem 56 (http://projecteuler.net/problem=56)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char

main = do
  print $ maximum [ sum . map (digitToInt) . show $ a ^ b | a <- [1 .. 99], b <- [1 .. 99] ]

-- answer: 972
-- runtime: 0.3s