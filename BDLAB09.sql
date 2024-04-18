-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 15-04-2024 a las 17:20:10
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BDLAB09`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ENTREGAN`
--

CREATE TABLE `ENTREGAN` (
  `clave` bigint(20) NOT NULL,
  `RFC` varchar(15) NOT NULL,
  `numero` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ENTREGAN`
--

INSERT INTO `ENTREGAN` (`clave`, `RFC`, `numero`, `fecha`, `cantidad`) VALUES
(1000, 'AAAA800101', 5000, '1998-07-08', 165),
(1000, 'AAAA800101', 5019, '1999-08-08', 254),
(1000, 'AAAA800101', 5019, '2000-04-06', 7),
(1010, 'BBBB800101', 5001, '2000-05-03', 528),
(1010, 'BBBB800101', 5018, '2000-11-10', 667),
(1010, 'BBBB800101', 5018, '2002-03-29', 523),
(1020, 'CCCC800101', 5002, '2001-07-29', 582),
(1020, 'CCCC800101', 5017, '1999-02-04', 8),
(1020, 'CCCC800101', 5017, '2001-05-04', 478),
(1030, 'DDDD800101', 5003, '1998-02-21', 202),
(1030, 'DDDD800101', 5016, '1998-04-09', 139),
(1030, 'DDDD800101', 5016, '2000-11-05', 295),
(1040, 'EEEE800101', 5004, '1999-12-11', 263),
(1040, 'EEEE800101', 5015, '2000-06-10', 546),
(1040, 'EEEE800101', 5015, '2002-07-12', 540),
(1050, 'FFFF800101', 5005, '2000-10-14', 503),
(1050, 'FFFF800101', 5014, '1999-03-07', 623),
(1050, 'FFFF800101', 5014, '1999-06-04', 90),
(1060, 'GGGG800101', 5006, '2000-05-04', 324),
(1060, 'GGGG800101', 5013, '2000-01-02', 692),
(1060, 'GGGG800101', 5013, '2000-07-10', 47),
(1070, 'HHHH800101', 5007, '1998-02-23', 2),
(1070, 'HHHH800101', 5012, '1999-12-03', 503),
(1070, 'HHHH800101', 5012, '2000-04-01', 516),
(1080, 'AAAA800101', 5008, '1999-01-12', 86),
(1080, 'AAAA800101', 5011, '2002-11-07', 699),
(1080, 'AAAA800101', 5011, '2003-06-01', 429),
(1090, 'BBBB800101', 5009, '2000-08-01', 73),
(1090, 'BBBB800101', 5010, '1998-01-03', 421),
(1090, 'BBBB800101', 5010, '1998-06-06', 612),
(1100, 'CCCC800101', 5009, '2000-08-06', 466),
(1100, 'CCCC800101', 5009, '2002-05-07', 523),
(1100, 'CCCC800101', 5010, '2001-09-10', 699),
(1110, 'DDDD800101', 5008, '1999-05-10', 337),
(1110, 'DDDD800101', 5008, '2000-02-09', 292),
(1110, 'DDDD800101', 5011, '2003-06-28', 368),
(1120, 'EEEE800101', 5007, '1998-03-12', 167),
(1120, 'EEEE800101', 5007, '2001-07-07', 692),
(1120, 'EEEE800101', 5012, '2001-04-03', 215),
(1130, 'FFFF800101', 5006, '1999-05-06', 673),
(1130, 'FFFF800101', 5006, '2002-07-06', 562),
(1130, 'FFFF800101', 5013, '2002-04-04', 63),
(1140, 'GGGG800101', 5005, '1998-02-07', 651),
(1140, 'GGGG800101', 5005, '2001-09-02', 583),
(1140, 'GGGG800101', 5014, '2001-07-12', 219),
(1150, 'HHHH800101', 5004, '2001-08-10', 453),
(1150, 'HHHH800101', 5004, '2003-09-01', 270),
(1150, 'HHHH800101', 5015, '1999-03-04', 458),
(1160, 'AAAA800101', 5016, '2000-06-01', 162),
(1160, 'AAAA800101', 5019, '1999-06-09', 244),
(1160, 'AAAA800101', 5019, '2002-02-08', 665),
(1170, 'BBBB800101', 5017, '1998-02-04', 180),
(1170, 'BBBB800101', 5018, '1999-11-12', 53),
(1170, 'BBBB800101', 5018, '2001-08-06', 517),
(1180, 'CCCC800101', 5017, '2001-03-03', 334),
(1180, 'CCCC800101', 5017, '2001-06-01', 216),
(1180, 'CCCC800101', 5018, '2002-06-14', 407),
(1190, 'DDDD800101', 5016, '2000-02-04', 356),
(1190, 'DDDD800101', 5016, '2003-03-07', 622),
(1190, 'DDDD800101', 5019, '1998-09-12', 94),
(1200, 'EEEE800101', 5000, '2000-03-05', 177),
(1200, 'EEEE800101', 5015, '2000-05-06', 585),
(1200, 'EEEE800101', 5015, '2000-07-10', 653),
(1210, 'FFFF800101', 5001, '1999-11-05', 43),
(1210, 'FFFF800101', 5014, '2001-09-06', 479),
(1210, 'FFFF800101', 5014, '2001-11-03', 70),
(1220, 'GGGG800101', 5002, '2003-02-01', 24),
(1220, 'GGGG800101', 5013, '2001-02-08', 653),
(1220, 'GGGG800101', 5013, '2002-07-04', 658),
(1230, 'HHHH800101', 5003, '2003-01-06', 530),
(1230, 'HHHH800101', 5012, '1999-03-08', 115),
(1230, 'HHHH800101', 5012, '2002-12-09', 312),
(1240, 'AAAA800101', 5004, '2003-01-12', 152),
(1240, 'AAAA800101', 5011, '2000-08-12', 366),
(1240, 'AAAA800101', 5011, '2003-08-05', 549),
(1250, 'BBBB800101', 5005, '2002-07-08', 71),
(1250, 'BBBB800101', 5010, '1998-05-08', 690),
(1250, 'BBBB800101', 5010, '2002-04-04', 691),
(1260, 'CCCC800101', 5006, '1999-05-10', 460),
(1260, 'CCCC800101', 5009, '1999-08-09', 631),
(1260, 'CCCC800101', 5009, '2003-02-10', 2),
(1270, 'DDDD800101', 5007, '1999-03-10', 506),
(1270, 'DDDD800101', 5008, '1997-09-03', 546),
(1270, 'DDDD800101', 5008, '2002-04-12', 324),
(1280, 'EEEE800101', 5007, '2000-02-03', 331),
(1280, 'EEEE800101', 5007, '2002-12-07', 448),
(1280, 'EEEE800101', 5008, '2002-07-29', 107),
(1290, 'FFFF800101', 5006, '1999-01-07', 336),
(1290, 'FFFF800101', 5006, '2001-02-08', 279),
(1290, 'FFFF800101', 5009, '1998-01-08', 132),
(1300, 'GGGG800101', 5005, '2002-06-10', 521),
(1300, 'GGGG800101', 5005, '2003-02-02', 457),
(1300, 'GGGG800101', 5010, '2003-01-08', 119),
(1310, 'HHHH800101', 5011, '2002-04-12', 72),
(1310, 'HHHH800101', 5019, '2000-08-03', 463),
(1310, 'HHHH800101', 5019, '2002-10-02', 199),
(1320, 'AAAA800101', 5012, '2003-01-06', 698),
(1320, 'AAAA800101', 5018, '1999-12-03', 163),
(1320, 'AAAA800101', 5018, '2000-03-07', 413),
(1330, 'BBBB800101', 5013, '1998-12-10', 554),
(1330, 'BBBB800101', 5017, '1998-06-12', 558),
(1330, 'BBBB800101', 5017, '2000-08-11', 93),
(1340, 'CCCC800101', 5014, '2002-12-02', 324),
(1340, 'CCCC800101', 5016, '1998-11-06', 674),
(1340, 'CCCC800101', 5016, '1999-02-10', 11),
(1350, 'DDDD800101', 5015, '1999-05-09', 272),
(1350, 'DDDD800101', 5015, '1999-06-05', 330),
(1350, 'DDDD800101', 5015, '1999-08-02', 261),
(1360, 'EEEE800101', 5014, '2001-07-06', 37),
(1360, 'EEEE800101', 5014, '2002-04-07', 265),
(1360, 'EEEE800101', 5016, '2000-11-07', 364),
(1370, 'FFFF800101', 5013, '2000-04-08', 575),
(1370, 'FFFF800101', 5013, '2002-06-05', 423),
(1370, 'FFFF800101', 5017, '2000-02-12', 44),
(1380, 'GGGG800101', 5012, '1998-07-08', 645),
(1380, 'GGGG800101', 5012, '2001-02-01', 147),
(1380, 'GGGG800101', 5018, '2002-03-03', 302),
(1390, 'HHHH800101', 5011, '2001-11-08', 697),
(1390, 'HHHH800101', 5011, '2002-01-06', 308),
(1390, 'HHHH800101', 5019, '2003-01-12', 107),
(1400, 'AAAA800101', 5000, '2002-03-12', 382),
(1400, 'AAAA800101', 5010, '1998-06-05', 116),
(1400, 'AAAA800101', 5010, '2002-05-03', 441),
(1410, 'BBBB800101', 5001, '2000-02-05', 601),
(1410, 'BBBB800101', 5009, '2002-05-03', 467),
(1410, 'BBBB800101', 5009, '2002-11-05', 461),
(1420, 'CCCC800101', 5002, '1998-04-07', 603),
(1420, 'CCCC800101', 5008, '2000-08-02', 278),
(1420, 'CCCC800101', 5008, '2001-02-12', 444),
(1430, 'DDDD800101', 5003, '1999-09-02', 576),
(1430, 'DDDD800101', 5007, '1998-01-09', 13),
(1430, 'DDDD800101', 5007, '2002-06-10', 506);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MATERIALES`
--

CREATE TABLE `MATERIALES` (
  `clave` bigint(20) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `MATERIALES`
--

INSERT INTO `MATERIALES` (`clave`, `descripcion`, `precio`) VALUES
(1000, 'Varilla 3/16', 100),
(1010, 'Varilla 4/32', 115),
(1020, 'Varilla 3/17', 130),
(1030, 'Varilla 4/33', 145),
(1040, 'Varilla 3/18', 160),
(1050, 'Varilla 4/34', 175),
(1060, 'Varilla 3/19', 190),
(1070, 'Varilla 4/35', 205),
(1080, 'Ladrillos rojos', 50),
(1090, 'Ladrillos grises', 35),
(1100, 'Block', 30),
(1110, 'Megablock', 40),
(1120, 'Sillar rosa', 100),
(1130, 'Sillar gris', 110),
(1140, 'Cantera blanca', 200),
(1150, 'Cantera gris', 1210),
(1160, 'Cantera rosa', 1420),
(1170, 'Cantera amarilla', 230),
(1180, 'Recubrimiento P1001', 200),
(1190, 'Recubrimiento P1010', 220),
(1200, 'Recubrimiento P1019', 240),
(1210, 'Recubrimiento P1028', 250),
(1220, 'Recubrimiento P1037', 280),
(1230, 'Cemento ', 300),
(1240, 'Arena', 200),
(1250, 'Grava', 100),
(1260, 'Gravilla', 90),
(1270, 'Tezontle', 80),
(1280, 'Tepetate', 34),
(1290, 'Tuberia 3.5', 200),
(1300, 'Tuberia 4.3', 210),
(1310, 'Tuberia 3.6', 220),
(1320, 'Tuberia 4.4', 230),
(1330, 'Tuberia 3.7', 240),
(1340, 'Tuberia 4.5', 250),
(1350, 'Tuberia 3.8', 260),
(1360, 'Pintura C1010', 125),
(1370, 'Pintura B1020', 125),
(1380, 'Pintura C1011', 725),
(1390, 'Pintura B1021', 125),
(1400, 'Pintura C1011', 125),
(1410, 'Pintura B1021', 125),
(1420, 'Pintura C1012', 125),
(1430, 'Pintura B1022', 125);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROVEEDORES`
--

CREATE TABLE `PROVEEDORES` (
  `RFC` varchar(15) NOT NULL,
  `RazonSocial` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PROVEEDORES`
--

INSERT INTO `PROVEEDORES` (`RFC`, `RazonSocial`) VALUES
('AAAA800101', 'La fragua'),
('BBBB800101', 'Oviedo'),
('CCCC800101', 'La Ferre'),
('DDDD800101', 'Cecoferre'),
('EEEE800101', 'Alvin'),
('FFFF800101', 'Comex'),
('GGGG800101', 'Tabiquera del centro'),
('HHHH800101', 'Tubasa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROYECTOS`
--

CREATE TABLE `PROYECTOS` (
  `numero` bigint(20) NOT NULL,
  `denominacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `PROYECTOS`
--

INSERT INTO `PROYECTOS` (`numero`, `denominacion`) VALUES
(5000, 'Vamos Mexico'),
(5001, 'Aztecon'),
(5002, 'CIT Campeche'),
(5003, 'Mexico sin ti no estamos completos'),
(5004, 'Educando en Coahuila'),
(5005, 'Infonavit Durango'),
(5006, 'Reconstruccion del templo de Guadalupe'),
(5007, 'Construccion de plaza Magnolias'),
(5008, 'Televisa en accion'),
(5009, 'Disco Atlantic'),
(5010, 'Construccion de Hospital Infantil'),
(5011, 'Remodelacion de aulas del IPP'),
(5012, 'Restauracion de instalaciones del CEA'),
(5013, 'Reparacion de la plaza Sonora'),
(5014, 'Remodelacion de Soriana'),
(5015, 'CIT Yucatan'),
(5016, 'Ampliacion de la carretera a la huasteca'),
(5017, 'Reparacion de la carretera del sol'),
(5018, 'Tu cambio por la educacion'),
(5019, 'Queretaro limpio');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ENTREGAN`
--
ALTER TABLE `ENTREGAN`
  ADD PRIMARY KEY (`clave`,`RFC`,`numero`,`fecha`),
  ADD KEY `RFC` (`RFC`),
  ADD KEY `numero` (`numero`);

--
-- Indices de la tabla `MATERIALES`
--
ALTER TABLE `MATERIALES`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `PROVEEDORES`
--
ALTER TABLE `PROVEEDORES`
  ADD PRIMARY KEY (`RFC`);

--
-- Indices de la tabla `PROYECTOS`
--
ALTER TABLE `PROYECTOS`
  ADD PRIMARY KEY (`numero`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ENTREGAN`
--
ALTER TABLE `ENTREGAN`
  ADD CONSTRAINT `entregan_ibfk_1` FOREIGN KEY (`clave`) REFERENCES `MATERIALES` (`clave`),
  ADD CONSTRAINT `entregan_ibfk_2` FOREIGN KEY (`RFC`) REFERENCES `PROVEEDORES` (`RFC`),
  ADD CONSTRAINT `entregan_ibfk_3` FOREIGN KEY (`numero`) REFERENCES `PROYECTOS` (`numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
