-- project euler: problem 61 (http://projecteuler.net/problem=61)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Set (fromList, toList)

tr = filter (>= 1000) $ takeWhile (< 10000) [ n * (n + 1) `div` 2     | n <- [0 ..] ]
sq = filter (>= 1000) $ takeWhile (< 10000) [ n * n                   | n <- [0 ..] ]
pe = filter (>= 1000) $ takeWhile (< 10000) [ n * (3 * n - 1) `div` 2 | n <- [0 ..] ]
hx = filter (>= 1000) $ takeWhile (< 10000) [ n * (2 * n - 1)         | n <- [0 ..] ]
he = filter (>= 1000) $ takeWhile (< 10000) [ n * (5 * n - 3) `div` 2 | n <- [0 ..] ]
oc = filter (>= 1000) $ takeWhile (< 10000) [ n * (3 * n - 2)         | n <- [0 ..] ]

an = [sq, pe, hx, he, oc]

rot x y = (drop 2 $ show x) == (take 2 $ show y)

main = do
  print $ sum $ head $ filter (\x -> (length . toList . fromList $ x) == 6) $
    [ [a, b, c, d, e, f]
    | a  <- tr
    , bi <- [0 .. 4]
    , b  <- filter (rot a) $ an !! bi
    , let bn = (take bi an) ++ (drop (bi + 1) an)
    , ci <- [0 .. 3]
    , c  <- filter (rot b) $ bn !! ci
    , let cn = (take ci bn) ++ (drop (ci + 1) bn)
    , di <- [0 .. 2]
    , d  <- filter (rot c) $ cn !! di
    , let dn = (take di cn) ++ (drop (di + 1) cn)
    , ei <- [0 .. 1]
    , e  <- filter (rot d) $ dn !! ei
    , let en = (take ei dn) ++ (drop (ei + 1) dn)
    , f  <- filter (\x -> (rot e x) && (rot x a)) $ en !! 0 ]

-- answer: 28684
-- runtime: 0.6s