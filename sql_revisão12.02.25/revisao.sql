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

/*Relação de muitos para muitos entre fornecedor e pedidos*/
CREATE TABLE livro (
    id_livro INT(11) NOT NULL PRIMARY KEY,
    genero VARCHAR(100) NOT NULL,
    titulo VARCHAR(300) NOT NULL,
    autor VARCHAR(200) NOT NULL  
);

CREATE TABLE fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornecedor VARCHAR(100) NOT NULL,
    contato VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email_funcionario VARCHAR(150) NOT NULL
);

CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_fornecedor INT NOT NULL,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
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


