-- 2) Mostre que a função currificada a seguir pode ser formalizada 
-- através de expressõeslambda:
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant lambda" #-}

mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z


-- Int -> (Int -> (Int -> Int))
-- Se colocar parênteses ou não, dá na mesma
-- Lembrar que o último valor é sempre o retorno da função
multLambda :: Int -> Int -> Int -> Int
multLambda = \x -> \y -> \z -> x * y * z
