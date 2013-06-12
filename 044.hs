-- project euler: problem 44 (http://projecteuler.net/problem=44)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Set
import Perms

main = do
  print $ minimum [ y - x | x <- pl, y <- pl, x < y, (y + x) `member` ps, (y - x) `member` ps ]
  where pl = [ x * (3 * x - 1) `div` 2 | x <- [1 .. 3000] ]
        ps = fromList pl

-- answer: 5482660
-- runtime: 5.2s