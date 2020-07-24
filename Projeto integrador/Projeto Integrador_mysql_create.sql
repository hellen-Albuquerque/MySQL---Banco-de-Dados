CREATE TABLE `Produto` (
	`id_Produto` bigint(5) NOT NULL AUTO_INCREMENT,
	`nome_Produto` varchar(20) NOT NULL,
	`descricao_Produto` varchar(255) NOT NULL,
	`mes_Produto` varchar(30) NOT NULL,
	`tema_Produto` varchar(30) NOT NULL,
	`categoria_Id` bigint(5) NOT NULL,
	PRIMARY KEY (`id_Produto`)
);

CREATE TABLE `Categoria` (
	`id_Categoria` bigint(5) NOT NULL AUTO_INCREMENT,
	`tipo_Categoria` varchar(20) NOT NULL,
	`quant_Itens` int(2) NOT NULL,
	`valor_Categoria` DECIMAL(5,2) NOT NULL,
	PRIMARY KEY (`id_Categoria`)
);

CREATE TABLE `Usuario` (
	`id_Usuario` bigint(5) NOT NULL AUTO_INCREMENT,
	`nome_Usuario` varchar(20) NOT NULL,
	`sobrenome_Usuario` varchar(20) NOT NULL,
	`email_Usuario` varchar(60) NOT NULL,
	`senha_Usuario` varchar(8) NOT NULL,
	`tipo_Usuario` varchar(8) NOT NULL,
	PRIMARY KEY (`id_Usuario`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`categoria_Id`) REFERENCES `Categoria`(`id_Categoria`);

