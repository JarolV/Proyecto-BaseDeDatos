-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2021 a las 00:53:25
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventasdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cedula` varchar(12) NOT NULL,
  `nom_cli` varchar(30) NOT NULL,
  `ape_cli` varchar(30) NOT NULL,
  `sexo_cli` varchar(1) NOT NULL,
  `tel_cli` varchar(9) NOT NULL,
  `email_cli` varchar(30) NOT NULL,
  `dir_cli` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cedula`, `nom_cli`, `ape_cli`, `sexo_cli`, `tel_cli`, `email_cli`, `dir_cli`) VALUES
('1007192405', 'Jarol', 'Vidal', 'M', '319254064', 'jarol.vidal.a@gmail.com', 'Carrera 15'),
('1007192474', 'juan jose', 'Delgado', 'M', '319744998', 'juan@gmail.com', 'cr 122'),
('56546546', 'Carlos', 'Alzate', 'M', '65465', 'car@gmail.com', 'cr 232'),
('66523', 'Fernanada', 'Gutierrez', 'F', '23446', 'fer@gmail.com', 'cr44'),
('88996663', 'Jorge', 'Noriega', 'M', '88887777', 'jorge@gmail.com', 'cr 333'),
('8989898', 'maria', 'Chuchena', 'F', '7879989', 'mari@gmail.com', 'cr 44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefactura`
--

CREATE TABLE `detallefactura` (
  `num_fac` varchar(10) NOT NULL,
  `cod_pro` varchar(6) NOT NULL,
  `des_pro` varchar(30) NOT NULL,
  `cant_pro` varchar(3) NOT NULL,
  `pre_unit` varchar(10) NOT NULL,
  `pre_tot` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallefactura`
--

INSERT INTO `detallefactura` (`num_fac`, `cod_pro`, `des_pro`, `cant_pro`, `pre_unit`, `pre_tot`) VALUES
('00000004', 'CP0003', 'Alcohol 2L', '2', '6000', '12000.0'),
('00000004', 'CP0001', 'Gel Antibacterial 1li', '3', '4500', '13500.0'),
('00000005', 'CP0002', 'Jabon rey', '4', '1600', '6400.0'),
('00000005', 'CP0003', 'Alcohol 2L', '2', '6000', '12000.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribuidores`
--

CREATE TABLE `distribuidores` (
  `Nit` varchar(10) NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `comercio` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `telefono` varchar(13) CHARACTER SET utf8mb4 NOT NULL,
  `direccion` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `distribuidores`
--

INSERT INTO `distribuidores` (`Nit`, `nombre`, `comercio`, `telefono`, `direccion`) VALUES
('1209380918', 'Jorge Garcia', 'Laboratorio', '312989778', 'Pereira'),
('663232332', 'Marcelo tamayo', 'Quimicos asociados', '555555555', 'armenia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `num_fac` varchar(12) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `subtotal` varchar(10) NOT NULL,
  `igv` varchar(40) NOT NULL,
  `total` varchar(20) NOT NULL,
  `fec_fac` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`num_fac`, `cedula`, `subtotal`, `igv`, `total`, `fec_fac`) VALUES
('00000004', '1007192474', '25500.0', '4845.0', '30345.0', '03/05/2021'),
('00000005', '1007192474', '18400.0', '3496.0', '21896.0', '17/05/2021'),
('00000006', '66523', '11000.0', '2090.0', '13090.0', '17/05/2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_pro` varchar(6) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `precio` varchar(10) NOT NULL,
  `Stock` varchar(10) NOT NULL,
  `Nit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_pro`, `descripcion`, `precio`, `Stock`, `Nit`) VALUES
('CP0001', 'Gel Antibacterial 1li', '4500', '4', '1209380918'),
('CP0002', 'Jabon rey', '1600', '43', '1209380918'),
('CP0003', 'Alcohol 2L', '6000', '7', '1209380918'),
('CP0004', 'Hipoclorito 1libra', '5500', '4', '1209380918');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reabastecimiento`
--

CREATE TABLE `reabastecimiento` (
  `cod_reabastecimiento` varchar(10) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `cantidad` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reabastecimiento`
--

INSERT INTO `reabastecimiento` (`cod_reabastecimiento`, `descripcion`, `cantidad`) VALUES
('AB0001', 'acido sulfurico', '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD KEY `num_fac` (`num_fac`),
  ADD KEY `cod_pro` (`cod_pro`);

--
-- Indices de la tabla `distribuidores`
--
ALTER TABLE `distribuidores`
  ADD PRIMARY KEY (`Nit`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`num_fac`),
  ADD KEY `cod_cli` (`cedula`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_pro`,`descripcion`),
  ADD KEY `Nit` (`Nit`);

--
-- Indices de la tabla `reabastecimiento`
--
ALTER TABLE `reabastecimiento`
  ADD PRIMARY KEY (`cod_reabastecimiento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD CONSTRAINT `detallefactura_ibfk_1` FOREIGN KEY (`num_fac`) REFERENCES `factura` (`num_fac`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallefactura_ibfk_2` FOREIGN KEY (`cod_pro`) REFERENCES `producto` (`cod_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `cliente` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Nit`) REFERENCES `distribuidores` (`Nit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
