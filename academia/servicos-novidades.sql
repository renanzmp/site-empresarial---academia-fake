-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/09/2024 às 17:29
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
-- Banco de dados: `servicos-novidades`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `novidades`
--

CREATE TABLE `novidades` (
  `codigo` int(11) NOT NULL,
  `local` varchar(70) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `novidades`
--

INSERT INTO `novidades` (`codigo`, `local`, `quantidade`) VALUES
(1, 'Duque de Caixas, Rio de Janeiro', 3),
(2, 'São Gonçalo, Rio de Janeiro', 2),
(3, 'Belo Horizonte, Minas Gerais', 4),
(4, 'Cuiabá, Mato Grosso', 1),
(5, 'Goiânia, Goiás	', 1),
(6, 'Itaim Bibi, São Paulo	', 2),
(7, 'Vitória, Espirito Santo	', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_prod` int(11) NOT NULL,
  `nome` varchar(75) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id_prod`, `nome`, `valor`, `quantidade`) VALUES
(1, 'Mensal', 149, 3018),
(2, 'Semestral', 129, 1688),
(3, 'Anual', 109, 2412);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `novidades`
--
ALTER TABLE `novidades`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_prod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
