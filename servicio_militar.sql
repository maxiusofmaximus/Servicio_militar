-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2023 a las 03:42:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `servicio_militar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compañia`
--

CREATE TABLE `compañia` (
  `codigo_compañia` int(11) NOT NULL,
  `codigo_soldado` int(11) NOT NULL,
  `actividad` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compañia`
--

INSERT INTO `compañia` (`codigo_compañia`, `codigo_soldado`, `actividad`) VALUES
(1, 1, 'PRUEBA FISICA'),
(2, 2, 'PRUEBA SCL'),
(3, 3, 'TERRENO'),
(4, 4, 'LAVAR BAÑOS'),
(5, 5, 'GUARDIA NOCTURNA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuartel`
--

CREATE TABLE `cuartel` (
  `codigo_cuartel` int(11) NOT NULL,
  `codigo_soldado` int(11) NOT NULL,
  `codigo_compañia` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `ubicacion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuartel`
--

INSERT INTO `cuartel` (`codigo_cuartel`, `codigo_soldado`, `codigo_compañia`, `nombre`, `ubicacion`) VALUES
(1, 1, 1, 'DIMIL-1', 'MEDELLIN'),
(2, 2, 2, 'DIMIL-2', 'CALI'),
(3, 3, 3, 'DIMIL-3', 'VALLE DEL CAUCA'),
(4, 4, 4, 'DIMIL-4', 'BOGOTA'),
(5, 5, 5, 'DIMIL-5', 'AMAZONAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo`
--

CREATE TABLE `cuerpo` (
  `codigo_cuerpo` int(11) NOT NULL,
  `codigo_soldado` int(11) NOT NULL,
  `denominacion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuerpo`
--

INSERT INTO `cuerpo` (`codigo_cuerpo`, `codigo_soldado`, `denominacion`) VALUES
(1, 1, 'LIMA'),
(2, 2, 'BRAVO'),
(3, 3, 'ALFA'),
(4, 4, 'BETA'),
(5, 5, 'GAMMA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `codigo_servicio` int(11) NOT NULL,
  `codigo_soldado` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`codigo_servicio`, `codigo_soldado`, `descripcion`) VALUES
(1, 1, 'SENTADILLAS'),
(2, 2, 'AGUAS PROFUNDAS'),
(3, 3, 'MANEJ0 DE ARMAS'),
(4, 4, 'ECHAR AGUA A LOS BAÑOS'),
(5, 5, 'PATRULLAJE CAMAROTES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soldado`
--

CREATE TABLE `soldado` (
  `codigo_soldado` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `graduacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `soldado`
--

INSERT INTO `soldado` (`codigo_soldado`, `nombre`, `apellido`, `graduacion`) VALUES
(1, 'PEDRO', 'VASQUEZ', '1980-07-10'),
(2, 'CARLOS', 'MEJIA', '1989-05-20'),
(3, 'JULIAN', 'JIMENEZ', '2005-02-01'),
(4, 'WILSON', 'VELEZ', '2001-05-03'),
(5, 'LUIS', 'PEREZ', '2000-05-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compañia`
--
ALTER TABLE `compañia`
  ADD PRIMARY KEY (`codigo_compañia`),
  ADD KEY `codigo_soldado` (`codigo_soldado`);

--
-- Indices de la tabla `cuartel`
--
ALTER TABLE `cuartel`
  ADD PRIMARY KEY (`codigo_cuartel`),
  ADD KEY `codigo_soldado` (`codigo_soldado`),
  ADD KEY `codigo_compañia` (`codigo_compañia`);

--
-- Indices de la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD PRIMARY KEY (`codigo_cuerpo`),
  ADD KEY `codigo_soldado` (`codigo_soldado`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`codigo_servicio`),
  ADD KEY `codigo_soldado` (`codigo_soldado`);

--
-- Indices de la tabla `soldado`
--
ALTER TABLE `soldado`
  ADD PRIMARY KEY (`codigo_soldado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compañia`
--
ALTER TABLE `compañia`
  MODIFY `codigo_compañia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cuartel`
--
ALTER TABLE `cuartel`
  MODIFY `codigo_cuartel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  MODIFY `codigo_cuerpo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `codigo_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `soldado`
--
ALTER TABLE `soldado`
  MODIFY `codigo_soldado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compañia`
--
ALTER TABLE `compañia`
  ADD CONSTRAINT `compañia_ibfk_1` FOREIGN KEY (`codigo_soldado`) REFERENCES `soldado` (`codigo_soldado`);

--
-- Filtros para la tabla `cuartel`
--
ALTER TABLE `cuartel`
  ADD CONSTRAINT `cuartel_ibfk_1` FOREIGN KEY (`codigo_soldado`) REFERENCES `soldado` (`codigo_soldado`),
  ADD CONSTRAINT `cuartel_ibfk_2` FOREIGN KEY (`codigo_compañia`) REFERENCES `compañia` (`codigo_compañia`);

--
-- Filtros para la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD CONSTRAINT `cuerpo_ibfk_1` FOREIGN KEY (`codigo_soldado`) REFERENCES `soldado` (`codigo_soldado`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`codigo_soldado`) REFERENCES `soldado` (`codigo_soldado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
