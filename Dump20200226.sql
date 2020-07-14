-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hcode
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `tb_funcionarios`
--

DROP TABLE IF EXISTS `tb_funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionarios` (
  `idfuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `idpessoa` int(11) NOT NULL,
  `vlsalario` decimal(10,2) NOT NULL DEFAULT '1000.00',
  `dtadmissao` date NOT NULL,
  PRIMARY KEY (`idfuncionario`),
  KEY `FK_funcionarios_pessoas` (`idpessoa`),
  CONSTRAINT `FK_funcionarios_pessoas` FOREIGN KEY (`idpessoa`) REFERENCES `tb_pessoas` (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionarios`
--

LOCK TABLES `tb_funcionarios` WRITE;
/*!40000 ALTER TABLE `tb_funcionarios` DISABLE KEYS */;
INSERT INTO `tb_funcionarios` VALUES (1,1,5000.00,'2020-02-22'),(2,5,50000.00,'2020-02-26'),(3,6,10000.00,'2020-02-26');
/*!40000 ALTER TABLE `tb_funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedidos`
--

DROP TABLE IF EXISTS `tb_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pedidos` (
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idpessoa` int(11) NOT NULL,
  `dtpedido` datetime NOT NULL,
  `vlpedido` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `FK_pedidos_pessoas` (`idpessoa`),
  CONSTRAINT `FK_pedidos_pessoas` FOREIGN KEY (`idpessoa`) REFERENCES `tb_pessoas` (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedidos`
--

LOCK TABLES `tb_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_pedidos` DISABLE KEYS */;
INSERT INTO `tb_pedidos` VALUES (1,1,'2020-02-26 00:00:00',22000.00),(2,1,'2020-02-26 00:00:00',5000.00),(3,1,'2020-02-26 00:00:00',10000.00),(4,1,'2020-02-26 00:00:00',1000.00),(5,1,'2020-02-26 00:00:00',3000.00),(6,2,'2020-02-26 00:00:00',1999.90),(7,2,'2020-02-26 00:00:00',2000.00),(8,2,'2020-02-26 00:00:00',123.45),(9,3,'2020-02-26 00:00:00',40000.00),(10,2,'2020-02-26 00:00:00',2000.00);
/*!40000 ALTER TABLE `tb_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoas`
--

DROP TABLE IF EXISTS `tb_pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pessoas` (
  `idpessoa` int(11) NOT NULL AUTO_INCREMENT,
  `desnome` varchar(256) NOT NULL,
  `dtcadstro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoas`
--

LOCK TABLES `tb_pessoas` WRITE;
/*!40000 ALTER TABLE `tb_pessoas` DISABLE KEYS */;
INSERT INTO `tb_pessoas` VALUES (1,'João','2020-02-23 01:45:05'),(2,'Glaucio','2020-02-23 02:52:56'),(3,'José','2020-02-26 12:57:10'),(4,'Massaharu','2020-02-26 19:14:13'),(5,'Divanei','2020-02-26 19:55:42'),(6,'Pedro Henrique','2020-02-26 20:45:05');
/*!40000 ALTER TABLE `tb_pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_pedidostotais`
--

DROP TABLE IF EXISTS `v_pedidostotais`;
/*!50001 DROP VIEW IF EXISTS `v_pedidostotais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_pedidostotais` AS SELECT 
 1 AS `desnome`,
 1 AS `total`,
 1 AS `media`,
 1 AS `menor valor`,
 1 AS `maior valor`,
 1 AS `total de pedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'hcode'
--

--
-- Dumping routines for database 'hcode'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_imposto_renda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_imposto_renda`(
	pvlsalario DECIMAL (10,2)
) RETURNS decimal(10,2)
BEGIN
	DECLARE vimposto DECIMAL (10,2);
    /*
			até 1903,98 isento
			de 1903,99 até 2826,65 alíquota 7,5% parcela a deduzir 142,80
			de 2826,66 até 3751,05 alíquota 15% parcela a deduzir 354,80
			de 3751,06 até 4664,68 alíquota 22,5% parcela a deduzir 636,13
			acima de 4664,68 alíquota 27,5% parcela a deduzir 869,36
	*/
    SET vimposto = CASE
		WHEN pvlsalario <= 1923.98 THEN 0
		WHEN pvlsalario >= 1923.99 AND pvlsalario <= 2826.65 THEN (pvlsalario * 0.075) - 142.80
		WHEN pvlsalario >= 2826.66 AND pvlsalario <= 3751.05 THEN (pvlsalario * 0.15) - 354.80
		WHEN pvlsalario >= 3751.06 AND pvlsalario <= 4664.68 THEN (pvlsalario * 0.225) - 636.13
		WHEN pvlsalario > 4664.68 THEN (pvlsalario * 0.275) - 869.36
    END;
	
    RETURN vimposto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_funcionario_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_funcionario_save`(
	pdesnome VARCHAR(256), 
    pvlsalario DECIMAL(10,2),
    pdtadmissao DATETIME
)
BEGIN
	DECLARE vidpessoa INT;
    START TRANSACTION;
		
        IF NOT EXISTS(SELECT idpessoa FROM tb_pessoas WHERE desnome = pdesnome) /* se */
			THEN /* então */
            INSERT INTO tb_pessoas VALUES(NULL, pdesnome, NULL);
			SET vidpessoa = LAST_INSERT_ID();
		ELSE /* senão */
			SELECT 'Usuário já cadastrado!' AS resultado;
            ROLLBACK;
		END IF;
        
        IF NOT EXISTS(SELECT idpessoa FROM tb_funcionarios WHERE idpessoa = vidpessoa) /* se */
			THEN /* então */
            INSERT INTO tb_funcionarios VALUES(NULL, vidpessoa, pvlsalario, pdtadmissao);
		ELSE /* senão */
			SELECT 'Usuário já cadastrado!' AS resultado;
            ROLLBACK;
		END IF;  
        
        COMMIT;
        SELECT 'Dados cadastrados com sucesso!' AS resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_pessoa_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pessoa_save`(
	pdesnome VARCHAR(256)
)
BEGIN /* incío da procedure */
	INSERT INTO tb_pessoas VALUES(NULL, pdesnome, NULL);
    SELECT * FROM tb_pessoas WHERE idpessoa = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_pedidostotais`
--

/*!50001 DROP VIEW IF EXISTS `v_pedidostotais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pedidostotais` AS select `b`.`desnome` AS `desnome`,sum(`a`.`vlpedido`) AS `total`,cast(avg(`a`.`vlpedido`) as decimal(10,2)) AS `media`,cast(min(`a`.`vlpedido`) as decimal(10,2)) AS `menor valor`,cast(max(`a`.`vlpedido`) as decimal(10,2)) AS `maior valor`,count(0) AS `total de pedidos` from (`tb_pedidos` `a` join `tb_pessoas` `b` on((`a`.`idpessoa` = `b`.`idpessoa`))) group by `b`.`idpessoa` order by sum(`a`.`vlpedido`) */;
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

-- Dump completed on 2020-02-26 19:08:37
