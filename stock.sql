-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2020 a las 00:07:27
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `stock`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id` mediumint(9) NOT NULL,
  `idcliente` mediumint(9) NOT NULL,
  `operacion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desde` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idsolicitud` mediumint(9) NOT NULL DEFAULT '0',
  `hasta` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `equipo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idcamion` mediumint(9) DEFAULT NULL,
  `tipomflete` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precioflete` mediumint(9) DEFAULT NULL,
  `mercaderia` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DUA` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `datoscompletos` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper4` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc4` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio4` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper5` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc5` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio5` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper6` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc6` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio6` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper7` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc7` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio7` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ldcd` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `userStamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logs` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camion`
--

CREATE TABLE `camion` (
  `id` mediumint(9) NOT NULL,
  `matricula` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombrempresa` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `userStamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` mediumint(9) NOT NULL,
  `nombreFantasia` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `celular` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `razonSocial` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `rut` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombreContacto` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `userStamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `porcentajeseguro` double DEFAULT NULL,
  `idmercado` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresopallets`
--

CREATE TABLE `egresopallets` (
  `id` mediumint(9) NOT NULL,
  `idpallet` mediumint(9) DEFAULT NULL,
  `cantidad` mediumint(9) DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cantpallets` int(11) DEFAULT NULL,
  `cantcajas` int(11) DEFAULT NULL,
  `cubica` double DEFAULT NULL,
  `idcamion` mediumint(9) DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userStamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` mediumint(9) NOT NULL,
  `idcliente` mediumint(9) DEFAULT NULL,
  `exportado` mediumint(9) DEFAULT NULL,
  `cdld` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idagenda` mediumint(9) NOT NULL DEFAULT '0',
  `idsolicitud` mediumint(9) NOT NULL DEFAULT '0',
  `tipo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipomflete` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equipo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idcamion` mediumint(9) DEFAULT NULL,
  `ingresadopor` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pagadoflete` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `oper1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper3` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc3` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio3` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper4` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc4` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio4` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper5` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc5` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio5` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper6` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc6` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio6` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper7` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc7` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio7` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper8` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc8` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio8` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper9` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc9` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio9` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oper10` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `desc10` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio10` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userStamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pallets`
--

CREATE TABLE `pallets` (
  `id` mediumint(9) NOT NULL,
  `idcliente` mediumint(9) DEFAULT NULL,
  `idproducto` mediumint(9) DEFAULT NULL,
  `idcamion` mediumint(9) DEFAULT NULL,
  `dua` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` mediumint(9) DEFAULT NULL,
  `cubicaxpallet` double DEFAULT NULL,
  `valordolarxpallet` double DEFAULT NULL,
  `porcentajeseguro` double DEFAULT NULL,
  `cantidadActual` mediumint(9) DEFAULT NULL,
  `cubicaActual` double DEFAULT NULL,
  `alarma` date DEFAULT NULL,
  `ingreso` date DEFAULT NULL,
  `estado` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userStamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantpallets` int(11) DEFAULT NULL,
  `cantcajaspallets` int(11) DEFAULT NULL,
  `cantcajas` int(11) DEFAULT NULL,
  `cubicacaja` double DEFAULT NULL,
  `cubicatotalcajas` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` mediumint(9) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `primerapellido` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `segundoapellido` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `area` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `rol` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `reporta` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `dedicacion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `antiguedad` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `antecedentes` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcionfunciones` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `herramientas` varchar(500) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `habilitado` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `lugarnacimiento` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `foto` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `observaciones` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `userStamp` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id`, `nombre`, `primerapellido`, `segundoapellido`, `nacimiento`, `area`, `rol`, `reporta`, `dedicacion`, `antiguedad`, `antecedentes`, `descripcionfunciones`, `herramientas`, `habilitado`, `edad`, `lugarnacimiento`, `foto`, `username`, `password`, `observaciones`, `userStamp`, `modificado`) VALUES
(10, 'admin', 'Staff Técnico', '', '0000-00-00', 'Staff Técnico', 'Staff Tecnico', '', '', '', '', '', '', NULL, NULL, '', '', 'admin', 'admin', '', 'admin', '2020-04-25 23:55:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` mediumint(9) NOT NULL,
  `idcliente` mediumint(9) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `userStamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudexterna`
--

CREATE TABLE `solicitudexterna` (
  `id` mediumint(9) NOT NULL,
  `fecha` date DEFAULT NULL,
  `desde` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hasta` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `referencia` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DUA` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tienefecha` mediumint(10) DEFAULT NULL,
  `equipo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mercaderia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `matricula` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `userStamp` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logs` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `solicitudexterna`
--

INSERT INTO `solicitudexterna` (`id`, `fecha`, `desde`, `hasta`, `estado`, `referencia`, `DUA`, `tienefecha`, `equipo`, `mercaderia`, `precio`, `matricula`, `observaciones`, `userStamp`, `modificado`, `logs`) VALUES
(17, '2016-08-16', 'vimalcor', 'microfal ', 'Finalizado', '6917', '128503', 0, 'mesu', '4 skinds peso:801.05 cbm.4.34', NULL, NULL, 'el despeachante Nicasio Diaz se contactara con ustedes para coordinar fecha y hora de pick up nicasiodiaz@gmail.com', 'expomaritima', '2016-08-23 18:49:27', NULL),
(20, '2016-08-23', 'TCP', 'Mcrofal', 'Finalizado', '6886', '', 0, 'mesu', 'stcok:83312 cntr:SUDU6015922', NULL, NULL, 'El cliente necesita de forma urgente el traslado de esta mercadería y solicita 2 operarios para el momento de la descarga el despachante es Nicasio Diaz', 'expomaritima', '2016-08-23 22:08:44', ' Fecha:2016-08-26 07:39:10 Id Factura:298\r\n_______Desde: TCP Hasta: Mcrofal 2016-08-23...2700\r\n_______Desde: TCP Hasta: Mcrofal 2016-08-23...2700\r\n_______Mercaderia: 157 CAJAS 1852KG...\r\n_______DUA: 133966 - REF.6886...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(21, '2016-08-24', 'ZENDA, LAGUNA', 'TCU', 'Finalizado', 'EA08-00988-2016', '', 0, 'mesu', 'CUEROS, PALLETIZADO', NULL, NULL, 'lety', 'expoaerea', '2016-08-24 21:04:06', ' Fecha:2016-08-29 06:47:58 Id Factura:355\r\n_______Desde: ZENDA, LAGUNA Hasta: TCU 2016-08-24...3000\r\n_______Desde: ZENDA, LAGUNA Hasta: TCU 2016-08-24...3000\r\n_______Mercaderia: 4 PL 3200KG...\r\n_______DUA: EA08-00988-2016...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(22, '2016-08-26', 'ZENDA, LAGUNA', 'TCU', 'Finalizado', 'EA08-00987/991/989/990', '', 0, 'mesu', '18 PL ', NULL, NULL, 'ERT/CARMAN/PECA/JAN DERUISTER\r\n4/4/9/1', 'expoaerea', '2016-08-26 21:19:42', ' Fecha:2016-08-29 06:47:58 Id Factura:358\r\n_______Desde: ZENDA, LAGUNA Hasta: TCU 2016-08-26...6000\r\n_______Desde: ZENDA, LAGUNA Hasta: TCU 2016-08-26...6000\r\n_______Mercaderia: 9PL...\r\n_______DUA: REF.EA08-00990/1002-2016...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(23, '2016-08-24', 'Aeropuerto', 'CnodelosAromo', 'Finalizado', 'IA8608', '133918', 0, 'mesu', '', NULL, NULL, 'Detalle : 6 bultos / 108 kg./ volumen 0.850\r\n\r\nDireccion de entrega: Cno.de los Aromos S/N a 200 mt de Ruta 101 km25.500.', 'impoaerea', '2016-08-24 18:43:29', ' Fecha:2016-08-26 07:39:10 Id Factura:299\r\n_______Desde: Aeropuerto Hasta: CnodelosAromo 2016-08-24...1600\r\n_______Desde: Aeropuerto Hasta: CnodelosAromo 2016-08-24...1600\r\n_______Mercaderia: 6 BULTOS 108KG...\r\n_______DUA: 133918 - REF.8608 ...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(24, '2016-08-29', 'Aeropuerto', 'Microfal', 'Finalizado', '8666', '135693', 0, 'mesu', '', NULL, NULL, 'Detalle: 4 bultos / 82 kg / Medidas 2/15x12x6 - 2/83x9x8', 'impoaerea', '2016-08-29 20:21:29', ' Fecha:2016-08-30 13:42:59 Id Factura:401\r\n_______Desde: Aeropuerto Hasta: Microfal 2016-08-29...1080\r\n_______Desde: Aeropuerto Hasta: Microfal 2016-08-29...1080\r\n_______Mercaderia: 4PL 82KG...\r\n_______DUA: 135693...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(25, '2016-08-24', 'MONTECON', 'PDC - MEGA', 'Finalizado', 'OS 3288', '795619', 0, 'co20', 'TGHU 122245-8', NULL, NULL, 'SOLO COORDINAMOS EL FLETE - NO TENEMOS EL DUA YA QUE SOLAMENTE REALIZAMOS EL FLETE - NO TENEMOS CONTENEDOR YA QUE SOLO COORDINAMOS EL FLETE\r\n\r\nCARLOS TORRES ESTA AL TANTO - MAIL DE CARLOS', 'despachos', '2016-08-24 18:52:14', ' Fecha:2016-08-26 07:39:10 Id Factura:300\r\n_______Desde: PUERTO Hasta: PDC - MEGA 2016-08-24...200\r\n_______Desde: PUERTO Hasta: PDC - MEGA 2016-08-24...200\r\n_______Mercaderia: TGHU 122245-8...\r\n_______DUA: 795619- REF.3288...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(26, '2016-08-26', 'KHAIRI- PDC', 'TCU', 'Finalizado', 'EA08-00992-2016', '795983', 0, 'mesu', 'MEDICAMENTOS / PALLETIZADO  FURGON CERRADO', NULL, NULL, '5 PALLETS 369 KGS\r\n1.20*1.00*0.84\r\n\r\nPRESENTARSE 14.30 INFORMO DUA \r\nLETY', 'expoaerea', '2016-08-26 20:39:04', ' Fecha:2016-08-29 06:47:58 Id Factura:347\r\n_______Desde: KHAIRI- PDC Hasta: TCU 2016-08-26...140\r\n_______Desde: KHAIRI- PDC Hasta: TCU 2016-08-26...140\r\n_______Mercaderia: 5 PALLETS 369 KGS...\r\n_______DUA: 795983 - REF.EA08-00992-2016...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(27, '2016-08-24', 'MEGA, PDC', 'TCU', 'Finalizado', 'OS08-00931-2016', '', 0, 'mesu', 'FURGON MEDIANO / MEDICAMENTOS NO PERECEDEROS', NULL, NULL, '9096	19262	4	BULTOS	281,5	2,8	CHILE\r\n9059	19263	13	BULTOS	1003,5	8,87	CHILE\r\n9045	19232	93	CAJAS	 	 	PARAGUAY\r\n9093	19269	24	CAJAS	 	 	PARAGUAY     \r\n', 'expoaerea', '2016-08-26 22:11:19', ' Fecha:2016-08-29 06:47:58 Id Factura:360\r\n_______Desde: MEGA, PDC Hasta: TCU 2016-08-24...80\r\n_______Desde: MEGA, PDC Hasta: TCU 2016-08-24...80\r\n_______Mercaderia: 2 BULTOS 145KG...\r\n_______DUA: 795599/600 - REF.OS08-00931-2016...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(28, '2016-08-29', 'MEGA, PDC', 'TCU', 'Finalizado', 'OS08-00936-2016', '', 0, 'mesu', 'MEDICAMENTOS / PALLETIZADO  FURGON CERRADO', NULL, NULL, '9132	19286	20	1.571,00	15,60	PERU\r\n9144	12985	6	281,50	4,07	NICARAGUA\r\n9169	19282	1	37,00	0,48	DOMINICANA\r\n9130	19283	10	874,50	8,00	DOMINICANA\r\n', 'expoaerea', '2016-08-29 20:21:50', ' Fecha:2016-08-30 13:42:59 Id Factura:402\r\n_______Desde: MEGA, PDC Hasta: TCU 2016-08-29...250\r\n_______Desde: MEGA, PDC Hasta: TCU 2016-08-29...250\r\n_______Mercaderia: 37 BULTOS 2764KG...\r\n_______DUA: 796374/375/376/377 - REF.OS08-00936...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(29, '2030-08-30', 'MEGA, PDC', 'TCU', 'Finalizado', 'OS08-00936-2016', '', 0, 'mesu', 'ME', NULL, NULL, 'FURGON MEDIANO\r\n\r\n9109	19284	12	674,50	9,20	CHILE', 'expoaerea', '2016-08-30 19:58:00', ' Fecha:2016-08-31 08:30:48 Id Factura:433\r\n_______Desde: PDC - MEGA Hasta: TCU 2030-08-30...140\r\n_______Desde: PDC - MEGA Hasta: TCU 2030-08-30...140\r\n_______Mercaderia: 12 BULTOS 674KG...\r\n_______DUA: 796596 - REF.OS08-00936...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(30, '2016-08-30', 'Carrasco', 'Prosegur ', 'Finalizado', 'OS3293', '137708', 0, 'mesu', 'EQUIPO DE VIGILANCIA', NULL, NULL, '1 bulto de 176 kgs//1.344 m3\r\nDesde TCU a Prosegur (Rambla Y Florida), a confirmar hora con Marcelo Castro. Pasar matricula y nombre chofer para registro de ingreso en Prosegur//carga peligrosa', 'despachos', '2016-08-30 20:47:05', ' Fecha:2016-08-31 08:30:48 Id Factura:434\r\n_______Desde: TCU Hasta: PROSEGUR 2016-08-30...1700\r\n_______Desde: TCU Hasta: PROSEGUR 2016-08-30...1700\r\n_______Mercaderia: 1PL 176KG...\r\n_______DUA: 137708 - REF.3293...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______'),
(33, '2016-09-02', 'RILCOMAR', 'PINTURAS INCA', 'Finalizado', '7039', '139409 - REF.7039', 0, 'mesu', '1PL 485KG - 1.39M3', NULL, NULL, 'DESPACHANTE ALBERTO VERGARA \r\nCONTACTO PINTURAS INCA.\'PABLO.PEREIRA@AKZONOBEL.COM\r\n\r\nRILCOMAR', 'expomaritima', '2016-08-31 21:05:20', ' Fecha:2016-09-02 08:37:17 Id Factura:520\r\n_______Desde: RILCOMAR Hasta: PINTURAS INCA 2016-09-02...2100\r\n_______Desde: RILCOMAR Hasta: PINTURAS INCA 2016-09-02...2100\r\n_______Mercaderia: 1PL 485KG - 1.39M3...\r\n_______DUA: 139409 - REF.7039...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______...\r\n_______');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `camion`
--
ALTER TABLE `camion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `egresopallets`
--
ALTER TABLE `egresopallets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pallets`
--
ALTER TABLE `pallets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudexterna`
--
ALTER TABLE `solicitudexterna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `camion`
--
ALTER TABLE `camion`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `egresopallets`
--
ALTER TABLE `egresopallets`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pallets`
--
ALTER TABLE `pallets`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `solicitudexterna`
--
ALTER TABLE `solicitudexterna`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
