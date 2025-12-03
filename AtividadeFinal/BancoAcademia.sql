-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: academia
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `plano` varchar(255) DEFAULT NULL,
  `precoPlano` decimal(10,2) DEFAULT NULL,
  `formaPagamento` varchar(50) DEFAULT NULL,
  `forma_pagamento` varchar(255) DEFAULT NULL,
  `preco_plano` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `idAluno` int NOT NULL AUTO_INCREMENT,
  `nomeAluno` char(50) DEFAULT NULL,
  `cpfAluno` char(50) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `telefone` char(20) DEFAULT NULL,
  `endereco` char(200) DEFAULT NULL,
  `idPlano` int DEFAULT NULL,
  PRIMARY KEY (`idAluno`),
  KEY `idPlano` (`idPlano`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`idPlano`) REFERENCES `planos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Ana Paula Silva','123.456.789-01','ana.silva@email.com','(11) 91234-5678','Rua das Flores, 100 - São Paulo - SP',1),(2,'Bruno Lima','234.567.890-12','bruno.lima@email.com','(11) 93456-7812','Rua dos Pinheiros, 45 - São Paulo - SP',2),(3,'Carlos Eduardo','345.678.901-23','carlos.edu@email.com','(11) 94567-8123','Rua São Jorge, 321 - São Paulo - SP',3),(4,'Daniela Costa','456.789.012-34','dani.costa@email.com','(11) 95678-1234','Rua Liberdade, 77 - São Paulo - SP',1),(5,'Eduardo Mendes','567.890.123-45','edu.mendes@email.com','(11) 97890-2345','Rua Boa Vista, 200 - São Paulo - SP',2),(6,'Fernanda Souza','678.901.234-56','fer.souza@email.com','(11) 91222-3333','Rua do Comércio, 89 - São Paulo - SP',3),(7,'Gabriel Rocha','789.012.345-67','gab.rocha@email.com','(11) 92333-4444','Rua Augusta, 188 - São Paulo - SP',1),(8,'Helena Martins','890.123.456-78','helena.m@email.com','(11) 93444-5555','Rua da Consolação, 310 - São Paulo - SP',2),(9,'Igor Santos','901.234.567-89','igor.santos@email.com','(11) 94555-6666','Rua Haddock Lobo, 12 - São Paulo - SP',3),(10,'Juliana Reis','012.345.678-90','jul.reis@email.com','(11) 95666-7777','Rua Frei Caneca, 234 - São Paulo - SP',1),(11,'Kleber Almeida','111.222.333-44','kleber.al@email.com','(11) 96777-8888','Rua Vergueiro, 456 - São Paulo - SP',2),(12,'Larissa Pinto','222.333.444-55','larissa.p@email.com','(11) 97888-9999','Rua Domingos de Morais, 510 - São Paulo - SP',3),(13,'Marcos Vieira','333.444.555-66','marcos.v@email.com','(11) 98999-0000','Rua Apeninos, 601 - São Paulo - SP',1),(14,'Natália Ramos','444.555.666-77','natalia.r@email.com','(11) 90000-1111','Rua Tutoia, 712 - São Paulo - SP',2),(15,'Otávio Fernandes','555.666.777-88','otavio.f@email.com','(11) 91111-2222','Rua Estela, 824 - São Paulo - SP',3),(16,'Patrícia Gomes','666.777.888-99','pat.gomes@email.com','(11) 92222-3333','Rua Cubatão, 935 - São Paulo - SP',1),(17,'Rafael Cunha','777.888.999-00','rafael.c@email.com','(11) 93333-4444','Rua Sena Madureira, 1001 - São Paulo - SP',2),(18,'Sandra Lima','888.999.000-11','sandra.l@email.com','(11) 94444-5555','Rua Borges Lagoa, 1112 - São Paulo - SP',3),(19,'Thiago Nunes','999.000.111-22','thiago.n@email.com','(11) 95555-6666','Rua Botucatu, 1213 - São Paulo - SP',1),(20,'Úrsula Moraes','000.111.222-33','ursula.m@email.com','(11) 96666-7777','Rua Francisco Morato, 1314 - São Paulo - SP',2),(21,'Victor Hugo','101.112.123-44','victor.h@email.com','(11) 97777-8888','Rua Cardoso de Almeida, 1415 - São Paulo - SP',3),(22,'Wesley Dias','202.223.234-55','wesley.d@email.com','(11) 98888-9999','Rua da Glória, 1516 - São Paulo - SP',1),(23,'Ximena Prado','303.334.345-66','ximena.p@email.com','(11) 99999-0000','Rua Tamandaré, 1617 - São Paulo - SP',2),(24,'Yuri Almeida','404.445.456-77','yuri.a@email.com','(11) 90011-2233','Rua Conde de São Joaquim, 1718 - São Paulo - SP',3),(25,'Zilda Souza','505.556.567-88','zilda.s@email.com','(11) 91122-3344','Rua São Joaquim, 1819 - São Paulo - SP',1),(26,'Alberto Torres','606.667.678-99','alberto.t@email.com','(11) 92233-4455','Rua Vergueiro, 1920 - São Paulo - SP',2),(27,'Beatriz Rocha','707.778.789-00','bea.rocha@email.com','(11) 93344-5566','Rua Luís Gama, 2021 - São Paulo - SP',3),(28,'Caio Martins','808.889.890-11','caio.m@email.com','(11) 94455-6677','Rua Santa Cruz, 2122 - São Paulo - SP',1),(29,'Denise Lopes','909.990.901-22','denise.l@email.com','(11) 95566-7788','Rua Dom Pedro I, 2223 - São Paulo - SP',2),(30,'Enzo Oliveira','010.101.012-33','enzo.o@email.com','(11) 96677-8899','Rua Dr. Ricardo Jafet, 2324 - São Paulo - SP',3),(31,'Fabiana Ramos','121.212.123-44','fab.ramos@email.com','(11) 97788-9900','Rua Padre Machado, 2425 - São Paulo - SP',1),(32,'Gustavo Lima','232.323.234-55','gust.lima@email.com','(11) 98899-0011','Rua Loefgren, 2526 - São Paulo - SP',2),(33,'Heloísa Cruz','343.434.345-66','helo.cruz@email.com','(11) 99900-1122','Rua Sena Madureira, 2627 - São Paulo - SP',3),(34,'Isabela Freitas','454.545.456-77','isabela.f@email.com','(11) 90011-2233','Rua Domingos de Morais, 2728 - São Paulo - SP',1),(35,'Jonas Silva','565.656.567-88','jonas.s@email.com','(11) 91122-3344','Rua Dr. Bacelar, 2829 - São Paulo - SP',2),(36,'Karen Rocha','676.767.678-99','karen.r@email.com','(11) 92233-4455','Rua Estado de Israel, 2930 - São Paulo - SP',3),(37,'Leonardo Melo','787.878.789-00','leo.melo@email.com','(11) 93344-5566','Rua Rio Grande, 3031 - São Paulo - SP',1),(38,'Marta Fernandes','898.989.890-11','marta.f@email.com','(11) 94455-6677','Rua Afonso Celso, 3132 - São Paulo - SP',2),(39,'Nicolas Alves','909.090.901-22','nico.alves@email.com','(11) 95566-7788','Rua Marselhesa, 3233 - São Paulo - SP',3),(40,'Olívia Castro','010.101.112-33','olivia.c@email.com','(11) 96677-8899','Rua França Pinto, 3334 - São Paulo - SP',1);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bioimpedancia`
