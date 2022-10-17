module F1 where
import Data.Char

-- 1: fibonacci
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

-- 2: rovarsprak
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

-- 3: medellangd
mening :: String -> String
mening "" = ""
mening a = if isAlpha(head a) == False then ' ' : mening (tail a) else head a : mening (tail a)

medellangd :: String -> Double
medellangd a = (fromIntegral (sum (map length (words (mening a))) ) :: Double) / fromIntegral (length (words (mening a))) :: Double

-- 4: skyffla

varannan :: [a] -> [a]
varannan [] = []
varannan a = a !! 0 : varannan ( (drop 2) a)


skyffla :: [a] -> [a]
skyffla [] = []
skyffla a = (varannan a) ++ (varannan (tail (a) ) )
