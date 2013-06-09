-- prime factorization module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Factor (factor) where
  
factor :: Int -> [Int]
factor n = factor' n 2

factor' :: Int -> Int -> [Int]
factor' n f
  | f * f > n       = [n]
  | n `mod` f == 0  = f : factor' (n `div` f) 2
  | otherwise       = factor' n (f + 1)