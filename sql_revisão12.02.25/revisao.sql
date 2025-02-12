CREATE DATABASE biblioteca;
USE biblioteca;
/*Relação de um para um o funcionario e funcionario_salario */
CREATE TABLE funcionario (
    id_funcionario INT(11)  PRIMARY KEY AUTO_INCREMENT,
    nome_funcionario VARCHAR(100) NOT NULL,
    cpf_funcionario INT(11) NOT NULL,
    email_funcionario VARCHAR(150) NOT NULL,
    endereco_funcionario VARCHAR(200) NOT NULL,
    telefone_funcionario VARCHAR(15) NOT NULL
);

create table funcionarios_salarios (
    id_funcionario INT(11)  PRIMARY KEY AUTO_INCREMENT,
    cargo_funcionario VARCHAR(100),
    salario_funcionario INT(100) NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);


CREATE TABLE livro (
    id_livro INT(11) NOT NULL PRIMARY KEY,
    genero VARCHAR(100) NOT NULL,
    titulo VARCHAR(300) NOT NULL,
    autor VARCHAR(200) NOT NULL  
);

/*relaçao de um para muitos: o usuario pode retirar mais de um livro */
CREATE TABLE usuario (
    id_usuario INT(11) NOT NULL PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    email_usuario VARCHAR(100) NOT NULL,
    telefone_usuario VARCHAR(100) NOT NULL,
    endereco_usuario VARCHAR(100) NOT NULL
);

CREATE TABLE retirada (
    id_retirada INT(11) NOT NULL PRIMARY KEY,
    id_usuario INT(11) NOT NULL,
    id_livro INT(11) NOT NULL,
    data_entrega DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);


