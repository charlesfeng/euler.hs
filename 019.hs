-- project euler: problem 19 (http://projecteuler.net/problem=19)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

m = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

s = foldl (\x y -> (x + y) `mod` 7) 1 m

d = foldl inc [s] [ (x, y) | x <- [1901 .. 2000], y <- [0 .. 11] ]
  where inc d a = ((head d) + (m !! y) + (if y == 1 && (x `mod` 100 /= 0 || x `mod` 400 == 0) && x `mod` 4 == 0 then 1 else 0)) `mod` 7 : d
          where x = fst a
                y = snd a

main = do
  print $ foldl (\x y -> if y == 0 then x + 1 else x) 0 (init d)

-- answer: 171
-- runtime: 0.2s