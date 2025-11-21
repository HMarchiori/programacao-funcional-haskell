-- Defina uma função recursiva 
-- euclid :: Int -> Int -> Int 
-- que implementa o Algoritmo de Euclides
-- para calcular o máximo divisor comum (MDC) entre dois números
-- inteiros não negativos.


euclid :: Int -> Int -> Int
euclid a 0 = a
euclid a b = euclid b (a `mod` b)



-- jeito de força bruta que inventei de fazer kkkkkkkk
-- nem um pouco eficiente!

generateDiv :: Int -> [Int]
generateDiv a = [b | b <- [1..a], a `mod` b == 0]

euclidHard :: Int -> Int -> Int
euclidHard a b = maximum commonDivs
  where
    divA       = generateDiv a
    divB       = generateDiv b
    commonDivs = [d | d <- divA, d `elem` divB]