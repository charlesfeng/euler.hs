-- minus module for sorted lists

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Minus
( minus
) where
  
minus (x : xs) (y : ys) = case (compare x y) of 
  LT -> x : minus xs       (y : ys)
  EQ ->     minus xs       ys
  GT ->     minus (x : xs) ys

minus xs       _        = xs