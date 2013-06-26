-- euler totient (phi function) module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Phi (phi, phi') where

import Data.Set (fromList, toList)
import Primes
import Factor
import Perms

phi :: Int -> Int
phi n = phi' n (primes n)

phi' :: Int -> [Int] -> Int
phi' 1 ps = 1
phi' n ps = n - sum [ (if even i then -1 else 1) * n `div` (product j) | i <- [1 .. length pf], j <- combs i pf ]
  where pf = toList . fromList $ pfactor' n ps