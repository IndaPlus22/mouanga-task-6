import Data.Char

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


rovarsprak :: String -> String
rovarsprak "" = ""
rovarsprak a = if elem (head a) "bcdfghjklmnpqrstvwxz" then head a:'o':head a:rovarsprak (tail a) else head a:rovarsprak (tail a)

karpsravor :: String -> String
karpsravor "" = ""
karpsravor a = if elem (head a) "bcdfghjklmnpqrstvwxz" then
													   if length a > 2 then
																	   if head a == a !! 2 && a !! 1 == 'o' then
																											head a : karpsravor (drop 3 a)
																	   else head a : karpsravor (tail a) -- ok, this is the second instance of the now doubled letter
													   else head a : karpsravor (tail a) -- same as above, but now we're also at the end of the list (this part is probably unnecessary)
			   else head a : karpsravor (tail a) -- ok, this is a vowel

-- if head a == a !! 2 && a !! 1 == 'o' then head a: drop 3 (karpsravor a) else head a:karpsravor (tail a) else head a:karpsravor (tail a)


sentence :: String -> String
sentence "" = ""
sentence a = if isAlpha(head a) == False then ' ' : sentence (tail a) else head a : sentence (tail a)

medellangd :: String -> Double
medellangd a = (fromIntegral (sum (map length (words (sentence a))) ) :: Double) / fromIntegral (length (words (sentence a))) :: Double


skyffla :: [a] -> [a]
skyffla [] = []
skyffla a = skyffla' [] 9

skyffla' :: [a] -> Int -> [a]
skyffla' [] 0 = []
skyffla' a 0 = a
skyffla' a b = (head a) : (tail a)

-- Först ta huvudet, sedan droppa 2:an, sedan ta allt som inte droppats, lägg till 2:an i slutet, minska räknaren med 1
