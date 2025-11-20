-- Através de funções do prelude de Haskell,
-- defina a função halve :: [a] -> ([a],[a])
-- que divide uma lista de tamanho par na metade. Por exemplo:
-- > halve [1,2,3,4,5,6]
-- ([1,2,3],[4,5,6])


halve :: [a] -> ([a],[a])
halve xs = splitAt lhx xs
           where lhx = length xs `div` 2