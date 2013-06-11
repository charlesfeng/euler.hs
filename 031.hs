-- project euler: problem 31 (http://projecteuler.net/problem=31)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

ss ns n = s `div` n
  where s = 200 - foldl (\a x -> a + fst x * snd x) 0 ns

main = do
  print $ length $
    [ (n1, n2, n5, n10, n20, n50, n100, n200)
    | n200 <- [0 .. 1]
    , n100 <- [0 .. ss [(200, n200)] 100]
    , n50 <- [0 .. ss [(200, n200), (100, n100)] 50]
    , n20 <- [0 .. ss [(200, n200), (100, n100), (50, n50)] 20]
    , n10 <- [0 .. ss [(200, n200), (100, n100), (50, n50), (20, n20)] 10]
    , n5 <- [0 .. ss [(200, n200), (100, n100), (50, n50), (20, n20), (10, n10)] 5]
    , n2 <- [0 .. ss [(200, n200), (100, n100), (50, n50), (20, n20), (10, n10), (5, n5)] 2]
    , let n1 = ss [(200, n200), (100, n100), (50, n50), (20, n20), (10, n10), (5, n5), (2, n2)] 1 ]

-- answer: 73682
-- runtime: 0.2s