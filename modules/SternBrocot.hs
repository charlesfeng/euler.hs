-- stern-brocot module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module SternBrocot (stern, halfStern) where

stern :: Int -> [(Int, Int)]
stern n = init $ tail $ iterate (_stern) [(0, 1), (1, 0)] !! n

halfStern :: Int -> [(Int, Int)]
halfStern n = init $ tail $ iterate (_stern) [(0, 1), (1, 1)] !! n

_stern :: [(Int, Int)] -> [(Int, Int)]
_stern l = (concat $ map (\a -> [fst a, ((fst . fst) a + (fst . snd) a, (snd . fst) a + (snd . snd) a)]) $ zip l (drop 1 l)) ++ [last l]