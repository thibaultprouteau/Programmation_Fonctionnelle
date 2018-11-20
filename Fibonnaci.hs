module Fibonnaci where
  fibo1(n)
    | n == 0 = 0
    | n == 1 = 1
    | n > 1 = fibo1(n-1)+fibo1(n-2)

  fibo2(n,a,b)
    | n == 0 = a
    | n >0 = fibo2(n-1,b,a+b)
