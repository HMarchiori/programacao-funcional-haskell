-- Suponha uma matriz de tamanho 𝑚 × 𝑛 
-- seja representada em código por uma lista de pares
-- de inteiros (𝑥, 𝑦) tal que 0 ≤ 𝑥 ≤ 𝑚 e 0 ≤ 𝑦 ≤ 𝑛. 

-- Usando list comprehension, defina uma
-- função matriz :: Int -> Int -> [(Int,Int)] 
-- que retorna esta matriz para um tamanho dado. Por exemplo:
-- matriz 1 2
-- [(0,0),(0,1),(0,2),(1,0),(1,1),(1,2)]


-- Primeiro passo:
-- Uma boa abordagem é o uso de geradores.


matriz :: Int -> Int -> [(Int, Int)]
matriz x y = [(x,y) | x <- [0..x], y <- [0..y]]


