
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib 2 = 1
fib 3 = 2
fib 4 = 3
fib 5 = 5
fib 6 = 8
fib 7 = 13
fib 8 = 21
fib 9 = 34
fib 10 = 55
fib 11 = 89
fib 12 = 144
fib 30 = 832040
fib 34 = 5702887 
fib 38 = 39088169
fib 39 = 63245986
fib 40 = 102334155
fib 41 = 165580141
fib 42 = 267914296
fib n = fib (n-2) + fib (n-1)


pL :: Char -> String
pL 'a' = "a"
pL 'b' = "bob"
pL 'c' = "coc"
pL 'd' = "dod"
pL 'e' = "e"
pL 'f' = "fof"
pL 'g' = "gog"
pL 'h' = "hoh"
pL 'i' = "i"
pL 'j' = "joj"
pL 'k' = "kok"
pL 'l' = "lol"
pL 'm' = "mom"
pL 'n' = "non"
pL 'o' = "o"
pL 'p' = "pop"
pL 'q' = "qoq"
pL 'r' = "ror"
pL 's' = "sos"
pL 't' = "tot"
pL 'u' = "u"
pL 'v' = "vov"
pL 'w' = "wow"
pL 'x' = "xox"
pL 'y' = "y"
pL 'z' = "zoz"


rovarsprak :: String -> String
rovarsprak "" = ""
