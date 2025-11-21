-- Defina o tipo Tree do exercício anterior como um membro da classe Functor. Complete a
-- seguinte definição:
-- instance Functor Tree where
-- fmap :: (a -> b) -> Tree a -> Tree b

data Tree a = EmptyTree | Node (Tree a ) a (Tree a)  deriving (Show)

instance Functor Tree where 
    fmap :: (a -> b) -> Tree a -> Tree b
    fmap g EmptyTree = EmptyTree
    fmap g (Node l x r) = Node (fmap g l) (g x) (fmap g r)