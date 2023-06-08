# consultando mas mais complexo

# <> diferente, < menor, > maior, = ingual, < menor ingual, > maior ingual

# SELECT * FROM clientes WHERE nomecliente LIKE 
# % = qualquer quantidade de caracteres, antes, depois ou entre a letra
# _ = tem que ter um caractere antes da letra, pode quantos quiser

SELECT vendas.idvenda, vendas.datavenda, 
clientes.nomecliente FROM vendas INNER JOIN cliente # inner join significa que elas estão conectadas
ON vendas.idcliente = clientes.idcliente # on junto comm o inner join faz que não se repita
ORDER BY vendas.idvenda ASC; # ORDER BY fica por ultimo

SELECT v.idveiculo AS codigo, # muda o nome da coluna apenas na visualização não na tabela no banco de dados
v.fabricante 
FROM veiculos AS v;