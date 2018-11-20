equal (w,x,y,z) = w==x && x==y && y==z

max2(a,b) = if b>a then b else a
min2(a,b) = if b>a then a else b
maxi(a,b,c,d)= max2(max2(a,b),max2(c,d))
mini(a,b,c,d)= min2(min2(a,b), min2(c,d))
far(a,b,c,d) =
  let distmax = abs(maxi(a,b,c,d) - mini(a,b,c,d))
  let eloigne
    | abs(a-b)==distmax = min2(a,b)
    | abs(a-c)== distmax = min2(a,c)
    | abs(a-d)== distmax = min2(a,d)
    | abs(b-c)== distmax = min2(b,c)
    | abs(b-d)== distmax = min2(b,d)
    | abs(c-d)== distmax = min2(c,d))
  eturn eloigne




main = do
  let res = equal(7,7,7,7)
  print $ "Test " ++ show(res)
  print $ maxi(4,3,2,1)
  print $ far(1,2,3,4)
