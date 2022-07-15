desc db_funcionario;
--1
select NM_FUNCIONARIO,DT_CADASTRAMENTO from db_funcionario ;
--2
select NM_FUNCIONARIO,VL_SALARIO_BRUTO,( VL_SALARIO_BRUTO  * .05) as "ProjecaoAumento5per",( VL_SALARIO_BRUTO  * .08) as "ProjecaoAumento8per" 
from db_funcionario;
--3
select NM_CLIENTE,QT_ESTRELAS from db_cliente;
--4
select DS_PRODUTO,VL_UNITARIO from db_produto;
--1 Condicionais
select NM_CLIENTE,QT_ESTRELAS from db_cliente where QT_ESTRELAS >= 4;
--2 
select NM_CLIENTE,QT_ESTRELAS,vl_medio_compra from db_cliente where QT_ESTRELAS >= 3 and vl_medio_compra > 100.00;
--3
select NM_CLIENTE,QT_ESTRELAS from db_cliente where vl_medio_compra > 100.00;
--4
select DS_PRODUTO,VL_UNITARIO from db_produto where VL_UNITARIO > 30.00;
--desafio
--1
select NR_PEDIDO,DT_PEDIDO
from db_pedido
where EXTRACT(MONTH FROM DT_PEDIDO) <= 3
and  EXTRACT(year FROM DT_PEDIDO) = (SELECT  MAX(EXTRACT(YEAR FROM DT_PEDIDO))
                                     FROM db_pedido);
                                     --SubQuery
--2
select NM_FUNCIONARIO,DT_CADASTRAMENTO from db_funcionario
where EXTRACT(MONTH FROM DT_CADASTRAMENTO) >=11 ;
--3
select * from  db_pedido where EXTRACT(year FROM DT_PEDIDO) = 2018;



