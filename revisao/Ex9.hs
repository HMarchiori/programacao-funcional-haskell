-- Escreva um programa em Haskell que lê do console um valor inteiro e informa se ele é ou
-- não um número Armstrong. Um número Armstrong é um número cuja soma de seus dígitos
-- elevados à quantidade de dígitos do número resulta no próprio número. Por exemplo:
-- • 9 é um número Armstrong, pois 91 = 9.
-- • 10 não é um número Armstrong, pois 12 + 02 ≠ 10.
-- • 153 é um número Armstrong, pois 13 + 53 + 33 = 153.


-- Como podemos ver, a potência do cálculo do armstrong corresponde ao length + 1
-- Ideia que tenho: usar um gerador 

-- criei este auxiliar para devolver os digitos para auxiliar o cálculo
digits :: Int -> [Int]
digits n = map (\c -> read [c]) (show n)


-- comparamos se bate com o valor
armstrong :: Int -> Bool
armstrong a = calcularArm a == a

-- pegamos os dígitos e fazemos a lógica
calcularArm :: Int -> Int 
calcularArm a = sum[d^n | d <- digits a]
            where
                n = length (digits a)



