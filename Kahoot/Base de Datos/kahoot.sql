-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: kahoot
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntas` (
  `idPregunta` int NOT NULL AUTO_INCREMENT,
  `temaPregunta` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `enunciadoPregunta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `resueltaPregunta` tinyint DEFAULT NULL,
  PRIMARY KEY (`idPregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,'Series','¿Quién es el protagonista de Mr. Robot?',0),(2,'Series','¿Quién es el protagonista de Peaky Blinders?',0),(3,'Series','¿Quién es el protagonista de Breaking Bad?',0),(4,'Series','¿Quién es el protagonista de Dark?',0),(5,'Series','¿Quiénes son los protagonistas de Prison Break?',0),(6,'Series','¿A qué categoría pertenece Black Mirror?',0),(7,'Series','¿A qué categoría pertenece Stranger Things?',0),(8,'Series','¿A qué categoría pertenece Friends?',0),(9,'Series','¿A qué categoría pertenece Los Simpsons?',0),(10,'Series','¿A qué categoría pertenece Taboo?',0),(11,'Series','¿De qué plataforma es Juego de tronos?',0),(12,'Series','¿De qué plataforma es Invencible?',0),(13,'Series','¿De qué plataforma es The end of the fucking world?',0),(14,'Series','¿De qué plataforma es Chernobyl?',0),(15,'Series','¿De qué plataforma es Love, Death and Robots?',0),(16,'Peliculas','¿Cuál ha sido la película que ha ganado más Oscars en 2020?',0),(17,'Peliculas','¿En que año se estrenó Titanic?',0),(18,'Peliculas','¿Con que película ganó Leonardo DiCaprio su único Oscars?',0),(19,'Peliculas','¿Qué película ha sido la más taquillera de la historia?',0),(20,'Peliculas','¿Cuántas películas hay de la saga Star Wars?',0),(21,'Peliculas','¿Cuál de estas películas no pertenece a Tarantino?',0),(22,'Peliculas','¿Cómo se llama el actor de Frodo en El señor de los anillos?',0),(23,'Peliculas','¿Como se llamá la trilogía que protagoniza Will Smith vestido de negro?',0),(24,'Peliculas','¿Quién no aparece en la película Origen?',0),(25,'Peliculas','¿Como se llama el actor que protagoniza la película Interstellar?',0),(26,'Peliculas','¿Cuántos años tiene Leonardo Dicaprio?',0),(27,'Peliculas','¿Qué película no pertenece al Studio Ghibli?',0),(28,'Peliculas','¿Cuál ha sido la película española más taquillera?',0),(29,'Peliculas','¿Cuántas películas tiene la saga Harry Potter?',0),(30,'Peliculas','¿Cuál de estas películas no es coreana?',0),(31,'Videojuegos','¿Qué juego se llevó el premio GOTY en 2017?',0),(32,'Videojuegos','¿Qué juego se llevó el premio GOTY en 2019?',0),(33,'Videojuegos','¿Como se llama el protagonista de la saga Zelda?',0),(34,'Videojuegos','¿Cuál de estos juegos de la saga GTA es más antiguo?',0),(35,'Videojuegos','¿Qué juego ha salido con un gran número de bugs a finales de 2020?',0),(36,'Videojuegos','¿En que año apareció por primera vez el personaje de Mario (Jumpman)?',0),(37,'Videojuegos','¿Quién sale en la portada del FIFA 21?',0),(38,'Videojuegos','¿Quién sale en la portada del NBA 2K 21?',0),(39,'Videojuegos','¿Cómo se llama el protagonista de Red Dead Redemption 2?',0),(40,'Videojuegos','¿Cómo se llama el protagonista de GTA San Andreas?',0),(41,'Videojuegos','¿En que año salío el primer Guitar Hero?',0),(42,'Videojuegos','¿Cómo se llama el juego que ha salido en 2021 del creador de A Way Out?',0),(43,'Videojuegos','¿Cuántos juegos tiene la saga Tomb Raider?',0),(44,'Videojuegos','¿Como se llama el enemigo de Sonic?',0),(45,'Videojuegos','¿Qué juego con temática espacial fue lanzado en 2016 y fracasó?',0),(46,'Deportes','¿Cuántos Roland Garros tiene Rafa Nadal?',0),(47,'Deportes','¿Cuántos torneos de Grand Slam se juegan en un año?',0),(48,'Deportes','¿Que equipo de fútbol ha ganado la liga en 2021?',0),(49,'Deportes','¿En que equipo está jugando Cristiano Ronaldo?',0),(50,'Deportes','¿Qué equipo ha fichado al Kun Agüero?',0),(51,'Deportes','¿Cuáles son las posiciones en el baloncesto?',0),(52,'Deportes','¿Cuántas personas por equipo hay en el campo en un partido de beísbol?',0),(53,'Deportes','¿A qué distancia está el tiro libre en baloncesto?',0),(54,'Deportes','¿Qué es 2+1 en baloncesto?',0),(55,'Deportes','¿Cuántos jugadores hay en un equipo de voleibol jugando el partido?',0),(56,'Deportes','¿Quién tiene más balones de oro?',0),(57,'Deportes','¿Qué equipo ha ganado la Champions en 2021?',0),(58,'Deportes','¿Qué equipo ha ganado la UEFA en 2021?',0),(59,'Deportes','¿Donde se creó el Ping-pong?',0),(60,'Deportes','¿Qué es más antiguo? ¿Ping-pong, pádel, tenis o pelota vasca?',0),(61,'Geografia','¿Cuál es la moneda de Japón?',0),(62,'Geografia','¿Donde se encuentra Eswatini?',0),(63,'Geografia','¿Qué colores tiene la bandera de croacia?',0),(64,'Geografia','¿Cuál es la capital de Argentina?',0),(65,'Geografia','¿Cuál de estos países es el más grande?',0),(66,'Geografia','¿Cuál de estos países tiene más habitantes?',0),(67,'Geografia','¿Cuál de estos países tiene más densidad?',0),(68,'Geografia','¿Cuál de estos países no pertenece a la Unión Europea?',0),(69,'Geografia','¿Cuál de estos mares no existe?',0),(70,'Geografia','¿Dónde se encuentras las islas Fiyi?',0),(71,'Geografia','¿Cuál es el idioma oficial de Tailandia?',0),(72,'Geografia','¿Cuál es la capital de Colombia?',0),(73,'Geografia','¿Que país tiene más kilómetros de costa?',0),(74,'Geografia','¿Cuáles son las capitales de Sudáfrica?',0),(75,'Geografia','¿Cuál de estos países es el más pequeño?',0);
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuestas` (
  `idRespuesta` int NOT NULL AUTO_INCREMENT,
  `temaRespuesta` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correctoRespuesta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `incorrecto1Respuesta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `incorrecto2Respuesta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `incorrecto3Respuesta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idPreguntaFK` int DEFAULT NULL,
  PRIMARY KEY (`idRespuesta`),
  KEY `idPreguntaFK1_idx` (`idPreguntaFK`),
  CONSTRAINT `idPreguntaFK1` FOREIGN KEY (`idPreguntaFK`) REFERENCES `preguntas` (`idPregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (1,'Series','Elliot','Jaden','Jack','Robert',1),(2,'Series','Thomas Shelby','Peter Ell','Benjamin Franklin','Morgan Freeman',2),(3,'Series','Walter White','Phil Pink','Gabriel Green','Randall Red',3),(4,'Series','Jonas','Jonathan','Jesús','José',4),(5,'Series','Michael Scofield y Lincoln Burrows','Charlie Sheen y Jon Cryer','Joel y Ellie','James y Alyssa',5),(6,'Series','Ciencia ficción','Comedia','Drama','Suspense',6),(7,'Series','Suspenso y Cienca ficción','Drama','Histórica','Comedia',7),(8,'Series','Comedia','Drama','Suspense','Ciencia ficción',8),(9,'Series','Comedia de animación','Ciencia ficción','Suspense','Drama',9),(10,'Series','Histórica','Drama','Comedia','Suspense',10),(11,'Series','HBO','Netflix','Amazon Prime Videos','Disney+',11),(12,'Series','Amazon Prime Videos','Disney+','Netflix','HBO',12),(13,'Series','Netflix','HBO','Disney+','Amazon Prime Videos',13),(14,'Series','HBO','Netflix','Amazon Prime Videos','Disney+',14),(15,'Series','Netflix','Disney+','Amazon Prime Videos','HBO',15),(16,'Peliculas','Parásitos','Joker','1917','Érase una vez en Hollywood',16),(17,'Peliculas','1997','1998','1999','2000',17),(18,'Peliculas','The Revenant','Titanic','Origen','Shutter Island',18),(19,'Peliculas','Avatar','El rey león','Frozen II','Avengers: Endgame',19),(20,'Peliculas','11','10','9','8',20),(21,'Peliculas','La La Land','Pulp Fiction','Django desencadenado','Los odiosos ocho',21),(22,'Peliculas','Elijah Wood','Rami Malek','Robert Pattinson','Chris Pratt',22),(23,'Peliculas','Men in Black','Black clover','Bad Boys','Black panther',23),(24,'Peliculas','Brad Pitt','Leonardo DiCaprio','Tom Hardy','Cillian Murphy',24),(25,'Peliculas','Matthew McConaughey','Tom Hanks','Jammie Foxx','George Clooney',25),(26,'Peliculas','46','47','48','49',26),(27,'Peliculas','Your name','El viaje de Chihiro','Mi vecino Totoro','La princesa Mononoke',27),(28,'Peliculas','Ocho apellidos vascos','Lo imposible','Torrente 2: Misión Marbella','El orfanato',28),(29,'Peliculas','8','10','7','9',29),(30,'Peliculas','El niño y la bestia','Forgotten','Parásitos','Oldboy',30),(31,'Videojuegos','The Legend of Zelda: Breath of the Wild','Super Mario Odyssey','Destiny 2','PUBG',31),(32,'Videojuegos','Sekiro','Super Smash Bros','Death Stranding','Resident Evil 2',32),(33,'Videojuegos','Link','Zelda','Krillin','Toad',33),(34,'Videojuegos','GTA 3','GTA Vice City','GTA San Andreas','GTA Chinatown Wars',34),(35,'Videojuegos','Cyberpunk 2077','Animal Crossing: New Horizons','Ghost of Tsushima','Demon\'s Souls',35),(36,'Videojuegos','1981','1982','1983','1984',36),(37,'Videojuegos','Mbappé','Neymar','Cristiano Ronaldo','Messi',37),(38,'Videojuegos','Damian Lillard','Kobe Bryant','Lebron James','Paul Pierce',38),(39,'Videojuegos','Arthur Morgan','John Marston','Tony the Kid','Ronald Reagan',39),(40,'Videojuegos','Carl Johnson','Niko Bellic','Trevor Philips','Franklin Clinton',40),(41,'Videojuegos','2005','2006','2003','2004',41),(42,'Videojuegos','It Takes Two','It Takes Three','It Takes Four','It Takes Five',42),(43,'Videojuegos','28','13','9','19',43),(44,'Videojuegos','Robotnik','Tails','Knuckles','Amy Rose',44),(45,'Videojuegos','No Man\'s Sky','Dead Space 3','Star Wars: Battlefront','Horizon Zero Dawn',45),(46,'Deportes','13','11','14','12',46),(47,'Deportes','4','2','5','3',47),(48,'Deportes','Atlético de Madrid','Real Madrid','FC Barcelona','Sevilla FC',48),(49,'Deportes','Juventus','Real Madrid','Manchester United','Manchester City',49),(50,'Deportes','FC Barcelona','Manchester United','Real Madrid','Real Betis',50),(51,'Deportes','Base, Escolta, Alero, Ala-Pivot y Pivot','Portero, Defensa, Mediocentro, Banda Y Delantero','Armador, Punta Receptor, Bloqueador Central, Opuesto y Líbero','Lanzador, Receptor, Primera Base, Segunda Base y Tercera Base',51),(52,'Deportes','9','7','10','8',52),(53,'Deportes','4,5','3,5','5,5','6,5',53),(54,'Deportes','Falta y Tiro libre','Falta y Mate','Falta y Triple','Falta personal',54),(55,'Deportes','6','3','5','4',55),(56,'Deportes','Lionel Messi','Cristiano Ronaldo','Joaquin','Bojan',56),(57,'Deportes','Chelsea','Manchester City','Manchester United','FC Barcelona',57),(58,'Deportes','Villareal','Real Betis','Sevilla FC','Celta',58),(59,'Deportes','Reino Unido','China','Japón','Corea',59),(60,'Deportes','Tenis','Padel','Pelota Vasca','Ping-pong',60),(61,'Geografia','Yen','Euro','Dólar','Libra',61),(62,'Geografia','Sur de África','Norte de África','Este de África','Oeste de África',62),(63,'Geografia','Roja, blanca y azul','Blanca, roja y azul','Azul, roja y blanca','Azul, blanca y roja',63),(64,'Geografia','Buenos Aires','Lima','Montevideo','Sucre',64),(65,'Geografia','Rusia','Canadá','China','EEUU',65),(66,'Geografia','China','India','EEUU','Indonesia',66),(67,'Geografia','Mónaco','Singapur','Ciudad del Vaticano','Malta',67),(68,'Geografia','Reino Unido','Estonia','Lituania','Letonia',68),(69,'Geografia','Mar Azul','Mar Negro','Mar Rojo','Mar Amarillo',69),(70,'Geografia','Océano Pacífico','Océano Atlántico','Océano Índico','Océano Ártico',70),(71,'Geografia','Tailandés','Inglés','Chino','Japonés',71),(72,'Geografia','Bogotá','Quito','San Juan','Managua',72),(73,'Geografia','Brasil','España','Chile','Francia',73),(74,'Geografia','Pretoria, Ciudad del Cabo y Bloemfontein','Pretoria, Ciudad del Cabo y Johannesburgo','Bloemfontein, Johannesburgo y Pretoria','Ciudad del Cabo, Johannesburgo y Bloemfontein',74),(75,'Geografia','Ciudad del Vaticano','Mónaco','San Marino','Malta',75);
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-25 10:10:15
