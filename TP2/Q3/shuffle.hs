shuffle(n1,n2)
  | n1 == 1 = n2+1
  | n2 == 1 = n1+1
  | ((n1>1) && (n2>1)) = shuffle(n1-1,n2)+shuffle(n1,n2-1)

shuffle3(n1,n2,n3)
  | n1 == 1 = shuffle(n2,n3)*(n2+n3+1)
  | n2 == 1 = shuffle(n1,n3)*(n1+n3+1)
  | n3 == 1 = shuffle(n1,n2)*(n1+n2+1)
  |((n1>1) && (n2>1) && (n3>1)) = shuffle3(n1-1,n2,n3)+shuffle3(n1,n2-1,n3)+shuffle3(n1,n2,n3-1)
