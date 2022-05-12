-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12-Maio-2022 às 11:11
-- Versão do servidor: 8.0.23
-- versão do PHP: 7.4.3

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
-- Estrutura da tabela `artigos`
--

CREATE TABLE `artigos` (
  `id` int NOT NULL,
  `titulo` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conteudo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `artigos`
--

INSERT INTO `artigos` (`id`, `titulo`, `conteudo`, `created`, `modified`) VALUES
(1, 'Artigo 1', 'Fusce consectetur tellus eu posuere semper. Quisque lorem elit, mollis sit amet tortor sed, consectetur dapibus libero. Etiam lacinia nisl ut ipsum imperdiet, eget feugiat leo tincidunt.', '2020-07-23 00:00:00', NULL),
(2, 'Artigo 2', 'Donec eu libero rutrum, vulputate tellus quis, auctor velit. Praesent ornare est elit, in auctor nunc imperdiet sit amet.', '2020-07-23 00:00:00', NULL),
(3, 'Artigo 3', 'Quisque non metus quis tortor fermentum sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent hendrerit dui dignissim, imperdiet purus ac, lobortis dolor. Mauris ultricies cursus odio eu luctus.', '2020-07-23 00:00:00', NULL),
(4, 'Artigo 4', 'Curabitur fringilla pharetra quam id varius. Fusce et urna ante. Mauris blandit libero vel risus fermentum dictum. Integer sit amet scelerisque eros, ut sodales elit. Nulla ac lorem in lorem pretium fringilla. Quisque tempor eros sit amet porttitor rhoncus.', '2020-07-23 00:00:00', NULL),
(5, 'Artigo 5', 'Morbi turpis nunc, vehicula vel hendrerit sit amet, tristique nec sapien. Nulla ex augue, volutpat posuere vestibulum sed, lacinia id velit. Nunc rutrum massa et velit lobortis, in iaculis leo viverra.', '2020-07-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_contacts_msgs`
--

CREATE TABLE `sts_contacts_msgs` (
  `id` int NOT NULL,
  `name` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_contacts_msgs`
--

INSERT INTO `sts_contacts_msgs` (`id`, `name`, `email`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Marcio Vieira', 'marcio@email.com.br', 'Assunto da Mensagem', ' Marcio Vieira', '2022-05-08 12:49:47', NULL),
(2, 'Ester Clévia', 'ester@email.com', 'Assunto da Mensagem', ' Ester Clévia', '2022-05-08 12:52:15', '2022-05-08 12:52:15'),
(3, 'Marcio Nonato Fonseca Vieira', 'marcio72vieira@hotmail.com', 'Assunto da Mensagem', ' Marcio Nonato Fonseca Vieira', '2022-05-08 12:56:13', '2022-05-08 12:56:13'),
(4, 'João Lindoso', 'joao@email', 'Assunto da Mensagem', ' João Lindoso', '2022-05-09 11:18:14', '2022-05-09 11:18:14'),
(5, 'Sarah Letícia', 'sara@email.com', 'Assuntod da mensagem', 'Conteúdo do assunto da Mensagem ', '2022-05-09 11:36:27', '2022-05-09 11:36:27'),
(6, 'Marcio Vieira', 'marcio@email.com.br', 'Assunto da Mensagem', ' rerer', '2022-05-10 18:48:45', '2022-05-10 18:48:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_homes_actions`
--

CREATE TABLE `sts_homes_actions` (
  `id` int NOT NULL,
  `title_action` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_action` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_action` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_btn_action` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_btn_action` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_action` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_homes_actions`
--

INSERT INTO `sts_homes_actions` (`id`, `title_action`, `subtitle_action`, `description_action`, `link_btn_action`, `txt_btn_action`, `image_action`, `created_at`, `updated_at`) VALUES
(1, 'For calling extra attention to featured content or information.', 'Elit et mi fringilla commodo eget in lectus!', 'Orci varius natoque penatibus et magnis dis parturient montes, nascetur commodo mus.', 'http://localhost/celke/contato', 'Contato', 'chamada_acao.jpg', '2022-05-12 09:26:08', '2022-05-12 09:26:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_homes_dets`
--

CREATE TABLE `sts_homes_dets` (
  `id` int NOT NULL,
  `title_det` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_det` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_det` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_det` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_homes_dets`
--

INSERT INTO `sts_homes_dets` (`id`, `title_det`, `subtitle_det`, `description_det`, `image_det`, `created_at`, `updated_at`) VALUES
(1, 'Phasellus id consectetur orci.', 'Oh yeah, it’s that good.', 'Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'detalhes_servico.jpg', '2022-05-12 10:38:17', '2022-05-12 10:38:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_homes_servs`
--

CREATE TABLE `sts_homes_servs` (
  `id` int NOT NULL,
  `title_serv` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_serv` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icone_um_serv` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_um_serv` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_um_serv` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icone_dois_serv` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_dois_serv` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_dois_serv` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icone_tres_serv` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_tres_serv` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_tres_serv` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_homes_servs`
--

INSERT INTO `sts_homes_servs` (`id`, `title_serv`, `description_serv`, `icone_um_serv`, `titulo_um_serv`, `description_um_serv`, `icone_dois_serv`, `titulo_dois_serv`, `description_dois_serv`, `icone_tres_serv`, `titulo_tres_serv`, `description_tres_serv`, `created_at`, `updated_at`) VALUES
(1, 'Serviços', 'This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.', 'fas fa-ship', 'Serviço um', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur non ultricies mi, sit amet laoreet diam.', 'fas fa-map-marked-alt', 'Serviço dois', 'Quisque ut interdum nunc. Pellentesque metus neque, convallis sed vestibulum eu, viverra et justo. In laoreet diam nec nisl consectetur auctor.', 'fas fa-snowplow', 'Serviço três', 'Donec porttitor metus a arcu pulvinar ultricies. Aliquam commodo fermentum sapien quis porta. Nunc ac hendrerit libero, vel aliquam mauris.', '2022-05-11 17:17:10', '2022-05-11 17:17:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_homes_tops`
--

CREATE TABLE `sts_homes_tops` (
  `id` int NOT NULL,
  `title_top` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_top` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_btn_top` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_btn_top` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_top` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_homes_tops`
--

INSERT INTO `sts_homes_tops` (`id`, `title_top`, `description_top`, `link_btn_top`, `txt_btn_top`, `image_top`, `created_at`, `updated_at`) VALUES
(1, 'Temos a solução que a sua empresa precisa!', 'Aenean fermentum sapien sed dolor elementum tincidunt et.', 'http://localhost/celke/contato', 'Contato', 'topo.jpg', '2020-07-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_sobres_empresas`
--

CREATE TABLE `sts_sobres_empresas` (
  `id` int NOT NULL,
  `title` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts_situation_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_sobres_empresas`
--

INSERT INTO `sts_sobres_empresas` (`id`, `title`, `description`, `image`, `sts_situation_id`, `created_at`, `updated_at`) VALUES
(1, 'Sobre empresa título 1', 'Decrição Sobre empresa 1', 'image_sobreempresa_01.jpg', 1, '2022-05-05 08:44:06', NULL),
(2, 'Sobre empresa título 2', 'Descrição Sobre empresa 2', 'image_sobreempresa_02.jpg', 1, '2022-05-05 08:44:06', NULL),
(3, 'Sobre empresa título 3', 'Descrição Sobre empresa 3', 'image_sobreempresa_03.jpg', 1, '2022-05-05 08:46:12', NULL),
(4, 'Sobre empresa título ', 'Descricao sobre empresa 04', 'image_sobreempresa_04.jpg', 1, '2022-05-05 08:46:12', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `artigos`
--
ALTER TABLE `artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_contacts_msgs`
--
ALTER TABLE `sts_contacts_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_homes_actions`
--
ALTER TABLE `sts_homes_actions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_homes_dets`
--
ALTER TABLE `sts_homes_dets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_homes_servs`
--
ALTER TABLE `sts_homes_servs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_homes_tops`
--
ALTER TABLE `sts_homes_tops`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_sobres_empresas`
--
ALTER TABLE `sts_sobres_empresas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `artigos`
--
ALTER TABLE `artigos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sts_contacts_msgs`
--
ALTER TABLE `sts_contacts_msgs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `sts_homes_actions`
--
ALTER TABLE `sts_homes_actions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_homes_dets`
--
ALTER TABLE `sts_homes_dets`
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
