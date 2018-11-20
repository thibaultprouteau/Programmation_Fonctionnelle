fac1(n)
  |n == 0 = 1
  |n == 1 = 1
  |n > 0 = n*fac1(n-1)

fac1_cpt(n)
  | n == 0 = 1
  | n>0 = 1+fac1_cpt(n-1)

fac2(n,t)
  | n == 0 = t
  | n>0 = fac2(n-1,n*t)

fac2_cpt(n,t)
  | n == 0 = t
  | n>0 = fac2_cpt(n-1,t+1)

fibo1(n)
  | n == 0 = 0
  | n == 1 = 1
  | n > 1 = fibo1(n-1)+fibo1(n-2)

fibo2(n,a,b)
  | n == 0 = a
  | n > 0 = fibo2(n-1,b,a+b)


pow2_test(a,n)
  | a > n = pow2_test(a,(n*2))
  | a < n = False
  | a == n = True
