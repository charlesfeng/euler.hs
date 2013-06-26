-- fibonacci module

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

module Fibonacci (fib, fibTuple) where

fib :: [Int]
fib = 1 : 2 : zipWith (+) fib (tail fib)

fibTuple :: [(Int, Int)]
fibTuple = zip [1 .. ] fib