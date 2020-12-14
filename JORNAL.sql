-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 18:53
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `Ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`Ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entreterimento'),
(3, 'Politica'),
(4, 'Saúde'),
(5, 'viagem'),
(11, 'MeioAmbiente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `Dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`Dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `Mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`Mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `Dia` int(11) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL,
  `Mes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codRedator`, `codCategoria`, `Dia`, `Ano`, `Mes`) VALUES
(1, 'Liberação emergencial de vacina pode demorar até 10 dias, diz Anvisa', 'Liberação prevista da vacina', 4, 11, 21, 2020, 10),
(5, 'Técnico Marcelo Veiga morre de Covid aos 56 anos', 'O técnico Marcelo Veiga, de 56 anos, faleceu nesta segunda-feira. ', 3, 3, 21, 2020, 10),
(7, 'TikTok foi o app mais baixado de 2020, aponta relatório', 'O TikTok foi o aplicativo mais baixado ao redor do mundo em 2020, segundo um levantamento publicado na última semana pela empresa de consultoria AppAnnie.', 7, 2, 21, 2020, 10),
(8, 'Prouni 2021 abrirá inscrições em 12 de janeiro e usará nota do Enem 2019', Os candidatos do Programa Universidade Para Todos (Prouni) 2021 poderão se inscrever entre os dias 12 e 15 de janeiro do ano que vem', 3, 4, 21, 2020, 10),
(9, 'Câmara aprova projeto que prevê repasse de até R$ 62 bi a estados e municípios’, 'A Câmara aprovou nesta segunda-feira (14) um projeto que viabiliza a entrega, por parte da União, de R$ 58 bilhões para estados e municípios nos próximos 17 anos.', 3, 4, 20, 2020, 10),
(10, 'Bovespa opera instável, perto de zerar a queda no ano', 'O principal índice da bolsa de valores brasileira, a B3, opera sem direção definida nesta segunda-feira (14), tendo zerado mais cedo, provisoriamente, as perdas no ano.', 7, 1, 21, 2020, 10),
(11, 'Aeroporto Internacional Tom Jobim, o Galeão, tem aglomerações', 'Mesmo com certa organização, as fitas colocadas para separar os passageiros não tinham muito distanciamento, o que acabou provocando aglomeração – que pode ajudar na disseminação do novo coronavírus.', 1, 1, 21, 2020, 10),
(12, 'Londres voltará a fechar bares, restaurantes e museus por alta de casos da Covid-19', ' ministro da Saúde do Reino Unido, Matt Hancock, anunciou nesta quarta-feira (14) que a capital britânica passará para a fase de "Risco Muito Alto" por conta da pandemia de Covid-19.', 5, 5, 20, 2020, 10),
(13, 'Governo está sendo obrigado a cumprir seu papel, desabafam líderes aliados sobre vacinação', 'Na polêmica do Plano Nacional de Vacinação contra a Covid-19, o governo Jair Bolsonaro está sendo obrigado pelo Judiciário a fazer o que já é função do Executivo. ', 1, 11, 21, 2020, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `Dia` int(11) DEFAULT NULL,
  `Mes` int(11) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `telefone`, `cidade`, `ddd`, `codTurma`, `Dia`, `Mes`, `Ano`) VALUES
(1, 'João Pedro', 'Ribeiro da Silva', 'jpribeiro@email.com', '93123-2342", 'Mauá', 11, 4, 12, 7, 2004),
(3, 'Eliana ', 'Ribeiro', 'eliana@email.com', '92344-2343', 'Ribeirão Pires', 11, 3, 31, 12, 1990),
(5, 'Tamires', 'Ribeiro', 'tamires@email.com', '95345-4323', 'Mauá', 11, 1, 12, 9, 2000),
(7, 'Giovanna', 'Ribeiro', 'giovanna@email.com', '96554-4232', 'mauá', 11, 2, 21, 2, 1980);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1A'),
(5, '2B'),
(6, '3C');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`Ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`Dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`Mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `Dia` (`Dia`),
  ADD KEY `Ano` (`Ano`),
  ADD KEY `Mes` (`Mes`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `Dia` (`Dia`),
  ADD KEY `Mes` (`Mes`),
  ADD KEY `Ano` (`Ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`Dia`) REFERENCES `dia` (`Dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`Ano`) REFERENCES `ano` (`Ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`Mes`) REFERENCES `mes` (`Mes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`Dia`) REFERENCES `dia` (`Dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`Mes`) REFERENCES `mes` (`Mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`Ano`) REFERENCES `ano` (`Ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;