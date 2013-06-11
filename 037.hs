-- project euler: problem 37 (http://projecteuler.net/problem=37)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

import Data.Set (fromList, member)
import Primes

ps  = map (show) $ primes 1000000
pss = fromList ps

cir x = all (\x -> member x pss) $ lr x ++ rr x
  where lr x = [ drop r $ x | r <- [0 .. length x - 1] ]
        rr x = [ reverse $ drop r $ reverse x | r <- [0 .. length x - 1] ]

main = do
  print $ sum [ read x | x <- drop 4 ps, cir x ]

-- answer: 748317
-- runtime: 11.4s