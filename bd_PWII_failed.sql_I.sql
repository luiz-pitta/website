-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: db_pwii
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_autor`
--

DROP TABLE IF EXISTS `tbl_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_autor` (
  `cd_autor` int NOT NULL AUTO_INCREMENT,
  `nm_autor` varchar(45) NOT NULL,
  PRIMARY KEY (`cd_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_autor`
--

LOCK TABLES `tbl_autor` WRITE;
/*!40000 ALTER TABLE `tbl_autor` DISABLE KEYS */;
INSERT INTO `tbl_autor` VALUES (1,'Alexandre Aquiles'),(2,'Tárcio Zemel'),(3,'Rafael Steil'),(4,'Fabricio Teixeira'),(5,'Vinícius Carvalho'),(6,'Fernando Baglio'),(7,'David Paniz'),(8,'Rosangela Marquesone'),(9,'Natan Souza'),(10,'Danilo Sato'),(11,'Juliano Ramos'),(12,'Fernando Bryan Frizzarin'),(13,'Eduardo Popovici'),(14,'Adrian Gois'),(15,'Everton Coimbra de Araújo'),(16,'Sérgio Lopes'),(17,'Flávio Almeida'),(18,'Roger Silva');
/*!40000 ALTER TABLE `tbl_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_categoria` (
  `cd_categoria` int NOT NULL AUTO_INCREMENT,
  `ds_categoria` varchar(25) NOT NULL,
  PRIMARY KEY (`cd_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categoria`
--

LOCK TABLES `tbl_categoria` WRITE;
/*!40000 ALTER TABLE `tbl_categoria` DISABLE KEYS */;
INSERT INTO `tbl_categoria` VALUES (1,'Design'),(2,'Infraestrutura'),(3,'Dados'),(4,'Front-end'),(5,'Mobile');
/*!40000 ALTER TABLE `tbl_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_livro`
--

DROP TABLE IF EXISTS `tbl_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_livro` (
  `cd_livro` int NOT NULL AUTO_INCREMENT,
  `no_isbn` varchar(17) NOT NULL,
  `cd_categoria` int NOT NULL,
  `nm_livro` varchar(70) NOT NULL,
  `cd_autor` int NOT NULL,
  `no_pag` varchar(4) NOT NULL,
  `vl_preco` decimal(6,2) NOT NULL,
  `qt_estoque` int NOT NULL,
  `ds_resumo_obra` text NOT NULL,
  `ds_capa` varchar(255) NOT NULL,
  `sg_lancamento` enum('S','N') NOT NULL,
  PRIMARY KEY (`cd_livro`),
  KEY `fk_cat` (`cd_categoria`),
  KEY `fk_autor` (`cd_autor`),
  CONSTRAINT `fk_autor` FOREIGN KEY (`cd_autor`) REFERENCES `tbl_autor` (`cd_autor`),
  CONSTRAINT `fk_cat` FOREIGN KEY (`cd_categoria`) REFERENCES `tbl_categoria` (`cd_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_livro`
--

LOCK TABLES `tbl_livro` WRITE;
/*!40000 ALTER TABLE `tbl_livro` DISABLE KEYS */;
INSERT INTO `tbl_livro` VALUES (1,'978-85-94188-81-6',4,'O retorno do cangaceiro JavaScript',1,'488',93.00,25,'<p>O paradigma funcional está cada vez mais presente em frameworks modernos. E com o JavaScript em constante evolução,\n os desenvolvedores cangaceiros estão sempre aprendendo novas formas de aprimorar a manutenção e legibilidade de seus\n códigos, armando-se de conceitos e técnicas para se aventurar em terras ainda mais avançadas e frameworks que possuem\n grande demanda no atual mercado de trabalho.</p>\n <p>Neste livro, Flávio Almeida retorna ao cangaço JavaScript, introduzindo o leitor aos jargões e técnicas do paradigma\n funcional aplicados a JavaScript avançado. Você aprenderá os conceitos da Programação Funcional por meio de exemplos\n práticos com a criação da nossa própria biblioteca e operadores. Para completar, o autor traz os padrões de projeto\n mais utilizados para você melhorar ainda mais seus projetos. Com essas novas técnicas, você incrementará seu arsenal\n para resolver problemas comuns do seu dia a dia como programador front-end e estará pronto para explorar áreas mais\n profundas do sertão da programação.</p>','javascriptcangaceiro.jpg','N'),(2,'978-85-5519-079-7',3,'Comece com o principal banco de dados open source do mercado',5,'165',59.90,40,'<p>O MySQL é praticamente onipresente nos projetos de software atuais. Boa parte deles o utiliza como banco de dados\n para armazenar as informações da sua aplicação, por conta da sua facilidade de instalação e configuração.</p>\n <p>Neste livro, Vinícius Carvalho introduz o leitor no mundo do banco de dados MySQL, ensinando os principais comandos\n DML e DDL, e ferramentas gráficas. Você vai aprender a trabalhar com procedures, manipular triggers, criar backups e\n vários outros recursos que fazem a diferença no dia a dia.</p>\n <p>Versão do MySQL: 8.0.</p>','bancomysql.jpg','N'),(3,'978-85-66250-32-9',1,'Edição e organização de fotos com Adobe Lightroom',3,'199',69.00,23,'<p>Uma imagem vale por mil palavras. Uma foto pode deixar alguém sem palavras. Contudo, como encontrar alguma foto\n específica no meio de outras milhares? E como editar, corrigir e mostrá-las a amigos ou clientes de maneira eficiente\n e profissional?</p>\n <p>Uma sessão fotográfica pode facilmente conter milhares de arquivos, e o número cresce cada vez mais à medida que\n os anos passam. Seja você um fotógrafo profissional ou hobbista, ainda é preciso ter uma boa organização sobre seu\n trabalho, além de ferramentas que lhe ajudem a ser mais produtivo.</p>\n <p>Para estas e outras coisas o Adobe Lightroom é a ferramenta perfeita. Com uma interface otimizada para fotógrafos\n de todos os níveis, pensada desde o início em produtividade e qualidade, este programa para Windows e Mac irá lhe\n surpreender.</p>','adobe-lightroom.jpg','N'),(4,'978-85-66250-33-6',1,'Conhecendo o Adobe Photoshop CS6',2,'380',59.00,80,'<p>Sempre quis entender como fotos que a princípio não tem nada de mais, depois de alguns retoques, ganham outra vida?\n Com esse livro, além de entender como funciona os segredos da manipulação de imagens, você vai aprender a aplicá-los \n na prática.</p>\n <p>O autor Tárcio Zemel explica, passo a passo, para quem não possui nenhuma experiência com Photoshop, os segredos\n de edição de imagens, aplicação de filtros, organização de trabalho com camadas, aplicação de máscaras, ajustes de tons\n de cores, seleções avançadas e muito mais.</p>\n <p>No final do livro, você ainda aprende a fazer a imagem da capa, modificando e estilizando a Mona Lisa.</p>','photoshop.jpg','N'),(5,'978-85-94188-60-1',4,'bootstrap 4 - biblioteca front-end mais utilizada no mundo',9,'172',59.90,100,'<p>Fazer um site elegante nunca foi tão fácil, mesmo para quem não sabe escrever uma linha de CSS e, muito menos, entend\ne como harmonizar cores, balancear elementos e tipografia. O Bootstrap é, resumidamente, um grande arquivo CSS com uma\n excelente documentação, que possui dezenas e dezenas de componentes prontos. No começo, foi criado pelo Twitter para servir\n como um guia de estilos em CSS da empresa; hoje, é a biblioteca mais famosa e utilizada no mundo.</p>\n <p>DNeste livro, Natan Souza ensinará como trabalhar com esta fantástica biblioteca em sua última versão 4 ao montar uma\n página do zero, a partir de um wireframe. Você verá seus principais componentes, como menu responsivo, grids, painéis e botões,\n além de aprender a customizar seu tema padrão e algumas boas práticas de HTML5, sempre levando em consideração a semântica do\n código..</p>','bootstrap.jpg','S'),(6,'978-85-66250-40-4',2,'DevOps na prática - entrega de software confiável e automatizada',10,'284',69.90,0,'<p>Entregar software em produção é um processo que tem se tornado cada vez mais difícil no departamento de TI de diversas\n empresas. Ciclos longos de teste e divisões entre as equipes de desenvolvimento e de operações são alguns dos fatores que\n contribuem para este problema. Mesmo equipes ágeis que produzem software entregável ao final de cada iteração sofrem para\n chegar em produção quando encontram estas barreiras.</p>\n <p>DevOps é um movimento cultural e profissional que está tentando quebrar essas barreiras. Com o foco em automação,\n colaboração, compartilhamento de ferramentas e de conhecimento, DevOps está mostrando que desenvolvedores e engenheiros\n de sistema têm muito o que aprender uns com os outros.</p>\n <p>Neste livro, Danilo Sato mostra como implementar práticas de DevOps e Entrega Contínua para aumentar a frequência\n de deploys na sua empresa, ao mesmo tempo aumentando a estabilidade e robustez do sistema em produção. Você vai aprender\n como automatizar o build e deploy de uma aplicação web, como automatizar o gerenciamento da infraestrutura, como\n monitorar o sistema em produção, como evoluir a arquitetura e migrá-la para a nuvem, além de conhecer diversas\n ferramentas que você pode aplicar no seu trabalho.</p>','devops.jpg','N'),(7,'978-85-5519-288-3',5,'Ionic Framework\nConstrua aplicativos para todas as plataformas mobile',14,'162',49.90,20,'<p>Com a crescente difusão dos SmartPhones, surgiu uma grande quantidade de Sistemas Operacionais, o que por\n consequência aumentava a dificuldade em padronizar uma linha de desenvolvimento de aplicações que fossem portáveis\n ou multiplataforma. Por conta disto, surgiram os frameworks para compilação híbrida de aplicativos sendo desenvolvidos\n em uma única linguagem. Hoje, sabe-se que isso é possível com a mesclagem de HTML, JavaScript e CSS, basicamente.\n Dentro deste contexto, uma ferramenta se destaca, não apenas por compilar de forma híbrida, mas por oferecer diversos\n componentes, suporte a debugs e fácil aprendizado através de linguagens já conhecidas. Este é o poderoso Ionic Framework.\n Nele é possível utilizar componentes responsivos e atrativos para o desenvolvimento dos aplicativos, com a possibilidade\n de compilação e fácil instalação nas diferentes plataformas mobile. Seu foco é o front view dos aplicativos, isto é, fornece\n componentes para o desenvolvimento da interface dos aplicativos, fazendo o controle através do AngularJS e sendo compilado\n pelo PhoneGap..</p>\n <p>Neste livro, Adrian Gois explora o Ionic Framework em sua versão 1.0, orientando o leitor desde sua instalação, com a\n preparação do ambiente de desenvolvimento, passando pelos comandos básicos até chegar a aspectos avançados, utilizando\n Angular 1. Por meio da criação de um aplicativo de exemplo, que será um Cardápio Móvel, você vai evoluir seu desenvolvimento\n conforme aprende a teoria sobre Ionic e insere novos componentes na prática.</p>','ionic.jpg','N'),(8,'978-85-5519-076-6',4,'CSS Eficiente\nTécnicas e ferramentas que fazem a diferença nos estilos',2,'144',59.90,25,'<p>Quando aprendemos a trabalhar com CSS, frequentemente nos pegamos perdidos em detalhes fundamentais que não nos são\n explicados. Por vezes, alguns desses detalhes passam despercebidos até pelo desenvolvedor front-end mais experiente.\n Mas como ir além do conhecimento básico do CSS e preparar o caminho para explorar tópicos mais avançados?.</p>\n <p>Neste livro, Tárcio Zemel ensina como organizar seu estilo, entender especificidade, como usar diferentes\n seletores, trabalhar orientado a objetos com CSS e várias outras técnicas que farão diferença no dia a dia do \n trabalho com os estilos e abrirão novas possibilidades para você explorar ainda mais o CSS.</p>','css.jpg','N'),(9,'978-85-5519-231-9',3,'Big Data\nTécnicas e tecnologias para extração de valor dos dados',8,'245',69.90,0,'<p>Estamos na era dos dados. Não importa qual seja a sua área de atuação, uma palavra atualmente em evidência é: Big Data.\n Podemos encontrar casos de uso em que esse conceito permitiu a redução do número de fraudes, redução de custos na\n produção, eficiência energética, aumento de segurança, entre outros benefícios tão almejados em diversos domínios. Muito\n embora o interesse esteja em alta, Big Data ainda é um termo incipiente, gerando incertezas sobre sua definição, características,\n aplicabilidade e desafios. Como obter dados de diferentes fontes? Como extrair valor a partir dos dados? Qual a infraestrutura\n necessária para criar uma solução de Big Data? Quais habilidades são necessárias para atuar com Big Data em seu projeto?</p>\n <p>Neste livro, Rosangela Marquesone apresenta as tecnologias e soluções de Big Data, em uma abordagem conceitual que detalha\n as características e capacidades de cada uma delas. Você verá as principais fases de um projeto de Big Data, desde a captura,\n o armazenamento, o processamento, análise, até a visualização de dados.</p>','bigdata.jpg','S'),(10,'978-85-66250-53-4',2,'Controlando versões com Git e GitHub',1,'220',69.90,28,'<p>esenvolver software não é fácil. Há sempre demandas de novas funcionalidades a serem desenvolvidas e de alterações nas\n funcionalidades já existentes. Por isso, uma das preocupações nos projetos é manter um histórico de evolução do código fonte,\n facilitando o trabalho de desfazer algumas dessas alterações, caso seja necessário. Além disso, como geralmente trabalhamos\n em equipe, outra preocupação é sobre a integração do trabalho entre os membros da equipe. Diversos problemas relacionados\n com essas preocupações podem acontecer durante o desenvolvimento de um software, e, para evitá-los, é essencial a utilização\n de uma ferramenta de controle de versão.</p>\n <p>O Git é uma dessas ferramentas de controle de versão. Foi criado em 2005 por Linus Torvalds, o criador do Linux, e hoje é\n uma das ferramentas de controle de versão mais utilizadas nos projetos de desenvolvimento de software, por ser mais rápido\n e eficiente do que as outras ferramentas tradicionais, como CVS e SVN.</p>\n <p>Neste livro, Alexandre Aquiles e Rodrigo Ferreira mostrarão como utilizar o Git para controlar as versões do seu projeto.\n Serão ensinados comandos para criação de repositórios, trabalho local e remoto, branches, tags, conflitos, dentre outros\n assuntos. Além disso, será mostrado também como criar uma conta no GitHub e utilizá-la para hospedar seus repositórios.</p>','git.jpg','S'),(11,'978-85-66250-48-0',1,'Introdução e boas práticas em UX Design',4,'263',79.90,50,'<p>Cada vez mais o desenvolvimento do front-end de sites e sistemas tem papel preponderante em como o seu site converte,\n retém e agrada os usuários. Porém, além de saber como implementar uma tela, é importante saber também o que fazer nela.\n Quais recursos devem ser usados? Quais informações precisam ser exibidas? Em quais lugares?.</p>\n <p>Atualmente, a experiência do usuário (User Experience – UX) tem ganhado um papel fundamental na criação de sites e\n aplicativos. Entender como o usuário se comportará no seu sistema é de extremo valor para criar um site simples\n para ele.Neste livro, Fabricio Teixeira mostra com exemplos práticos e reais de sucesso e insucesso de diferentes\n sites quais são as boas práticas e os pilares para conseguir construir um de uso agradável. Confira o\n sumário.</p>','ux.jpg','N'),(12,'978-85-94188-78-6',2,'Guia prático do servidor Linux\nAdministração Linux para iniciantes',11,'169',59.90,0,'<p>O Linux é o sistema operacional mais seguro que você poderá ter em mãos. Empresas como a Dell, Asus e Acer produzem\n regularmente computadores que utilizam o Linux. Já grandes empresas, como IBM e Google, utilizam-no como estratégia\n em seus ambientes corporativos. Hoje, praticamente toda a infraestrutura da internet atua sobre o sistema do pinguim.\n Conhecer e utilizar o Linux para qualquer pessoa que pretende se tornar um profissional em TI não é uma questão opcional,\n é um pré-requisito.</p>\n <p>Este livro tem como objetivo formar profissionais na Administração de servidores GNU/Linux. Juliano Ramos mostra como\n se introduzir no sistema Linux desde o primeiro contato, iniciando pelos comandos básicos e finalizando com servidores.\n Você verá na prática como trabalhar pelo shell script, conhecerá servidores como o SSH, RAID, Apache, Proxy, entre outros,\n além de lidar com redes, módulos e particionamento de disco.</p>','linux.jpg','N'),(13,'978-85-5519-219-7',5,'Entrega contínua em Android\nComo automatizar a distribuição de apps',18,'190',69.90,25,'<p>Independente de ser um desenvolvedor freelancer ou um time de desenvolvimento de software já maduro, um item especial ao\n qual o responsável pelo desenvolvimento de um novo software deve dar especial atenção é a entrega do software ao cliente.\n Como será realizada a entrega? Com qual frequência? Será adotado algum processo automatizado ou a entrega do software será\n manual? Como o software é validado antes da entrega? Embora já tenha-se discutido sobre essas questões, um vácuo literário\n permanece quando pensamos em entrega contínua de aplicações mobile.</p>\n <p>Neste livro, Roger Silva vem preencher esta lacuna, explicando como automatizar a distribuição do app para o Google Play,\n como executar testes automatizados sobre as suas funcionalidades e disponibilizá-lo para a equipe de testes em vários\n dispositivos. Você verá como tratar todos esses requisitos para que, quando um desenvolvedor comitar seu código-fonte para um\n repositório de código remoto, uma bateria de testes automatizados seja executada, acompanhada por uma análise de cobertura de\n código-fonte, verificações de regras de negócios e, por fim, chegando até a etapa de distribuição automatizada do app para o\n Google Play.</p>','entregaandroid.jpg','S'),(14,'978-85-5519-198-5',2,'Windows Server 2012 R2\nEstudo dirigido para MCSA prova 70-410',13,'354',79.90,40,'<p>A nova certificação MCSA (Microsoft Certified Solutions Associate) é um título atribuído a profissionais da área de TI que\n se proponham a entender muito de um determinado assunto, como o Windows Server 2008, Windows Server 2012, Windows 7, Windows 8,\n SQL Server e Office 365. O MCSA permite que você tenha a base de conhecimento para ocupar um cargo de administrador de sistemas\n computacionais ou de administrador de rede ou ainda especialista em redes de computadores, e é a etapa mais próxima para a\n <p>Com este plano de estudos escrito por Eduardo Popovici, você visitará os assuntos cobrados, bem como terá dicas valiosas\n e exercícios para treinar, tudo para estar pronto para prestar suas provas e obter sua certificação.</p>','mcsa.jpg','S'),(23,'978-85-5519-043-8',3,'MongoDB Construa novas aplicações com novas tecnologias',6,'224',69.90,50,'<p>\r\nO modelo dos bancos de dados relacionais já existe há muitos anos. No entanto, cada vez mais as aplicações modernas precisam aliar alta escalabilidade com suporte a persistência de alta quantidade de informações, e é justamente por isso que o modelo relacional começa a deixar a desejar e as alternativas NOSQL passam a surgir.\r\n</p>\r\n<p>\r\nAtingir alta escalabilidade com bancos de dados relacionais exige infraestruturas caríssimas, que podem ser evitadas com outros paradigmas. É aí que entra o MongoDB, famoso banco de dados orientado a documentos, desenvolvido pela 10gen e principal alternativa para aliar a alta escalabilidade com facilidade de uso.	\r\n</p>\r\n<p>\r\nNesse livro, Fernando Boaglio vai ensiná-lo como trabalhar com o MongoDB, principal banco de dados orientado a documentos do mercado. Com ele é possível desenvolver aplicações que atingem alta escalabilidade e de forma tão simples quanto trabalhar com os tradicionais banco de dados relacionais.\r\n</p>','mongodb.jpg','S'),(27,'978-85-7254-004-9',5,'Xamarin Forms Desenvolvimento de aplicações móveis multiplataforma',15,'308',79.90,25,'<p>O Xamarin surgiu como uma inovação para o ramo do desenvolvimento móvel, tornando mais fácil e produtiva a entrega de aplicativos móveis para diferentes plataformas. Em conjunto com o Visual Studio, o Xamarin nos permite criar aplicativos móveis usando a linguagem C# e a plataforma .NET, a fim de ter a experiência de desenvolvimento híbrido para os principais dispositivos com iOS, Android e Windows Phone.</p>\r\n\r\n<p>Neste livro, Everton Coimbra traz, na prática, o desenvolvimento de aplicações multiplataforma com o Xamarin e Xamarin Forms, apresentando conceitos como componentes, ações, acesso a bases de dados via SQLite, mapas e muito mais. Explorando as potencialidades do Xamarin e de tecnologias afins, você acompanhará a construção de um aplicativo para diferentes dispositivos móveis a partir de uma mesma estrutura de código.</p>\r\n','905a4140d2d46f41dd8ae50c839b6fea.jpg','N');
/*!40000 ALTER TABLE `tbl_livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuario` (
  `cd_usuario` int NOT NULL AUTO_INCREMENT,
  `nm_usuario` varchar(80) NOT NULL,
  `ds_email` varchar(80) NOT NULL,
  `ds_senha` varchar(6) NOT NULL,
  `ds_status` tinyint(1) NOT NULL,
  `ds_endereco` varchar(80) NOT NULL,
  `ds_cidade` varchar(30) NOT NULL,
  `no_cep` char(9) NOT NULL,
  PRIMARY KEY (`cd_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,'Orlindo Omiya','orlindo@gmail.com','omiya2',1,'Rua Adamastor, 58','Santos','05252-020'),(2,'Janailson Matias','matias@gmail.com','janass',0,'Rua Jaraguá, 128','São Paulo','08881-040'),(3,'Olidio Junior','olidio@hotmail.com','etec20',0,'Rua Pompeia, 400','São Paulo','06585-140'),(4,'Ramalho','milena@gmail.com.br','54321',0,'Rua Solution, 23','São Paulo','05045-020'),(5,'Geovanna Barbosa','geovanna.barbosa20@etec.sp.gov.br','543672',0,'Rua Violeta dos Alpes, 12','São Paulo','05209-050'),(6,'Yuri Lago','lasgo@gmail.com','3456',0,'Rua Dolar, 256','São Paulo','05010-010');
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_livro`
--

DROP TABLE IF EXISTS `vw_livro`;
/*!50001 DROP VIEW IF EXISTS `vw_livro`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_livro` AS SELECT 
 1 AS `cd_livro`,
 1 AS `no_isbn`,
 1 AS `ds_categoria`,
 1 AS `nm_livro`,
 1 AS `nm_autor`,
 1 AS `no_pag`,
 1 AS `vl_preco`,
 1 AS `qt_estoque`,
 1 AS `ds_resumo_obra`,
 1 AS `ds_capa`,
 1 AS `sg_lancamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_livro`
--

/*!50001 DROP VIEW IF EXISTS `vw_livro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_livro` AS select `tbl_livro`.`cd_livro` AS `cd_livro`,`tbl_livro`.`no_isbn` AS `no_isbn`,`tbl_categoria`.`ds_categoria` AS `ds_categoria`,`tbl_livro`.`nm_livro` AS `nm_livro`,`tbl_autor`.`nm_autor` AS `nm_autor`,`tbl_livro`.`no_pag` AS `no_pag`,`tbl_livro`.`vl_preco` AS `vl_preco`,`tbl_livro`.`qt_estoque` AS `qt_estoque`,`tbl_livro`.`ds_resumo_obra` AS `ds_resumo_obra`,`tbl_livro`.`ds_capa` AS `ds_capa`,`tbl_livro`.`sg_lancamento` AS `sg_lancamento` from ((`tbl_livro` join `tbl_autor` on((`tbl_livro`.`cd_autor` = `tbl_autor`.`cd_autor`))) join `tbl_categoria` on((`tbl_livro`.`cd_categoria` = `tbl_categoria`.`cd_categoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-15 22:38:57
