-- archive

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

-- from modules/Divisors.hs
-- calculate divisors w/o using subsequences
_divisors :: [Int] -> [Int]
_divisors fs = (toList . fromList . sort) [ foldl (\a b -> if snd b == '1' then a * fs !! fst b else a) 1 z
  | x <- [0 .. 2 ^ (length fs) - 1]
  , let y = showIntAtBase 2 intToDigit x ""
  , let z = zip [0 .. length fs - 1] $ if length y == length fs then y else replicate (length fs - length y) '0' ++ y ]