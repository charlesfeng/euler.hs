-- project euler: problem 17 (http://projecteuler.net/problem=)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

o = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4]
n = [3, 6, 6, 8, 8, 7, 7, 9, 8, 8]
t = [6, 6, 5, 5, 5, 7, 6, 6]

so = foldl (+) 0 o
sn = foldl (+) 0 n
st = foldl (\x y -> x + 10 * y + so) 0 t
sh = foldl (\x y -> x + (if y /= 0 then (y + 7) * 100 + 3 * 99 else 0) + so + sn + st) 0 o

main = do print $ sh + 11
  
-- answer: 21124
-- runtime: 0.3s