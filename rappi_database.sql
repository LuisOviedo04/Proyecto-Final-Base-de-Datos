CREATE DATABASE  IF NOT EXISTS `rappi_database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rappi_database`;
-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rappi_database
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.39-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `idCiudad` varchar(45) NOT NULL,
  `nombreCiudades` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES ('BC','Bucaramanga'),('BQ','Barranquilla'),('BT','Bogota'),('CT','Cartagena'),('MD','Medellin'),('VP','Valledupar');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` varchar(45) NOT NULL,
  `nombresCliente` varchar(45) DEFAULT NULL,
  `apellidosCliente` varchar(45) DEFAULT NULL,
  `idDireccion` varchar(45) DEFAULT NULL,
  `celularCliente` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_idDireccion_idx` (`idDireccion`),
  CONSTRAINT `fk_idDireccion` FOREIGN KEY (`idDireccion`) REFERENCES `direccioncliente` (`idDireccion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('23910989','Juan David','Sánchez','DC21','3106118629','gallego610@gmail.com'),('24132225','Mariangel','Rojas','DC06','3116958777','clamiloq@hotmail.com'),('27826527','Andrés Felipe','Moreno','DC08','3115807982','franjazago1620@hotmail.com'),('27933249','Salomé','Díaz','DC02','3115444075','pgbarinas@euphoria-net.com'),('29203630','Dulce María','Gómez','DC13','3119256356','radioservicio@gmail.com'),('32163798','Dulce María','Ortíz','DC29','3109525444','edisn170@gmail.com'),('35073192','Ana Sofía','González','DC34','3007004301','suilem.espinosa@live.com'),('35747196','María Fernanda','Martínez','DC33','3006751984','malcadelatorre@hotmail.com'),('37294957','Gabriela','Muñoz','DC05','3115861665','judilemo@gmail.com'),('39105823','Juan Esteban','Ortíz','DC09','3115616280','gbarinasp@euphoria-net.com'),('45753309','Juan Diego','Vargas','DC10','3116656227','jamagu47@yahoo.es'),('46547272','María José','Hernández','DC39','3009338206','rolete7@gmail.com'),('47186069','María Camila','López','DC36','3008670226','yaznair62@hotmail.com'),('47588516','Samuel David','Díaz','DC22','3109499279','dianavarh@yahoo.es'),('54460765','Mariana','Torres','DC04','3119659123','hamayapia@hotmail.com'),('54526358','Juan Esteban','Muñoz','DC25','3106946895','davidsbernalnavarro@gmail.com'),('55170472','Miguel Angel','Rojas','DC46','3005414340','sergio4327@hotmail.com'),('57387183','Samantha','Sánchez','DC49','3006984661','idpamo@gmail.com'),('58316888','Juan Pablo','Jiménez','DC07','3117127492','dayannareinel@gmail.com'),('58397924','María José','Gómez','DC12','3118020739','gnavar56@hotmail.com'),('58572627','Luisa Fernanda','Gutiérrez','DC31','3108970944','ncarrasco@phamayect.com'),('60111250','Juan José','Muñoz','DC45','3008062236','jimmy.velez.munoz@hotmail.com'),('62029971','Angel David','López','DC11','3119813620','maria_isleny_r@hotmail.com'),('62231866','Juan José','Gómez','DC18','3107291597','yuyi_224@hotmail.com'),('63317188','Sara Valentina','Castro','DC32','3006045000','krlos.arthur@gmail.com'),('64231764','María Fernanda','Torres','DC44','3007131248','ALVAROGALVEZA@GMAIL.COM'),('64696256','Luisa Fernanda','Díaz','DC42','3005971678','raulcadena05@hotmail.com'),('65878713','Valeria','Díaz','DC50','3009099946','fddd@hotmail.com'),('66202332','Sara Sofía','Vargas','DC30','3108546712','yoambeto@gmail.com'),('67453414','Juan Sebastián','Pérez','DC20','3105957609','taticas0505@hotmail.com'),('68051853','María Alejandra','Gómez','DC37','3005990699','claritahenao28@hotmail.com'),('69263037','Isabella','Ramírez','DC03','3119250505','Omarjose757522@gmail.com'),('71070300','Luisa Fernanda','González','DC15','3118942366','juankaossa@hotmail.com'),('74299709','Andrés Felipe','Torres','DC24','3109988472','joliemun28@hotmail.com'),('74447719','Antonella','Pérez','DC48','3009351435','induscadena@gmail.com'),('74647651','Luciana','Sánchez','DC01','3116362602','diegaarroyaveg@gmail.com'),('75268707','Juan Diego','Rojas','DC26','3107292677','yesilver@misena.edu.co'),('75795452','Sara Valentina','García','DC16','3105951123','adrianmorales869@hotmail.com'),('77160775','Angel David','Gómez','DC38','3007874908','jecheverri11@hotmail.com'),('77621217','Sara Sofía','Hernández','DC14','3119442340','andresmora20@gmail.com'),('79417980','Dulce María','Pérez','DC40','3009447646','nanacastro1979@hotmail.com'),('79555780','Miguel Angel','Hernández','DC19','3109178279','luisangeliz_1720@hotmail.com'),('79696292','María Fernanda','López','DC17','3109974205','yuyi_224@hotmail.com'),('81965805','Sara Valentina','Ramírez','DC43','3008391729','vhn1959@gmail.com'),('82947893','Ana Lucía','García','DC35','3006024242','andresgonz17@hotmail.com'),('84627154','Juan Pablo','Ramírez','DC23','3108389963','dialci186@yahoo.es'),('85361877','Angel David','Jiménez','DC27','3108535807','danielacadenatroncoso@hotmail.com'),('87767009','Sara Sofía','Sánchez','DC41','3006148930','nameca0103@hotmail.es'),('87856219','María José','Moreno','DC28','3106907269','sandrasandoval_7@hotmail.com'),('90083493','Juan Sebastián','Hernández','DC47','3009236249','sigfridocharris@hotmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta` (
  `idCuenta` varchar(45) NOT NULL,
  `idCliente` varchar(45) DEFAULT NULL,
  `Saldo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCuenta`),
  KEY `fk_idCliente_idx` (`idCliente`),
  CONSTRAINT `fk2_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES ('92553350105','74447719','900000'),('92720241451','87767009','450000'),('92848158118','24132225','300000'),('93580612811','71070300','780000'),('93616573787','54526358','960000'),('93790515801','47588516','450000'),('93840317538','75268707','600000'),('93851632480','75795452','320000'),('94079992367','55170472','780000'),('94376356580','47186069','900000'),('94442676093','46547272','600000'),('94800456951','74299709','390000'),('95067727507','79696292','900000'),('95207258975','58316888','600000'),('95279358501','77621217','980000'),('95471561117','81965805','960000'),('95549838904','60111250','980000'),('95575849964','68051853','100000'),('95752628334','39105823','450000'),('95805823122','62231866','100000'),('95882195566','57387183','100000'),('96372876233','74647651','700000'),('96376880275','58397924','960000'),('96411470371','82947893','320000'),('96566651220','35073192','780000'),('96598321936','64231764','120000'),('96750339292','23910989','600000'),('96787900351','29203630','120000'),('96830143883','64696256','490000'),('96939772695','58572627','960000'),('97084410469','79555780','300000'),('97103446801','45753309','490000'),('97293402266','63317188','120000'),('97329791400','62029971','390000'),('97566126963','32163798','490000'),('97570728704','85361877','600000'),('97667165388','77160775','300000'),('97779092881','69263037','100000'),('97850125137','27826527','600000'),('97910662188','37294957','100000'),('98538758807','54460765','900000'),('98588102285','84627154','490000'),('99021836286','27933249','500000'),('99097204209','87856219','450000'),('99258683023','65878713','300000'),('99465946158','67453414','600000'),('99468518753','66202332','390000'),('99518766487','79417980','600000'),('99572463300','90083493','320000'),('99886609550','35747196','980000');
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccioncliente`
--

DROP TABLE IF EXISTS `direccioncliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccioncliente` (
  `idDireccion` varchar(45) NOT NULL,
  `Domicilio` varchar(45) DEFAULT NULL,
  `idCliente` varchar(45) DEFAULT NULL,
  `idCiudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDireccion`),
  KEY `fk_idCliente_idx` (`idCliente`),
  KEY `fk_idCiudad_idx` (`idCiudad`),
  CONSTRAINT `fk1_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idCiudad` FOREIGN KEY (`idCiudad`) REFERENCES `ciudades` (`idCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccioncliente`
--

LOCK TABLES `direccioncliente` WRITE;
/*!40000 ALTER TABLE `direccioncliente` DISABLE KEYS */;
INSERT INTO `direccioncliente` VALUES ('DC01','CALLE 388 #234','74647651','CT'),('DC02','CALLE 358 #939','27933249','CT'),('DC03','CALLE 347 #350','69263037','BC'),('DC04','CALLE 298 #640','54460765','CT'),('DC05','CALLE 248 #915','37294957','BC'),('DC06','CALLE 245 #036','24132225','BQ'),('DC07','CALLE 239 #633','58316888','BQ'),('DC08','CALLE 239 #519','27826527','CT'),('DC09','CALLE 233 #965','39105823','BT'),('DC10','CALLE 230 #945','45753309','BC'),('DC11','CALLE 444 #822','62029971','BQ'),('DC12','CALLE 441 #090','58397924','CT'),('DC13','CALLE 444 #090','29203630','BC'),('DC14','CALLE 419 #918','77621217','BT'),('DC15','CALLE 481 #042','71070300','BQ'),('DC16','CALLE 456 #199','75795452','CT'),('DC17','CALLE 444 #822','79696292','BT'),('DC18','CALLE 444 #090','62231866','VP'),('DC19','CALLE 419 #918','79555780','BC'),('DC20','CALLE 411 #567','67453414','BQ'),('DC21','CALLE 388 #627','23910989','BT'),('DC22','CALLE 358 #939','47588516','CT'),('DC23','CALLE 347 #350','84627154','VP'),('DC24','CALLE 298 #640','74299709','BQ'),('DC25','CALLE 248 #915','54526358','BQ'),('DC26','CALLE 245 #036','75268707','BT'),('DC27','CALLE 239 #633','85361877','BT'),('DC28','CALLE 239 #519','87856219','BC'),('DC29','CALLE 233 #965','32163798','BQ'),('DC30','CALLE 230 #945','66202332','CT'),('DC31','CALLE 218 #169','58572627','BT'),('DC32','CALLE 216 #873','63317188','CT'),('DC33','CALLE 516 #480','35747196','BC'),('DC34','CALLE 481 #042','35073192','BQ'),('DC35','CALLE 456 #199','82947893','BC'),('DC36','CALLE 444 #822','47186069','BT'),('DC37','CALLE 434 #090','68051853','BQ'),('DC38','CALLE 444 #090','77160775','BC'),('DC39','CALLE 419 #918','46547272','BQ'),('DC40','CALLE 411 #567','79417980','BC'),('DC41','CALLE 388 #627','87767009','MD'),('DC42','CALLE 358 #939','64696256','BC'),('DC43','CALLE 347 #350','81965805','MD'),('DC44','CALLE 298 #640','64231764','BC'),('DC45','CALLE 248 #915','60111250','MD'),('DC46','CALLE 245 #036','55170472','BQ'),('DC47','CALLE 419 #918','90083493','MD'),('DC48','CALLE 411 #567','74447719','BC'),('DC49','CALLE 388 #627','57387183','MD'),('DC50','CALLE 358 #939','65878713','MD');
/*!40000 ALTER TABLE `direccioncliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dominio`
--

DROP TABLE IF EXISTS `dominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dominio` (
  `idDominio` varchar(45) NOT NULL,
  `Dominio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDominio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dominio`
--

LOCK TABLES `dominio` WRITE;
/*!40000 ALTER TABLE `dominio` DISABLE KEYS */;
INSERT INTO `dominio` VALUES ('D001','Visa'),('D002','MasterCard'),('D003','Maestro');
/*!40000 ALTER TABLE `dominio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjeta`
--

DROP TABLE IF EXISTS `tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarjeta` (
  `numeroTarjeta` varchar(45) NOT NULL,
  `fechaVencimiento` varchar(45) DEFAULT NULL,
  `CVC` int(11) DEFAULT NULL,
  `idTipoCuenta` varchar(45) DEFAULT NULL,
  `idTipoTarjeta` varchar(45) DEFAULT NULL,
  `idCuenta` varchar(45) DEFAULT NULL,
  `idDominio` varchar(45) DEFAULT NULL,
  `idCliente` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`numeroTarjeta`),
  KEY `fk_idTipoCuenta_idx` (`idTipoCuenta`),
  KEY `fk_idTipoTarjeta_idx` (`idTipoTarjeta`),
  KEY `fk_idCuenta_idx` (`idCuenta`),
  KEY `fk_idDominio_idx` (`idDominio`),
  KEY `fk_idCliente_idx` (`idCliente`),
  CONSTRAINT `fk_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idCuenta` FOREIGN KEY (`idCuenta`) REFERENCES `cuenta` (`idCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idDominio` FOREIGN KEY (`idDominio`) REFERENCES `dominio` (`idDominio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idTipoCuenta` FOREIGN KEY (`idTipoCuenta`) REFERENCES `tipocuenta` (`idTipoCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idTipoTarjeta` FOREIGN KEY (`idTipoTarjeta`) REFERENCES `tipotarjeta` (`idTipoTarjeta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES ('4241140010100010','1/02/2021',764,'C000','T002','96372876233','D001','74647651'),('4241140010100020','1/03/2021',279,'C000','T002','99021836286','D001','27933249'),('4241140010100030','1/04/2021',667,'C000','T002','97779092881','D001','69263037'),('4241140010100040','1/05/2021',575,'C002','T001','98538758807','D001','54460765'),('4241140010100050','1/06/2021',377,'C002','T001','97910662188','D001','37294957'),('4241140010100060','1/07/2021',225,'C002','T001','92848158118','D001','24132225'),('4241140010100070','1/08/2021',588,'C002','T001','95207258975','D001','58316888'),('4241140010100080','1/09/2021',278,'C002','T001','97850125137','D001','27826527'),('4241140010100090','1/10/2021',323,'C000','T002','95752628334','D001','39105823'),('4241140010100100','1/11/2021',409,'C000','T002','97103446801','D001','45753309'),('4241140010100110','1/12/2021',621,'C000','T002','97329791400','D001','62029971'),('4241140010100120','1/01/2022',584,'C000','T002','96376880275','D001','58397924'),('4241140010100130','1/02/2022',290,'C000','T002','96787900351','D001','29203630'),('4241140010100140','1/03/2022',777,'C000','T002','95279358501','D001','77621217'),('4241140010100150','1/04/2022',700,'C001','T002','93580612811','D001','71070300'),('4241140010100160','1/05/2022',752,'C001','T002','93851632480','D001','75795452'),('4567912312340010','1/08/2021',356,'C002','T001','99886609550','D003','35747196'),('4567912312340020','1/09/2021',302,'C002','T001','96566651220','D003','35073192'),('4567912312340030','1/06/2021',243,'C002','T001','96411470371','D003','82947893'),('4567912312340040','1/07/2021',469,'C000','T002','94376356580','D003','47186069'),('4567912312340050','1/08/2021',683,'C000','T002','95575849964','D003','68051853'),('4567912312340060','1/09/2021',160,'C000','T002','97667165388','D003','77160775'),('4567912312340070','1/10/2021',472,'C000','T002','94442676093','D003','46547272'),('4567912312340080','1/11/2021',990,'C000','T002','99518766487','D003','79417980'),('4567912312340090','1/12/2021',809,'C000','T002','92720241451','D003','87767009'),('4567912312340100','1/01/2022',646,'C001','T002','96830143883','D003','64696256'),('4567912312340110','1/02/2022',819,'C001','T002','95471561117','D003','81965805'),('4567912312340120','1/03/2022',644,'C001','T002','96598321936','D003','64231764'),('4567912312340130','1/04/2022',610,'C001','T002','95549838904','D003','60111250'),('4567912312340140','1/05/2022',552,'C001','T002','94079992367','D003','55170472'),('4567912312340150','1/05/2021',900,'C001','T002','99572463300','D003','90083493'),('4567912312340160','1/06/2021',749,'C001','T002','92553350105','D003','74447719'),('4567912312340170','1/07/2021',573,'C001','T002','95882195566','D003','57387183'),('4567912312340180','1/08/2021',653,'C001','T002','99258683023','D003','65878713'),('5418482345000010','1/05/2021',992,'C001','T002','95067727507','D002','79696292'),('5418482345000020','1/06/2021',628,'C001','T002','95805823122','D002','62231866'),('5418482345000030','1/07/2021',750,'C001','T002','97084410469','D002','79555780'),('5418482345000040','1/08/2021',314,'C001','T002','99465946158','D002','67453414'),('5418482345000050','1/09/2021',209,'C001','T002','96750339292','D002','23910989'),('5418482345000060','1/10/2021',516,'C001','T002','93790515801','D002','47588516'),('5418482345000070','1/11/2021',154,'C001','T002','98588102285','D002','84627154'),('5418482345000080','1/12/2021',770,'C001','T002','94800456951','D002','74299709'),('5418482345000090','1/01/2022',558,'C001','T002','93616573787','D002','54526358'),('5418482345000100','1/02/2022',707,'C001','T002','93840317538','D002','75268707'),('5418482345000110','1/03/2022',877,'C001','T002','97570728704','D002','85361877'),('5418482345000120','1/04/2022',819,'C000','T002','99097204209','D002','87856219'),('5418482345000130','1/05/2022',338,'C000','T002','97566126963','D002','32163798'),('5418482345000140','1/05/2021',632,'C000','T002','99468518753','D002','66202332'),('5418482345000150','1/06/2021',527,'C000','T002','96939772695','D002','58572627'),('5418482345000160','1/07/2021',188,'C002','T001','97293402266','D002','63317188');
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocuenta`
--

DROP TABLE IF EXISTS `tipocuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocuenta` (
  `idTipoCuenta` varchar(45) NOT NULL,
  `TipoCuenta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocuenta`
--

LOCK TABLES `tipocuenta` WRITE;
/*!40000 ALTER TABLE `tipocuenta` DISABLE KEYS */;
INSERT INTO `tipocuenta` VALUES ('C000','Ahorro'),('C001','Corriente'),('C002','Credito');
/*!40000 ALTER TABLE `tipocuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotarjeta`
--

DROP TABLE IF EXISTS `tipotarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotarjeta` (
  `idTipoTarjeta` varchar(45) NOT NULL,
  `TipoTarjeta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoTarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotarjeta`
--

LOCK TABLES `tipotarjeta` WRITE;
/*!40000 ALTER TABLE `tipotarjeta` DISABLE KEYS */;
INSERT INTO `tipotarjeta` VALUES ('T001','Credito'),('T002','Debito');
/*!40000 ALTER TABLE `tipotarjeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-11 20:57:25
