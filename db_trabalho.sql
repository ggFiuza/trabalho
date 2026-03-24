
CREATE TABLE tb_time (
                id_time INTEGER NOT NULL,
                nome_time VARCHAR NOT NULL,
                ano_ultimo_titulo INTEGER NOT NULL,
                time_estado VARCHAR NOT NULL,
                num_titulos_nacionais INTEGER NOT NULL,
                num_titulos_estaduais INTEGER NOT NULL,
                data_criacao DATE NOT NULL,
                CONSTRAINT tb_time.pk PRIMARY KEY (id_time)
);


CREATE TABLE tb_jogador (
                id_jogador INTEGER NOT NULL,
                nome_jogador VARCHAR NOT NULL,
                data_nascimento DATE NOT NULL,
                salario FLOAT,
                posicao VARCHAR NOT NULL,
                id_time INTEGER NOT NULL,
                CONSTRAINT tb_jogador PRIMARY KEY (id_jogador)
);


ALTER TABLE tb_jogador ADD CONSTRAINT tb_time_tb_jogador_fk
FOREIGN KEY (id_time)
REFERENCES tb_time (id_time)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
