-- project euler: problem 62 (http://projecteuler.net/problem=62)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.List
import Data.Array

ps = [ n ^ 3 | n <- [346 .. 10000] ]
as = listArray (0, length ps - 1) ps

main = do
  print $ fst $ head $
    filter (\a -> (length . snd $ a) == 4) $
      [ (px, [ py | y <- [x + 1 .. length ps - 1]
             , let py = as ! y
             , let sy = sort . show $ py
             , sx == sy ])
      | x <- [0 .. length ps - 2]
      , let px = as ! x
      , let sx = sort . show $ px ]

-- answer: 127035954683
-- runtime: 85.2s