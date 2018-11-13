--Orthographe--

oneWord x
  | x == 1 = "un"
  | x == 2 = "deux"
  | x == 3 = "trois"
  | x == 4 = "quatre"
  | x == 5 = "cinq"
  | x == 6 = "six"
  | x == 7 = "sept"
  | x == 8 = "huit"
  | x == 9 = "neuf"
  | x == 10 = "dix"
  | x == 11 = "onze"
  | x == 12 = "douze"
  | x == 13 = "treize"
  | x == 14 = "quatorze"
  | x == 15 = "quinze"
  | x == 16 = "seize"

dizaine x
  | x == 1 = "dix"
  | x == 2 = "vingt"
  | x == 3 = "trente"
  | x == 4 = "quarante"
  | x == 5 = "cinquante"
  | x == 6 = "soixante"
  | x == 8 = "quatre-vingt"

ecriture x
  | x <=16 = oneWord x
  | x/10 == 8 = (dizaine (x/10))+"s"
  | x%10 == 0 = dizaine x
  | (x%10 == 1 &&
