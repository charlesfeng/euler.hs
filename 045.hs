-- project euler: problem 55 (http://projecteuler.net/problem=55)

-- (c) 2013 charles feng (https://github.com/charlesfeng)
-- shared under the mit license (http://www.opensource.org/licenses/mit)

ph l m n
  | t == p && p == h  = t
  | t <= p && t <= h  = ph (l + 1)  m       n
  | p <= t && p <= h  = ph  l      (m + 1)  n
  | h <= t && h <= p  = ph  l       m      (n + 1)
  where t = l * (l + 1) `div` 2
        p = m * (3 * m - 1) `div` 2
        h = n * (2 * n - 1)

main = do
  print $ ph 286 166 144

-- answer: 1533776805
-- runtime: 0.7s