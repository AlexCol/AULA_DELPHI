CREATE TABLE endereco (
	end_codigo integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	end_pessoa integer,
	end_cep varchar(15),
	end_cidade varchar(50),
	end_bairro varchar(150),
	end_endereco varchar(150),
	end_numero varchar(10),
	end_observacao varchar(500),
	constraint fk_endereco_pessoa foreign key (end_pessoa) references pessoa(pes_codigo)
);


SELECT * FROM endereco;
DELETE FROM endereco;

INSERT INTO endereco (
	end_pessoa, end_cep, end_cidade, end_endereco, end_numero, end_bairro, end_observacao
) VALUES (
	1, '68.390-000', 'Chapecó', 'Av. Tal', 'bairro tal', '1559e', 'minha observacao'
);