--

DROP TABLE IF EXISTS `bioimpedancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bioimpedancia` (
  `idBioimpedancia` int NOT NULL,
  `pesoAluno` double DEFAULT NULL,
  `alturaAluno` double DEFAULT NULL,
  `IMCaluno` double DEFAULT NULL,
  `fk_IDalunos_id` int DEFAULT NULL,
  `ICQaluno` double DEFAULT NULL,
  PRIMARY KEY (`idBioimpedancia`),
  KEY `fk_IDalunos_id` (`fk_IDalunos_id`),
  CONSTRAINT `bioimpedancia_ibfk_1` FOREIGN KEY (`fk_IDalunos_id`) REFERENCES `alunos` (`idAluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bioimpedancia`
--

LOCK TABLES `bioimpedancia` WRITE;
/*!40000 ALTER TABLE `bioimpedancia` DISABLE KEYS */;
/*!40000 ALTER TABLE `bioimpedancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biopedancia`
--

DROP TABLE IF EXISTS `biopedancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biopedancia` (
  `idBiopedancia` int NOT NULL AUTO_INCREMENT,
  `peso` float DEFAULT NULL,
  `altura` double DEFAULT NULL,
  `IMC` double DEFAULT NULL,
  `idAluno` int DEFAULT NULL,
  `ICQ` double DEFAULT NULL,
  PRIMARY KEY (`idBiopedancia`),
  KEY `idAluno` (`idAluno`),
  CONSTRAINT `biopedancia_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `alunos` (`idAluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biopedancia`
--

LOCK TABLES `biopedancia` WRITE;
/*!40000 ALTER TABLE `biopedancia` DISABLE KEYS */;
/*!40000 ALTER TABLE `biopedancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despesas`
--

DROP TABLE IF EXISTS `despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despesas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` char(50) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `dataPag` date DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `statu` tinyint(1) DEFAULT NULL,
  `idUsuarios` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuarios` (`idUsuarios`),
  CONSTRAINT `despesas_ibfk_1` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesas`
--

LOCK TABLES `despesas` WRITE;
/*!40000 ALTER TABLE `despesas` DISABLE KEYS */;
INSERT INTO `despesas` VALUES (1,'Mensalidade Setembro - Plano Básico',80,'2025-09-05','2025-09-10',1,1),(2,'Manutenção de Equipamentos',500,NULL,'2025-09-01',0,NULL),(3,'Mensalidade Outubro - Plano Médio',100,'2025-10-01','2025-10-10',1,2),(4,'Taxa de Inscrição Competição',200,NULL,'2025-09-05',0,NULL),(5,'Mensalidade Setembro - Plano Avançado',120,'2025-09-05','2025-09-10',1,3),(6,'Taxa de Manutenção de Estrutura',150,NULL,'2025-09-10',0,NULL),(7,'Mensalidade Outubro - Plano Básico',80,'2025-10-05','2025-10-10',1,4),(8,'Manutenção de Equipamentos',500,NULL,'2025-09-01',0,NULL),(9,'Mensalidade Setembro - Plano Médio',100,'2025-09-01','2025-09-10',1,5),(10,'Taxa de Inscrição Competição',200,NULL,'2025-09-05',0,NULL),(11,'Mensalidade Outubro - Plano Avançado',120,'2025-10-01','2025-10-10',1,6),(12,'Taxa de Manutenção de Estrutura',150,NULL,'2025-09-10',0,NULL),(13,'Mensalidade Setembro - Plano Básico',80,'2025-09-05','2025-09-10',1,7),(14,'Manutenção de Equipamentos',500,NULL,'2025-09-01',0,NULL),(15,'Mensalidade Outubro - Plano Médio',100,'2025-10-05','2025-10-10',1,8),(16,'Taxa de Inscrição Competição',200,NULL,'2025-09-05',0,NULL),(17,'Mensalidade Setembro - Plano Avançado',120,'2025-09-05','2025-09-10',1,9),(18,'Taxa de Manutenção de Estrutura',150,NULL,'2025-09-10',0,NULL),(19,'Mensalidade Outubro - Plano Básico',80,'2025-10-05','2025-10-10',1,10);
/*!40000 ALTER TABLE `despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercicio`
--

DROP TABLE IF EXISTS `exercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercicio` (
  `IDexercicio` int NOT NULL AUTO_INCREMENT,
  `grupoExercicio` varchar(50) DEFAULT NULL,
  `nomeExercicio` varchar(75) DEFAULT NULL,
  `obsExercicio` varchar(75) DEFAULT NULL,
  `nivel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDexercicio`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicio`
--

LOCK TABLES `exercicio` WRITE;
/*!40000 ALTER TABLE `exercicio` DISABLE KEYS */;
INSERT INTO `exercicio` VALUES (1,'Peito','Supino Reto','Exercicio de Peito','Dificil'),(2,'Peito','Supino Inclinado','Exercicio de Peito','Dificil'),(3,'Peito','Supino Declinado','Exercicio de Peito','Dificil'),(4,'Peito','Crucifixo','Exercicio de Peito','Dificil'),(5,'Peito','Voador','Exercicio de Peito','Dificil'),(6,'Peito','Cross Over','Exercicio de Peito','Dificil'),(7,'Costas','Puxador','Exercicio de Costas','Dificil'),(8,'Costas','Remada Baixa','Exercicio de Costas','Dificil'),(9,'Costas','Remada Cavalinho','Exercicio de Costas','Dificil'),(10,'Costas','Remada Unilateral','Exercicio de Costas','Dificil'),(11,'Costas','Fly Invertido','Exercicio de Costas','Dificil'),(12,'Costas','Crucifixo Invertido','Exercicio de Costas','Dificil'),(13,'Costas','Pullover','Exercicio de Costas','Dificil'),(14,'Costas','Barra Fixa','Exercicio de Costas','Dificil'),(15,'Costas','Remada Curvada','Exercicio de Costas','Dificil'),(16,'Costas','Polia Alta','Exercicio de Costas','Dificil'),(17,'Perna','Agachamento','Exercicio de Perna','Muito dificil'),(18,'Perna','Extensora','Exercicio de Perna','Muito dificil'),(19,'Perna','Flexora','Exercicio de Perna','Muito dificil'),(20,'Perna','Adutora','Exercicio de Perna','Muito dificil'),(21,'Perna','Abdutora','Exercicio de Perna','Muito dificil'),(22,'Perna','Panturrilha','Exercicio de Perna','Muito dificil'),(23,'Perna','Levantamento Terra','Exercicio de Perna','Muito dificil'),(24,'Perna','Leg Press','Exercicio de Perna','Muito dificil'),(25,'Gluteo','Quatro Apoios','Exercicio de Gluteo','Dificil'),(26,'Gluteo','Polia','Exercicio de Gluteo','Dificil'),(27,'Ombro','Desenv Maquina','Exercicio de Ombro','Dificil'),(28,'Ombro','Desenv Barra','Exercicio de Ombro','Dificil'),(29,'Ombro','Desenv Halteres','Exercicio de Ombro','Dificil'),(30,'Ombro','Elevacao Lateral','Exercicio de Ombro','Dificil'),(31,'Ombro','Elevacao Frontal','Exercicio de Ombro','Dificil'),(32,'Ombro','Encolhimento','Exercicio de Ombro','Dificil'),(33,'Ombro','Crucifixo Invertido','Exercicio de Ombro','Dificil'),(34,'Biceps','Rosca Direta','Exercicio de Biceps','Dificil'),(35,'Biceps','Rosca Alternada','Exercicio de Biceps','Dificil'),(36,'Biceps','Rosca Concentrada','Exercicio de Biceps','Dificil'),(37,'Biceps','Rosca Scott','Exercicio de Biceps','Dificil'),(38,'Biceps','Rosca Martelo','Exercicio de Biceps','Dificil'),(39,'Biceps','Rosca Inversa','Exercicio de Biceps','Dificil'),(40,'Biceps','Rosca 21','Exercicio de Biceps','Dificil'),(41,'Triceps','Triceps Corda','Exercicio de Triceps','Dificil'),(42,'Triceps','Triceps Testa','Exercicio de Triceps','Dificil'),(43,'Triceps','Triceps Frances','Exercicio de Triceps','Dificil'),(44,'Triceps','Triceps Supinado','Exercicio de Triceps','Dificil'),(45,'Triceps','Triceps Paralela','Exercicio de Triceps','Dificil'),(46,'Triceps','Triceps Rosca','Exercicio de Triceps','Dificil'),(47,'Triceps','Triceps Banco','Exercicio de Triceps','Dificil'),(48,'Triceps','Kick Back','Exercicio de Triceps','Dificil'),(49,'Outros','Polia','Outros','Dificil'),(50,'Outros','Abdominal','Outros','Dificil');
/*!40000 ALTER TABLE `exercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapag`
--

DROP TABLE IF EXISTS `formapag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formapag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` char(50) DEFAULT NULL,
  `banco` char(50) DEFAULT NULL,
  `statu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapag`
--

LOCK TABLES `formapag` WRITE;
/*!40000 ALTER TABLE `formapag` DISABLE KEYS */;
INSERT INTO `formapag` VALUES (1,'Cartão de Crédito Visa','Banco do Brasil',1),(2,'Boleto Bancário','Caixa Econômica',1),(3,'Pix','Nubank',1),(4,'Dinheiro',NULL,1),(5,'Cheque',NULL,0);
/*!40000 ALTER TABLE `formapag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequencia`
--

DROP TABLE IF EXISTS `frequencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frequencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dataFreq` date DEFAULT NULL,
  `horaFreq` time DEFAULT NULL,
  `idAlunos` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idAlunos` (`idAlunos`),
  CONSTRAINT `frequencia_ibfk_1` FOREIGN KEY (`idAlunos`) REFERENCES `alunos` (`idAluno`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequencia`
--

LOCK TABLES `frequencia` WRITE;
/*!40000 ALTER TABLE `frequencia` DISABLE KEYS */;
INSERT INTO `frequencia` VALUES (1,'2025-09-28','08:00:00',1),(2,'2025-09-28','09:00:00',2),(3,'2025-09-29','08:30:00',3),(4,'2025-09-29','09:15:00',4),(5,'2025-09-30','10:00:00',5),(6,'2025-09-30','11:00:00',6),(7,'2025-10-01','08:00:00',7),(8,'2025-10-01','09:00:00',8),(9,'2025-10-02','08:45:00',9),(10,'2025-10-02','10:30:00',10),(11,'2025-10-03','08:15:00',11),(12,'2025-10-03','09:30:00',12),(13,'2025-10-04','08:00:00',13),(14,'2025-10-04','09:00:00',14),(15,'2025-10-05','08:30:00',15),(16,'2025-10-05','09:45:00',16),(17,'2025-10-06','10:00:00',17),(18,'2025-10-06','11:00:00',18),(19,'2025-10-07','08:00:00',19),(20,'2025-10-07','09:00:00',20),(21,'2025-10-08','08:15:00',21),(22,'2025-10-08','09:30:00',22),(23,'2025-10-09','08:45:00',23),(24,'2025-10-09','10:00:00',24),(25,'2025-10-10','09:00:00',25),(26,'2025-10-10','10:30:00',26),(27,'2025-10-01','08:00:00',27),(28,'2025-10-01','09:15:00',28),(29,'2025-10-02','08:30:00',29),(30,'2025-10-02','10:00:00',30),(31,'2025-10-03','09:00:00',31),(32,'2025-10-03','10:15:00',32),(33,'2025-10-04','08:30:00',33),(34,'2025-10-04','09:30:00',34),(35,'2025-10-05','08:00:00',35),(36,'2025-10-05','09:30:00',36),(37,'2025-10-06','10:00:00',37),(38,'2025-10-06','11:00:00',38),(39,'2025-10-07','08:00:00',39),(40,'2025-10-07','09:30:00',40);
/*!40000 ALTER TABLE `frequencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensalidade`
--

DROP TABLE IF EXISTS `mensalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensalidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dataMen` date DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `competencia` date DEFAULT NULL,
  `idFormaPag` int DEFAULT NULL,
  `idAlunos` int DEFAULT NULL,
  `idUsuarios` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFormaPag` (`idFormaPag`),
  KEY `idAlunos` (`idAlunos`),
  KEY `idUsuarios` (`idUsuarios`),
  CONSTRAINT `mensalidade_ibfk_1` FOREIGN KEY (`idFormaPag`) REFERENCES `formapag` (`id`),
  CONSTRAINT `mensalidade_ibfk_2` FOREIGN KEY (`idAlunos`) REFERENCES `alunos` (`idAluno`),
  CONSTRAINT `mensalidade_ibfk_3` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensalidade`
--

LOCK TABLES `mensalidade` WRITE;
/*!40000 ALTER TABLE `mensalidade` DISABLE KEYS */;
INSERT INTO `mensalidade` VALUES (1,'2025-09-01',80,'2025-09-01',1,1,2),(2,'2025-09-03',100,'2025-09-01',2,2,3),(3,'2025-09-02',120,'2025-09-01',3,3,1),(4,'2025-09-04',80,'2025-09-01',4,4,5),(5,'2025-09-05',100,'2025-09-01',5,5,4),(6,'2025-09-06',120,'2025-09-01',1,6,6),(7,'2025-09-07',80,'2025-09-01',2,7,2),(8,'2025-09-08',100,'2025-09-01',3,8,3),(9,'2025-09-09',120,'2025-09-01',4,9,1),(10,'2025-09-10',80,'2025-09-01',5,10,5),(11,'2025-10-01',100,'2025-10-01',1,11,6),(12,'2025-10-02',120,'2025-10-01',2,12,7),(13,'2025-10-03',80,'2025-10-01',3,13,4),(14,'2025-10-04',100,'2025-10-01',4,14,2),(15,'2025-10-05',120,'2025-10-01',5,15,3),(16,'2025-10-06',80,'2025-10-01',1,16,1),(17,'2025-10-07',100,'2025-10-01',2,17,6),(18,'2025-10-08',120,'2025-10-01',3,18,4),(19,'2025-10-09',80,'2025-10-01',4,19,3),(20,'2025-10-10',100,'2025-10-01',5,20,2),(21,'2025-09-01',120,'2025-09-01',1,21,1),(22,'2025-09-02',80,'2025-09-01',2,22,5),(23,'2025-09-03',100,'2025-09-01',3,23,6),(24,'2025-09-04',120,'2025-09-01',4,24,7),(25,'2025-09-05',80,'2025-09-01',5,25,2),(26,'2025-09-06',100,'2025-09-01',1,26,3),(27,'2025-09-07',120,'2025-09-01',2,27,1),(28,'2025-09-08',80,'2025-09-01',3,28,4),(29,'2025-09-09',100,'2025-09-01',4,29,6),(30,'2025-09-10',120,'2025-09-01',5,30,2),(31,'2025-10-01',80,'2025-10-01',1,31,1),(32,'2025-10-02',100,'2025-10-01',2,32,3),(33,'2025-10-03',120,'2025-10-01',3,33,5),(34,'2025-10-04',80,'2025-10-01',4,34,7),(35,'2025-10-05',100,'2025-10-01',5,35,2),(36,'2025-10-06',120,'2025-10-01',1,36,4),(37,'2025-10-07',80,'2025-10-01',2,37,6),(38,'2025-10-08',100,'2025-10-01',3,38,1),(39,'2025-10-09',120,'2025-10-01',4,39,3),(40,'2025-10-10',80,'2025-10-01',5,40,2);
/*!40000 ALTER TABLE `mensalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planos`
--

DROP TABLE IF EXISTS `planos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` char(50) DEFAULT NULL,
  `precoPlano` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planos`
--

LOCK TABLES `planos` WRITE;
/*!40000 ALTER TABLE `planos` DISABLE KEYS */;
INSERT INTO `planos` VALUES (1,'Plano Básico',80),(2,'Plano Médio',100),(3,'Plano Avançado',120);
/*!40000 ALTER TABLE `planos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'funcionario1','1234','FUNCIONARIO'),(2,'admin1','admin123','ADMIN');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` char(50) DEFAULT NULL,
  `login` char(50) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `senha` char(50) DEFAULT NULL,
  `statu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Ana Paula Silva','ana.silva','ana.silva@email.com','senha123',1),(2,'Bruno Lima','bruno.lima','bruno.lima@email.com','senha123',1),(3,'Carlos Eduardo','carlos.edu','carlos.edu@email.com','senha123',0),(4,'Daniela Costa','dani.costa','dani.costa@email.com','senha123',1),(5,'Eduardo Mendes','edu.mendes','edu.mendes@email.com','senha123',1),(6,'Fernanda Souza','fer.souza','fer.souza@email.com','senha123',0),(7,'Gabriel Rocha','gab.rocha','gab.rocha@email.com','senha123',1),(8,'Helena Martins','helena.m','helena.m@email.com','senha123',1),(9,'Igor Santos','igor.santos','igor.santos@email.com','senha123',0),(10,'Juliana Reis','jul.reis','jul.reis@email.com','senha123',1),(11,'Kleber Almeida','kleber.al','kleber.al@email.com','senha123',1),(12,'Larissa Pinto','larissa.p','larissa.p@email.com','senha123',1),(13,'Marcos Vieira','marcos.v','marcos.v@email.com','senha123',0),(14,'Natália Ramos','natalia.r','natalia.r@email.com','senha123',1),(15,'Otávio Fernandes','otavio.f','otavio.f@email.com','senha123',1),(16,'Patrícia Gomes','pat.gomes','pat.gomes@email.com','senha123',0),(17,'Rafael Cunha','rafael.c','rafael.c@email.com','senha123',1),(18,'Sandra Lima','sandra.l','sandra.l@email.com','senha123',1),(19,'Thiago Nunes','thiago.n','thiago.n@email.com','senha123',0),(20,'Úrsula Moraes','ursula.m','ursula.m@email.com','senha123',1),(21,'Victor Hugo','victor.h','victor.h@email.com','senha123',1),(22,'Wesley Dias','wesley.d','wesley.d@email.com','senha123',1),(23,'Ximena Prado','ximena.p','ximena.p@email.com','senha123',0),(24,'Yuri Almeida','yuri.a','yuri.a@email.com','senha123',1),(25,'Zilda Souza','zilda.s','zilda.s@email.com','senha123',1),(26,'Alberto Torres','alberto.t','alberto.t@email.com','senha123',0),(27,'Beatriz Rocha','bea.rocha','bea.rocha@email.com','senha123',1),(28,'Caio Martins','caio.m','caio.m@email.com','senha123',1),(29,'Denise Lopes','denise.l','denise.l@email.com','senha123',1),(30,'Enzo Oliveira','enzo.o','enzo.o@email.com','senha123',0),(31,'Fabiana Ramos','fab.ramos','fab.ramos@email.com','senha123',1),(32,'Gustavo Lima','gust.lima','gust.lima@email.com','senha123',1),(33,'Heloísa Cruz','helo.cruz','helo.cruz@email.com','senha123',0),(34,'Isabela Freitas','isabela.f','isabela.f@email.com','senha123',1),(35,'Jonas Silva','jonas.s','jonas.s@email.com','senha123',1),(36,'Karen Rocha','karen.r','karen.r@email.com','senha123',1),(37,'Leonardo Melo','leo.melo','leo.melo@email.com','senha123',0),(38,'Marta Fernandes','marta.f','marta.f@email.com','senha123',1),(39,'Nicolas Alves','nico.alves','nico.alves@email.com','senha123',1),(40,'Olívia Castro','olivia.c','olivia.c@email.com','senha123',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-03 16:47:28
