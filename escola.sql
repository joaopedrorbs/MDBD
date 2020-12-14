-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Dez-2020 às 23:32
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `codCargo` int(11) NOT NULL,
  `Cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`codCargo`, `Cargo`) VALUES
(11, 'professor'),
(12, 'coordInfo'),
(13, 'coordMedio'),
(14, 'coordPeda'),
(15, 'CoordBibio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargofunc`
--

CREATE TABLE `cargofunc` (
  `codFunc` int(11) NOT NULL,
  `codCargo` int(11) NOT NULL,
  `DataEntrada` date NOT NULL,
  `DataSaida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargofunc`
--

INSERT INTO `cargofunc` (`codFunc`, `codCargo`, `DataEntrada`, `DataSaida`) VALUES
(7, 11, '2010-12-10', NULL),
(7, 13, '2012-10-15', '2015-10-15'),
(7, 14, '2016-12-15', '0000-00-00'),
(7, 11, '2010-12-10', NULL),
(7, 13, '2012-10-15', '2015-10-15'),
(7, 14, '2016-12-15', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFunc` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `DataEntrada` date NOT NULL,
  `DataSaida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFunc`, `Nome`, `DataEntrada`, `DataSaida`) VALUES
(7, 'amanda', '2010-12-10', NULL),
(8, 'anderson', '2004-10-12', NULL),
(9, 'agda', '2012-12-09', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`codCargo`);

--
-- Índices para tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD KEY `codFunc` (`codFunc`),
  ADD KEY `codCargo` (`codCargo`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFunc`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `codCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD CONSTRAINT `cargofunc_ibfk_1` FOREIGN KEY (`codCargo`) REFERENCES `cargo` (`codCargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargofunc_ibfk_2` FOREIGN KEY (`codFunc`) REFERENCES `funcionario` (`idFunc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
