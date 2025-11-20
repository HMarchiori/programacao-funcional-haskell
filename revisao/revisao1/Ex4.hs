-- Defina a função third :: [a] -> a 
-- que contenha no mínimo três elementos usando:


-- As funções head e tail.

thirdA :: [a] -> a
thirdA xs = head (tail (tail xs))
-- O indexador de listas !!.


thirdB :: [a] -> a
thirdB xs = xs !! 2



-- O mecanismo de casamento de padrões

thirdC :: [a] -> a
thirdC (_:_:x:_) = x