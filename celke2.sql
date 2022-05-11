-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 11/05/2022 às 18:46
-- Versão do servidor: 8.0.28-0ubuntu0.20.04.3
-- Versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `sts_contacts_msgs`
--

CREATE TABLE `sts_contacts_msgs` (
  `id` int NOT NULL,
  `name` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sts_contacts_msgs`
--

INSERT INTO `sts_contacts_msgs` (`id`, `name`, `email`, `subject`, `content`, `created`, `modified`) VALUES
(1, 'Cesar', 'cesar@celke.com.br', 'Escrever 1', 'Escrever 1', '2020-08-18 19:20:46', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sts_homes_servs`
--

CREATE TABLE `sts_homes_servs` (
  `id` int NOT NULL,
  `title_serv` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_serv` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icone_um_serv` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_um_serv` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_um_serv` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icone_dois_serv` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_dois_serv` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_dois_serv` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icone_tres_serv` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_tres_serv` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_tres_serv` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sts_homes_servs`
--

INSERT INTO `sts_homes_servs` (`id`, `title_serv`, `description_serv`, `icone_um_serv`, `titulo_um_serv`, `description_um_serv`, `icone_dois_serv`, `titulo_dois_serv`, `description_dois_serv`, `icone_tres_serv`, `titulo_tres_serv`, `description_tres_serv`, `created_at`, `updated_at`) VALUES
(1, 'Serviços', 'This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.', 'fas fa-ship', 'Serviço um', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur non ultricies mi, sit amet laoreet diam.', 'fas fa-map-marked-alt', 'Serviço dois', 'Quisque ut interdum nunc. Pellentesque metus neque, convallis sed vestibulum eu, viverra et justo. In laoreet diam nec nisl consectetur auctor.', 'fas fa-snowplow', 'Serviço três', 'Donec porttitor metus a arcu pulvinar ultricies. Aliquam commodo fermentum sapien quis porta. Nunc ac hendrerit libero, vel aliquam mauris.', '2022-05-11 17:17:10', '2022-05-11 17:17:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sts_homes_tops`
--

CREATE TABLE `sts_homes_tops` (
  `id` int NOT NULL,
  `title_top` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_top` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_btn_top` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_btn_top` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_top` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sts_homes_tops`
--

INSERT INTO `sts_homes_tops` (`id`, `title_top`, `description_top`, `link_btn_top`, `txt_btn_top`, `image_top`, `created`, `modified`) VALUES
(1, 'Temos a solução que a sua empresa precisa!', 'Aenean fermentum sapien sed dolor elementum tincidunt et.', 'http://localhost/celke/contato', 'Contato', 'topo.jpg', '2020-07-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sts_sobres_empresas`
--

CREATE TABLE `sts_sobres_empresas` (
  `id` int NOT NULL,
  `title` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts_situation_id` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sts_sobres_empresas`
--

INSERT INTO `sts_sobres_empresas` (`id`, `title`, `description`, `image`, `sts_situation_id`, `created`, `modified`) VALUES
(1, 'Sobre empresa título 1 ', 'Sobre empresa conteúdo 1', 'sobre_empresa.jpg', 1, '2020-07-23 00:00:00', NULL),
(2, 'Sobre empresa título 2', 'Sobre empresa conteúdo 2', 'sobre_empresa.jpg', 1, '2020-07-23 00:00:00', NULL),
(3, 'Sobre empresa título 3', 'Sobre empresa conteúdo 3', 'sobre_empresa.jpg', 1, '2020-07-23 00:00:00', NULL),
(4, 'Sobre empresa título 4', 'Sobre empresa conteúdo 4', 'sobre_empresa.jpg', 1, '2020-07-23 00:00:00', NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `sts_contacts_msgs`
--
ALTER TABLE `sts_contacts_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sts_homes_servs`
--
ALTER TABLE `sts_homes_servs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sts_homes_tops`
--
ALTER TABLE `sts_homes_tops`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sts_sobres_empresas`
--
ALTER TABLE `sts_sobres_empresas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `sts_contacts_msgs`
--
ALTER TABLE `sts_contacts_msgs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_homes_servs`
--
ALTER TABLE `sts_homes_servs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_homes_tops`
--
ALTER TABLE `sts_homes_tops`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_sobres_empresas`
--
ALTER TABLE `sts_sobres_empresas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
