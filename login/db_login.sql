-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.27-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para forsakendogs
CREATE DATABASE IF NOT EXISTS `forsakendogs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `forsakendogs`;

-- Copiando estrutura para tabela forsakendogs.detalhes_usuario
CREATE TABLE IF NOT EXISTS `detalhes_usuario` (
  `id_usuario` int(11) NOT NULL,
  `data_pgto` date DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `foto_cliente` varchar(100) DEFAULT '',
  `cidade_cliente` varchar(30) DEFAULT '',
  `nome_fantasia` varchar(100) DEFAULT '',
  `descricao_cliente` text DEFAULT NULL,
  `valor_doado` decimal(7,2) DEFAULT NULL,
  `qtd_prod_comprado` varchar(50) DEFAULT '',
  `telefone_cliente` varchar(20) DEFAULT '',
  `email_cliente` varchar(100) DEFAULT '',
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `FK_detalhes_usuario_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela forsakendogs.detalhes_usuario: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela forsakendogs.detalhe_venda
CREATE TABLE IF NOT EXISTS `detalhe_venda` (
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `qtde` int(11) DEFAULT NULL,
  `valor` decimal(7,2) DEFAULT NULL,
  `desconto` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id_venda`,`id_produto`),
  KEY `FK_detalhe_venda_produto` (`id_produto`),
  CONSTRAINT `FK_detalhe_venda_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON UPDATE NO ACTION,
  CONSTRAINT `FK_detalhe_venda_venda` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela forsakendogs.detalhe_venda: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela forsakendogs.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(50) NOT NULL DEFAULT '',
  `qtde_produto` varchar(20) NOT NULL DEFAULT '',
  `valor_produto` decimal(7,2) NOT NULL DEFAULT 0.00,
  `foto_produto` varchar(100) NOT NULL DEFAULT '',
  `descricao_produto` text NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela forsakendogs.produto: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela forsakendogs.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '',
  `nivel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `senha` varchar(30) NOT NULL DEFAULT '',
  `senha_crip` varchar(100) NOT NULL DEFAULT '',
  `ativo` varchar(5) NOT NULL DEFAULT '',
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela forsakendogs.usuarios: ~3 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `nome`, `nivel`, `email`, `senha`, `senha_crip`, `ativo`, `data`) VALUES
	(4, 'usuario', 'Usuario', 'usuario@usuario', 'usuario', 'f8032d5cae3de20fcec887f395ec9a6a', 'Sim', '2023-07-09'),
	(5, 'apoiador', 'APOIADOR', 'apoiador@apoiador', 'apoiador', 'b920e95476ca74e28f3e98fd63b737a2', 'Sim', '2023-07-09'),
	(6, 'admin', 'ADMIN', 'admin@admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Sim', '2023-07-09');

-- Copiando estrutura para tabela forsakendogs.venda
CREATE TABLE IF NOT EXISTS `venda` (
  `id_venda` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='venda';

-- Copiando dados para a tabela forsakendogs.venda: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
