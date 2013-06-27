-- project euler: problem 80 (http://projecteuler.net/problem=80)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Char
import Data.Set (fromList, member)
import SquareRoot

main = do
  print $ sum [ sum . map (digitToInt) . take 100 . show $ squareRoot (x * (10 ^ 200)) | x <- irs ]
  where sqs = fromList $ takeWhile (<= 100) [ x ^ 2 | x <- [1 ..] ]
        irs = filter (\a -> not $ a `member` sqs) [1 .. 100]

-- answer: 40886
-- runtime: 0.2s