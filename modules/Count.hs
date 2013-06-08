-- count module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Count (count) where
  
count x (y : ys)
  | x == y     = 1 + (count x ys)
  | otherwise  = count x ys

count x [] = 0