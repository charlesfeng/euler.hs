-- prime factorization module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Factor
( factor
) where
  
factor n f
  | f * f > n       = [n]
  | n `mod` f == 0  = f : factor (n `div` f) f
  | otherwise       = factor n (f + 1)