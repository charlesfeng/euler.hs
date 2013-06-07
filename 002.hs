--project euler: problem 2 (http://projecteuler.net/problem=2)

--(c) 2013 charles feng (https://github.com/charlesfeng)
--shared under the mit license (http://www.opensource.org/licenses/mit)

f = 1 : 2 : zipWith (+) f (tail f)

main = do
  print $ sum $ filter even $ takeWhile (<= 4000000) f

--answer: 4613732
--runtime: 0.2s