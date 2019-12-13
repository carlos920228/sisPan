-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-12-2019 a las 22:17:05
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_pan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `idpartidas` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `solicitudes_folio` int(11) NOT NULL,
  `emisor` varchar(18) NOT NULL,
  `receptor` varchar(18) NOT NULL,
  `totalfactura` double NOT NULL,
  `foliosat` text NOT NULL,
  `xml` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`idpartidas`, `descripcion`, `total`, `solicitudes_folio`, `emisor`, `receptor`, `totalfactura`, `foliosat`, `xml`) VALUES
(7, 'Comida', '2000.70', 26, '', '', 0, '', '0'),
(9, 'Gasolina', '10000.80', 25, '', '', 0, '', '0'),
(12, 'Comida', '500.00', 29, '', '', 0, '', '0'),
(14, 'casetas', '70.50', 26, '', '', 0, '', '0'),
(15, 'ropa', '10000', 32, '', '', 0, '', '0'),
(16, 'Otro', '3000', 35, '', '', 0, '', '0'),
(17, 'Gasolina', '1500', 35, '', '', 0, '', '0'),
(18, 'Autobuses', '200', 36, '', '', 0, '', '12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`idpartidas`),
  ADD KEY `fk_partidas_solicitudes_idx` (`solicitudes_folio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `idpartidas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD CONSTRAINT `fk_partidas_solicitudes` FOREIGN KEY (`solicitudes_folio`) REFERENCES `solicitudes` (`folio`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
