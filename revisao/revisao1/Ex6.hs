-- Considere a função padrão replicate 
-- :: Int -> a -> [a] que produz uma lista de
-- valores repetidos. Construa sua própria versão dessa função usando list comprehension.
-- Por exemplo:
-- > replicate 3 True
-- [True,True,True]


replicate2 :: Int -> a -> [a]
replicate2 n x = [x | _ <- [1..n]]