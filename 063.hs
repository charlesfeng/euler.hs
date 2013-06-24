-- project euler: problem 63 (http://projecteuler.net/problem=63)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

main = do
  print $ 1 + (length . concat) [ map (snd) $
    takeWhile (\a -> (length . show . snd $ a) == (fst a)) [ (n, x ^ n) | n <- [1 ..] ] | x <- [2 .. 9] ]

-- answer: 49
-- runtime: 0.2s