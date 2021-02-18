drop schema if exists `productos`;

create schema `productos`;
use `productos`;

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Precio` varchar(45) NOT NULL,
  `Imagen` varchar(45) NOT NULL,
  `Valoracion` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (1,'Lenovo IdeaPad 3','Lenovo IdeaPad 3 15IIL05 Intel Core i3-1005G1/8 GB/512GB SSD/15.6 pulgadas','459€', 'img/1675-lenovo.webp', 5), (2,'AOC C32G2ZE/BK','Monitor AOC C32G2ZE/BK 31.5 pulg. LED FullHD 240Hz FreeSync Premium Curva','299,99€', 'img/1807-aoc.webp', 5), (3,'Cecotec Mambo 8090','Cecotec Mambo 8090 Robot de Cocina con Báscula Integrada','189€', 'img/04131-mambo-cecotec.webp', 4), (4,'TV LG OLED55BX6LB 55','Televisor LG OLED55BX6LB 55 pulg. OLED UltraHD 4K HDR','1149€', 'img/1221-lg.webp', 5), (5,'Razer Huntsman Elite Teclado Mecánico','Razer Huntsman Elite Teclado Mecánico Gaming RGB Switches Optomecánicos','149,99€', 'img/razer-huntsman.webp', 5), (6,'Acer Aspire 3','Ordenador portátil Acer Aspire 3 A315-56-52KD Intel Core i5-1035G1/12GB/512GB SSD/15.6 pulg.','579€', 'img/acer-aspire.webp', 4);
    
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;
