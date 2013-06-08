-- project euler: problem 3 (http://projecteuler.net/problem=3)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

pf n f
  | f * f > n       = [n]
  | n `mod` f == 0  = f : pf (n `div` f) f
  | otherwise       = pf n (f + 1)

main = do
  print $ last $ pf 600851475143 2

-- answer: 6857
-- runtime: 0.2s