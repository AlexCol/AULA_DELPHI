CREATE TABLE filial (
	fil_codigo integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	fil_razao varchar(100),
	fil_fantasia varchar(100),
	fil_cnpj varchar(18),
	fil_telefone varchar(16)
)
;

SELECT * FROM filial;
DELETE FROM filial;

INSERT INTO filial (
	fil_razao, fil_fantasia, fil_cnpj, fil_telefone
) VALUES (
	'filial 1 do curso delphi + firebird',  'filial 1', '88.903.710/0001-72', '(94) 9 9565-8987'
);

INSERT INTO filial (
	fil_razao, fil_fantasia, fil_cnpj, fil_telefone
) VALUES (
	'filial 2 do curso delphi + firebird',  'filial 2', '08.765.861/0001-72', '(19) 9 8221-4715'
);