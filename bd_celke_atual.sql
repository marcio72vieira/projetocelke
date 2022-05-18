-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 18-Maio-2022 às 11:18
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
-- Estrutura da tabela `sts_abouts_companies`
--

CREATE TABLE `sts_abouts_companies` (
  `id` int NOT NULL,
  `title` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts_situation_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_abouts_companies`
--

INSERT INTO `sts_abouts_companies` (`id`, `title`, `description`, `image`, `sts_situation_id`, `created_at`, `updated_at`) VALUES
(1, 'Sobre empresa título 1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'about_company.jpg', 1, '2022-05-05 08:44:06', NULL),
(2, 'Sobre empresa título 2', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'about_company.jpg', 1, '2022-05-05 08:44:06', NULL),
(3, 'Sobre empresa título 3', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'about_company.jpg', 1, '2022-05-05 08:46:12', NULL),
(4, 'Sobre empresa título 4', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', 'about_company.jpg', 1, '2022-05-05 08:46:12', NULL),
(5, 'Sobre empresa 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'about_company.jpg', 1, '2022-05-13 09:53:51', '2022-05-13 09:53:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_contacts`
--

CREATE TABLE `sts_contacts` (
  `id` int NOT NULL,
  `title_opening_hours` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_hours` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_address` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_two` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_contacts`
--

INSERT INTO `sts_contacts` (`id`, `title_opening_hours`, `opening_hours`, `title_address`, `address`, `address_two`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Entre em contato', 'Segunda a Sexta: 08:30 às 12:00 e 13:30 às 18:00', 'Nosso Endereço:', 'Rua Oswaldo Cruz, 1044', 'Centro - São Luis (MA). CEP: 65000-150', '(98) 98702-3344 / (98) 98870-3030', '2022-05-13 10:31:00', '2022-05-13 10:31:00');

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
(6, 'Marcio Vieira', 'marcio@email.com.br', 'Assunto da Mensagem', ' rerer', '2022-05-10 18:48:45', '2022-05-10 18:48:45'),
(7, 'Marcio Vieira', 'marcio@email.com.br', 'Assunto da Mensagem', ' Lorem ipsum doloro contente iet', '2022-05-13 10:09:07', '2022-05-13 10:09:07'),
(8, 'Marcio Vieira', 'marcio@email.com.br', 'Assunto da Mensagem', ' Lorem ipsum doloro contente iet', '2022-05-13 10:12:37', '2022-05-13 10:12:37'),
(9, 'Marcio Vieira', 'marcio@email.com.br', 'Assunto da Mensagem', ' Lorem ipsum doloro contente iet', '2022-05-13 10:16:32', '2022-05-13 10:16:32'),
(10, 'JOSE MARIA TRINDADE', 'jose@email.com', 'Lula desiste de sua candidatura a presidência do Brasil', '                                                    TESTE DE MENSAGEM', '2022-05-14 09:28:59', '2022-05-14 09:28:59'),
(11, 'JOSE MARIA TRINDADE 2', 'jose2@email.com', 'Assunto da Mensagem 2', 'Conteúdo da mensagem 2                                              ', '2022-05-14 09:33:00', '2022-05-14 09:33:00'),
(12, 'Ester Clévia', 'hafiz@gmail.com', 'Assunto da Mensagem', 'assunyo', '2022-05-14 09:43:48', '2022-05-14 09:43:48'),
(13, 'Ester Clévia', 'hafiz@gmail.com', 'Assunto da Mensagem', 'assunyo', '2022-05-14 09:47:23', '2022-05-14 09:47:23'),
(14, 'JOSE MARIA TRINDADE', 'jose@email.com', 'Assunto da Mensagem 2', 'ffdfdf', '2022-05-14 09:53:09', '2022-05-14 09:53:09'),
(15, 'Sarah Letícia', 'sara@email.com', 'Assuntod da mensagem', 'Texto digitado por Sarah Letícia', '2022-05-14 12:38:12', '2022-05-14 12:38:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_footers`
--

CREATE TABLE `sts_footers` (
  `id` int NOT NULL,
  `title_site` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_contact` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_address` varchar(220) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_cnpj` varchar(110) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_social_networks` varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_one_social_networks` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_one_social_networks` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_two_social_networks` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_two_social_networks` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_three_social_networks` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_three_social_networks` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_four_social_networks` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_four_social_networks` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sts_footers`
--

INSERT INTO `sts_footers` (`id`, `title_site`, `title_contact`, `phone`, `address`, `url_address`, `cnpj`, `url_cnpj`, `title_social_networks`, `txt_one_social_networks`, `link_one_social_networks`, `txt_two_social_networks`, `link_two_social_networks`, `txt_three_social_networks`, `link_three_social_networks`, `txt_four_social_networks`, `link_four_social_networks`, `created_at`, `updated_at`) VALUES
(1, 'MRCTech', 'Contato', '(98) 98702-3344 / (98) 98870-3030', 'Av. Mario Andreaza, s/n - Calhau. Edifíco Estrela Dalva, sala 1001', 'http://localhost/celke/contato', 'CNPJ: XX.XXX.XXX/XXXX-XX', 'http://localhost/celke/contato', 'Redes Sociais', 'Instagram', 'https://www.instagram.com/celkecursos', 'Facebook', 'https://www.facebook.com/celkecursos/', 'Youtube', 'https://www.youtube.com/channel/UC5ClMRHFl8o_MAaO4w7ZYug', 'Twiter', 'https://twitter.com/celkecursos', '2022-05-14 10:27:38', '2022-05-14 10:27:39');

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

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `artigos`
--
ALTER TABLE `artigos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_abouts_companies`
--
ALTER TABLE `sts_abouts_companies`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_contacts`
--
ALTER TABLE `sts_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_contacts_msgs`
--
ALTER TABLE `sts_contacts_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sts_footers`
--
ALTER TABLE `sts_footers`
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
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `artigos`
--
ALTER TABLE `artigos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sts_abouts_companies`
--
ALTER TABLE `sts_abouts_companies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sts_contacts`
--
ALTER TABLE `sts_contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `sts_contacts_msgs`
--
ALTER TABLE `sts_contacts_msgs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `sts_footers`
--
ALTER TABLE `sts_footers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
