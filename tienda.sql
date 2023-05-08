-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2023 a las 12:30:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_Raul` ()   BEGIN
SELECT * FROM cliente WHERE Nombres_cliente LIKE '%Raul%';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ID_pr` ()   BEGIN
SELECT Nombre_producto FROM producto WHERE ID_producto ='pr93846000';
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_cliente` varchar(10) NOT NULL,
  `Nombres_cliente` varchar(30) NOT NULL,
  `Apellidos_cliente` varchar(30) NOT NULL,
  `Direccion_cliente` varchar(50) NOT NULL,
  `Telefono_cliente` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_cliente`, `Nombres_cliente`, `Apellidos_cliente`, `Direccion_cliente`, `Telefono_cliente`) VALUES
('bt3', 'Brian Jose', 'Talamantes Rios', 'AV. LIBERTAD NO. 495	COL.CENTRO TUXTEPEC', 3048572),
('jo1', 'Jonathan Oswaldo', 'Cardenas Garcia', 'AV. INDEPENDENCIA NO. 670	CENTRO', 9485769),
('mg2', 'Maria', 'Gomez Lopez', 'CALLE ALDAMA NO.50	COL.CENTRO TUXTEPEC', 4958630),
('pc5', 'Paola', 'Castro Hernandez', '20 DE NOVIEMBRE NO. 955	CENTRO', 3958873),
('rs4', 'Ricardo Alaniz', 'Sosa Lirios', 'CALLE BENITO JUAREZ NO.495	COL.LAZARO CARDENAS.', 3947562);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `ID_marca` varchar(10) NOT NULL,
  `Nombre_marca` varchar(20) NOT NULL,
  `Descripcion_marca` varchar(100) NOT NULL,
  `Direccion_marca` varchar(50) NOT NULL,
  `Telefono_marca` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`ID_marca`, `Nombre_marca`, `Descripcion_marca`, `Direccion_marca`, `Telefono_marca`) VALUES
('id39487635', 'Imprime3D', 'empresa de insumos de impresión 3d. ', 'AV. 5 DE MAYO NO. 1652	LA PIRAGUA', 4450692),
('pc94856283', 'PCcomponentes', 'Empresa de venta de componentes de pc.', 'AV. INDEPENDENCIA NO. 241	COL. CENTRO TUXTEPEC', 9475623),
('pt23485763', 'Pctec', 'Empresa de redes de telecomunicaciones. ', 'CALLE AGUSTIN LARA NO. 69-B	COL. EX-NORMAL TUXTEPE', 7467263),
('tm38476253', 'Tecnomundo', 'empresa de reparación de pcs y venta de insumos.', 'AV. 20 DE NOVIEMBRE NO.1024	COL.CENTRO', 5009672),
('vh30957693', 'Vistahd', 'empresa de monitores de computadora.', 'AV.INDEPENDENCIA NO. 678	COL. CENTRO', 3994856);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p-m`
--

CREATE TABLE `p-m` (
  `ID_producto` varchar(10) NOT NULL,
  `ID_marca` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_producto` varchar(10) NOT NULL,
  `Nombre_producto` varchar(30) NOT NULL,
  `Descripcion_producto` varchar(100) NOT NULL,
  `Precio_producto` double NOT NULL,
  `ID_marca` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_producto`, `Nombre_producto`, `Descripcion_producto`, `Precio_producto`, `ID_marca`) VALUES
('cr84378394', 'Computadora para renderizado y', 'Computadora para renderizado y diseño 3d.', 50000, 'pc94856283'),
('fi28957362', 'Filamento negro para imprimir ', 'Filamento negro para imprimir 3d.', 500, 'id39487635'),
('hl94856325', 'Juego De Herramientas De Limpi', 'Juego De Herramientas De Limpieza Para Teclados 12pzs.', 150, 'tm38476253'),
('mg85736459', 'Monitor gamer led 27\" dark blu', 'Monitor gamer led 27\" dark blue gray .', 4700, 'vh30957693'),
('pr93846000', 'Paquete red inalámbrica con rú', 'Paquete red inalámbrica con rúter.', 3500, 'pt23485763');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `ID_venta` varchar(10) NOT NULL,
  `ID_cliente` varchar(10) NOT NULL,
  `ID_producto` varchar(10) NOT NULL,
  `Fecha_venta` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`ID_venta`, `ID_cliente`, `ID_producto`, `Fecha_venta`) VALUES
('v1', 'bt3', 'cr84378394', 20220712),
('v2', 'jo1', 'fi28957362', 20230803),
('v3', 'mg2', 'hl94856325', 20230511),
('v4', 'pc5', 'mg85736459', 20230103),
('v5', 'rs4', 'pr93846000', 20230310);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_cliente`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`ID_marca`);

--
-- Indices de la tabla `p-m`
--
ALTER TABLE `p-m`
  ADD PRIMARY KEY (`ID_producto`,`ID_marca`),
  ADD KEY `ID_marca` (`ID_marca`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_producto`,`ID_marca`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`ID_venta`,`ID_cliente`,`ID_producto`),
  ADD KEY `ID_cliente` (`ID_cliente`),
  ADD KEY `ID_producto` (`ID_producto`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `p-m`
--
ALTER TABLE `p-m`
  ADD CONSTRAINT `p-m_ibfk_1` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`),
  ADD CONSTRAINT `p-m_ibfk_2` FOREIGN KEY (`ID_marca`) REFERENCES `marca` (`ID_marca`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
