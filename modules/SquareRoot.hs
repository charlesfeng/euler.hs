-- square root module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module SquareRoot (squareRoot) where
 
squareRoot :: Integral a => a -> a
squareRoot n
  | n == 0    = 0
  | n == 1    = 1
  | otherwise = head . dropWhile (\a -> a ^ 2 > n || (a + 1) ^ 2 <= n) $ nts
      where nts      = iterate nt (squareRoot (n `div` n') * r')
            nt a     = (a + (n `div` a)) `div` 2
            (r', n') = last . takeWhile (\a -> n >= snd a) $ zip (1 : ns) ns
            ns       = iterate (^ 2) 2