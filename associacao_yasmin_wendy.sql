-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/09/2025 às 14:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `associacao_yasmin_wendy`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associados`
--

CREATE TABLE `associados` (
  `id_associado` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `e_mail` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `comunidade` varchar(255) NOT NULL,
  `cep_cidade` varchar(8) NOT NULL,
  `data_de_associado` date NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `profissao` varchar(255) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `associados`
--

INSERT INTO `associados` (`id_associado`, `nome_completo`, `e_mail`, `cidade`, `comunidade`, `cep_cidade`, `data_de_associado`, `telefone`, `profissao`, `cpf`) VALUES
(1, 'yasmin', 'yasmin@gmail.com', 'sao franscisco', 'pedra dos angicos', '39300000', '2025-08-22', '98999999999', 'veterinaria', '00000000000'),
(2, 'wendy', 'wendy@gmail.com', 'sao franscisco', 'centro', '39300000', '2025-08-23', '9888888888', 'veterinaria', '1111111111'),
(3, 'monalisa', 'monalisa@gmail.com', 'sao franscisco', 'eldorado', '39300000', '2025-08-24', '98777777777', 'psicologa', '22222222222'),
(4, 'ana', 'ana@gmail.com', 'sao frascisco', 'sobradinho', '39300000', '2025-08-25', '98666666666', 'perita', '33333333333'),
(5, 'yuri', 'yuri@gmail.com', 'sao franscisco', 'centro', '39300000', '2025-08-26', '98555555555', 'ator', '44444444444');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contribuicao`
--

CREATE TABLE `contribuicao` (
  `id_contribuicao` int(11) NOT NULL,
  `data_vencimento` date NOT NULL,
  `valor_pago` float NOT NULL,
  `mes_referencia` varchar(50) NOT NULL,
  `pedencia` varchar(255) NOT NULL,
  `data_pagamento` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_associado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `associados`
--
ALTER TABLE `associados`
  ADD PRIMARY KEY (`id_associado`);

--
-- Índices de tabela `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD PRIMARY KEY (`id_contribuicao`),
  ADD KEY `id_associado` (`id_associado`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contribuicao`
--
ALTER TABLE `contribuicao`
  ADD CONSTRAINT `contribuicao_ibfk_1` FOREIGN KEY (`id_associado`) REFERENCES `associados` (`id_associado`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
