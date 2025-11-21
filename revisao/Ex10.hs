-- Considere a seguinte definição de árvore com dados somente nas folhas:
-- data Tree = Leaf Int | Node Tree Tree deriving (Show)
-- Construa as seguintes funções:

data Tree = Leaf Int | Node Tree Tree deriving (Show)

--      Node
--     /    \
--  Leaf 3  Node
--          /  \
--      Leaf 1 Leaf 9

-- leaves :: Tree -> [Int] que retorna uma lista contendo os valores que estão nas folhas da árvore.

-- Se chegar numa folha, acrescenta o valor dela na lista
-- Se for um galho, procurar em suas duas ramificações
leaves :: Tree -> [Int]
leaves (Leaf n)     = [n]
leaves (Node l r)   = leaves l ++ leaves r

-- size :: Tree -> Int que retorna o número de folhas da árvore.
size :: Tree -> Int
size (Leaf _)   = 1
size (Node l r) = size l + size r  

-- balanced :: Tree -> Bool que decide se a árvore é balanceada ou não, ou seja, se ambas
-- subárvores diferem no número de folhas em no máximo uma unidade e são balanceadas
balanced :: Tree -> Bool
balanced (Leaf _)   = True
balanced (Node l r) = 
    abs(size l - size r) <= 1
    && balanced l
    && balanced r