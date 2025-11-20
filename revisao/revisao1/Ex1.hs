-- Fazer exercício 3 (Merge Sort) do material "Recursão sobre Listas"

-- Parâmetros:
-- Ord a =>  : Tipo genérico ordenável
-- [a]       : Lista de elementos do tipo genérico a



-- Primeiro passo:
-- Se a primeira lista acabar, devolve a segunda.
-- Segundo passo:
-- Se a segunda lista acabar, devolve a primeira.
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys         = ys
merge xs []         = xs
-- Terceiro passo:
-- Caso sobrem elementos, comparar heads das duas listas.
merge (x:xs) (y:ys) | x < y     = x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys


-- Dividir uma lista em duas metades
halve :: [a] -> ([a],[a])
halve xs = splitAt lhx xs
           where lhx = length xs `div` 2

-- Merge Sort
msort :: Ord a => [a] -> [a]
-- Se estiver vazia, devolve vazia.
msort []  = []
-- Se tiver apenas um elemento, retorne ele.
msort [x] = [x]
-- Caso contrário, divida a lista em duas metades
-- ordene cada metade e una ambas.
msort  xs = merge (msort left) (msort right)
            where (left,right) = halve xs
