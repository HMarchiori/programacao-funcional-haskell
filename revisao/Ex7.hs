-- Construa uma função recursiva 
-- multiplic :: Int -> Int -> Int que faz a
-- multiplicação de dois números inteiros não negativos através de somas sucessivas.

multplic :: Int -> Int -> Int
multplic a b | b == 0 = 0
             | a == 0 = 0
             | otherwise = a + multplic a (b-1)