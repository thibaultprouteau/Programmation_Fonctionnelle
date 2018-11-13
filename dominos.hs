
-- Dominos --


paire (a,b) (c,d) = a == c || a == d || b == c || b == d


pairing (a,b) (c,d) |a==c = (b,d)| a==d = (b,c)| b==c = (a,d)| b==d = (a,c)

chaine (a,b) (c,d) (e,f)
  |(paire (a,b) (c,d)) == True = paire (pairing (a,b) (c,d)) (e,f)
  |(paire (a,b) (e,f)) == True = paire (pairing (a,b) (e,f)) (c,d)
  |(paire (c,d) (e,f)) ==True = paire (pairing (c,d) (e,f)) (a,b)

main = do
  print $ show( paire (1,2) (2,3))
  print $ show(pairing (1,2) (2,3))
  print $ show(chaine (1,2) (2,4) (1,3))


--------------------------------------------------------------------------------------------------------
