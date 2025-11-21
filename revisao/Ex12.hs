-- Dado o seguinte tipo para expressões aritméticas que possuem variáveis de um tipo a:
-- data Expr a = Var a | Val Int | Add (Expr a) (Expr a) deriving (Show)
-- a) Mostre como tornar o tipo Expr um membro das classes Functor, Aplicative e Monad.
-- b) Com a ajuda de um exemplo, explique qual o significado do operador (>>=) sobre esse tipo.

data Expr a = Var a | Val Int | Add (Expr a) (Expr a) deriving (Show)

instance Functor Expr where
    fmap :: (a -> b) -> Expr a -> Expr b
    fmap f (Var x)     = Var (f x)        
    fmap f (Val n)     = Val n            
    fmap f (Add e1 e2) = Add (fmap f e1) (fmap f e2) 

    