CREATE TABLE cientista (
    codigo  INT
        CONSTRAINT pk_codigo_cientista PRIMARY KEY,
    nome    VARCHAR(50)
        CONSTRAINT nn_nome_cientista NOT NULL,
    dt_nasc DATE,
    sexo    CHAR
);

ALTER TABLE cientista
    ADD CHECK ( sexo IN ( 'M', 'F' ) );

INSERT INTO cientista (
    codigo,
    nome,
    dt_nasc,
    sexo
) VALUES (
    1010,
    'stephen hawking',
    '08/01/1942',
    'M'
);

INSERT INTO cientista (
    codigo,
    nome,
    dt_nasc,
    sexo
) VALUES (
    1011,
    'Albert Einsten',
    '14/03/1879',
    'M'
);

INSERT INTO cientista (
    codigo,
    nome,
    dt_nasc,
    sexo
) VALUES (
    1012,
    'Isaac Newton',
    '04/01/1643',
    'M'
);

INSERT INTO cientista (
    codigo,
    nome,
    dt_nasc,
    sexo
) VALUES (
    1013,
    'Galileu Galilei',
    '15/02/1564',
    'M'
);

INSERT INTO cientista (
    codigo,
    nome,
    dt_nasc,
    sexo
) VALUES (
    1014,
    'Nicolau Copernico',
    '19/02/1473',
    'M'
);

SELECT
    *
FROM
    cientista;

commit



commit

--Ex2
alter table cientista add 
dt_obto date ;



update cientista set dt_obto='14/03/2018' where codigo=1010;
update cientista set dt_obto='18/04/1955' where codigo=1011;
update cientista set dt_obto='31/03/1727' where codigo=1012;
update cientista set dt_obto='08/01/1642' where codigo=1013;
update cientista set dt_obto='24/05/1543' where codigo=1014;

select * from cientista;
commit;

update cientista set nome='Eisten' where codigo = '1011';
update cientista set nome='Newton' where codigo = '1012'; commit
DELETE FROM cientista
WHERE
    EXTRACT(MONTH FROM dt_nasc) = '02';

alter session set nls_date_format ='dd,mm,RRRR';
alter session set nls_language = 'portuguese';

--Bug do milenium 02/02/75
--                02/02/00

select data_type from user_tab_columns where table_name = 'cientista'


-- Desafios Aula 4

-- desafio 01

create table cliente(
codigo int constraint pk_codigo_cliente primary key,
nome varchar(50) constraint nn_nome_cliente not null );


INSERT INTO cliente (codigo, nome)
SELECT codigo, nome
FROM cientista;

commit;

-- desafio 02

alter table cliente
add dt_nasc date;

select*from cientista;
select*from cliente;

-- desafio perguntar  pag 34

update cliente set cleinte(dt_nasc) = cientista(dt_nasc)
select cientista.dt_nasc,cliente.dt_nasc from cientista,cliente
where cientista.codigo = cliente.codigo;








