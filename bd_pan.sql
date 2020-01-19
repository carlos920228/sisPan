-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-01-2020 a las 19:54:25
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
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `folio` int(11) NOT NULL,
  `idpartida` int(11) NOT NULL,
  `emisor` varchar(18) COLLATE utf8_spanish_ci NOT NULL,
  `receptor` varchar(18) COLLATE utf8_spanish_ci NOT NULL,
  `totalfactura` double NOT NULL,
  `foliosat` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `xml` text COLLATE utf8_spanish_ci NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructuras`
--

CREATE TABLE `estructuras` (
  `idestructuras` int(11) NOT NULL,
  `estructura` varchar(45) DEFAULT NULL,
  `titular` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT 1,
  `presupuesto` varchar(45) DEFAULT NULL,
  `mensual` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estructuras`
--

INSERT INTO `estructuras` (`idestructuras`, `estructura`, `titular`, `estado`, `presupuesto`, `mensual`) VALUES
(1, 'ACAJETE', ' ZOREN JOAQUIN HERNANDEZ RODRIGUEZ ', 1, '78854.12', '6571.18'),
(2, 'ACATLAN', ' FRANCISCO RENDON GRAJALES', 1, '61069.46', '5089.12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidas`
--

CREATE TABLE `partidas` (
  `idpartidas` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `solicitudes_folio` int(11) NOT NULL,
  `documentado` double NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`idpartidas`, `descripcion`, `total`, `solicitudes_folio`, `documentado`, `estatus`) VALUES
(7, 'Comida', '2000.70', 26, 0, 0),
(9, 'Gasolina', '10000.80', 25, 0, 0),
(12, 'Comida', '500.00', 29, 0, 0),
(14, 'casetas', '70.50', 26, 0, 0),
(15, 'ropa', '10000', 32, 0, 0),
(16, 'Otro', '3000', 35, 0, 0),
(18, 'Gasolina', '1500', 35, 0, 0),
(19, 'Gasolina', '500', 36, 0, 0),
(20, 'Gasolina', '500', 38, 341, 0),
(21, 'Casetas', '500', 38, 0, 2),
(22, 'Gasolina', '1000', 40, 0, 3),
(23, 'Casetas', '670', 40, 0, 2),
(24, 'Gasolina', '300', 40, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `razon_social` varchar(100) DEFAULT NULL,
  `nombre_contacto` varchar(45) DEFAULT NULL,
  `RFC` varchar(20) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `clabe` varchar(18) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `id_ine` varchar(45) DEFAULT NULL,
  `activo` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `razon_social`, `nombre_contacto`, `RFC`, `banco`, `clabe`, `direccion`, `telefono`, `celular`, `correo`, `ciudad`, `estado`, `id_ine`, `activo`) VALUES
(1, 'CARLOS HUMBERTO ROMERO CALLEJAS', 'Carlos Humberto Romero Callejas', 'ROCC920228', 'Santander', '009988776635255', 'REFORMA S/N, No. 12', '(228) 838-7334', '(228) 838-7334', 'Carlos920228@gmail.com', 'EL LIMON', 'Veracruz', '12345', 1),
(2, 'Pepe Pecas SA', 'PEPE ', 'ROCA890312', 'Banamex', '1234578977655', 'REFORMA S/N, No. 12', '(228) 838-7334', '(228) 838-7334', 'Carlos920228@gmail.com', 'EL LIMON', 'Veracruz', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `folio` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `denominacion_comision` varchar(450) DEFAULT NULL,
  `estado_origen` varchar(45) DEFAULT NULL,
  `ciudad_origen` varchar(45) DEFAULT NULL,
  `estado_destino` varchar(45) DEFAULT NULL,
  `ciudad_destino` varchar(45) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `motivo` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT 'pendiente',
  `total` varchar(45) DEFAULT '0',
  `pago_prov` int(11) DEFAULT NULL,
  `estatus` int(1) DEFAULT NULL,
  `tipo_sol` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`folio`, `Fecha`, `Nombre`, `area`, `denominacion_comision`, `estado_origen`, `ciudad_origen`, `estado_destino`, `ciudad_destino`, `fecha_inicio`, `fecha_fin`, `motivo`, `estado`, `total`, `pago_prov`, `estatus`, `tipo_sol`) VALUES
(24, '2019-11-07', 'Carlos Humberto Romero Callejas', 'Sistemas', 'Xalapa', 'Veracruz', 'Xalapa', 'Veracruz', 'Veracruz', NULL, NULL, 'Viaje relaciones públicas', 'cancelada', '6000.00', NULL, 2, 0),
(25, '2019-11-12', 'Carlos Humberto Romero Callejas', 'Sistemas', 'Test XML cancelado', 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, NULL, 'cancelada', '5000.4', NULL, 1, 0),
(26, '2019-11-12', 'Carlos Humberto Romero Callejas', 'Sistemas', 'Xalapa', 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'none', 'pagada', '2071.2', NULL, NULL, 0),
(27, '2019-11-14', 'Juan Perez', 'Contabilidad', 'Xalapa', 'Veracruz', 'Xalapa', 'Xalapa', 'Xalapa', NULL, NULL, 'Capacitación nuevo sistema', '0', '0', NULL, NULL, 0),
(28, '2019-11-14', 'Juan Perez', 'Sistemas', 'Xalapa', 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Capacitación nuevo sistema', '0', '0', NULL, NULL, 0),
(29, '2019-11-14', 'Juan Perez', 'Contabilidad', 'Xalapa', 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Capacitación nuevo sistema', 'pagada', '500', NULL, NULL, 0),
(30, '2019-11-14', 'Juan Perez', 'Sistemas', 'Xalapa', 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Capacitación nuevo sistema', '0', '0', NULL, NULL, 0),
(31, '2019-11-14', 'Juan Perez', 'esdf', 'jgjg', 'jhgj', 'jgjg', 'gjj', 'gjhgj', NULL, NULL, 'jhgjjhg', '0', '0', NULL, NULL, 0),
(32, '2019-11-14', 'Juan Perez', 'Sistemas', 'Xalap', 'kjhk', 'khk', 'hkjhkj', 'hkj', NULL, NULL, 'pendiete', 'cancelada', '10000', NULL, NULL, 0),
(33, '2019-12-02', 'Carlos Humberto Romero Callejas', 'Xalapa', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Test insert metadata sol', '0', '0', NULL, NULL, 0),
(34, '2019-12-02', 'Carlos Humberto Romero Callejas', 'Xalapa', 'Actividad ordinaria', 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'none', '0', '0', NULL, NULL, 0),
(35, '2019-12-03', 'Carlos Humberto Romero Callejas', 'Sistemas', 'Requiere vehículo', 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Capacitación nuevo sistema', 'pagada', '4500', NULL, NULL, 0),
(36, '2019-12-13', 'Mario Alberto Ventura Martinez', 'redes', 'Actividad ordinaria', 'Veracruz', 'Xalapa', 'Veracruz', 'veracruz', NULL, NULL, 'viaje de negocios', 'verificar', '0', NULL, NULL, 0),
(37, '2020-01-15', 'Mario Alberto Ventura Martinez', 'redes', 'Actividad ordinaria', 'Veracruz', 'Xalapa', 'Veracruz', 'veracruz', NULL, NULL, 'viaje de negocios', '0', '500', NULL, NULL, 0),
(38, '2020-01-15', 'Mario Alberto Ventura Martinez', 'redes', 'Actividad ordinaria', 'Veracruz', 'Xalapa', 'Veracruz', 'veracruz', NULL, NULL, 'viaje de negocios', 'pagada', '1000', NULL, NULL, 0),
(39, '2020-01-19', 'Mario Alberto Ventura Martinez', 'redes', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'xalapa', NULL, NULL, 'solicitud de prueba', 'aceptada', '0', NULL, NULL, 0),
(40, '2020-01-19', 'Mario Alberto Ventura Martinez', 'Contabilidad', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Solicitud de prueba', 'verificar', '1970', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `comite_municipal` varchar(45) DEFAULT NULL,
  `delegacion` varchar(45) DEFAULT NULL,
  `comision` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `nombre`, `apellidos`, `telefono`, `correo`, `departamento`, `comite_municipal`, `delegacion`, `comision`, `celular`, `password`, `nivel`, `estado`) VALUES
(1, 'Carlos Humberto', 'Romero Callejas', '2288387334', 'carlos920228@gmail.com', 'sistemas', 'xalapa', 'xalapa', '1', '2288387334', '0', 1, 1),
(4, 'Juan', 'Perez', '8141516', 'perez@gmail.com', 'Sistemas', 'Xalapa', 'Xalapa', 'Xalapa', '2288387334', 'perez', 0, 1),
(5, 'Test ', 'User', '(228) 838-7334', 'Carlos92@gmail.com', 'Veracruz', NULL, NULL, NULL, '(228) 838-7334', '5', 0, 1),
(6, 'Mario Alberto', 'Ventura Martinez', '228 276 1844', 'mavem80@gmail.com', 'Contabilidad', 'Xalapa', 'Xalapa', 'Xalapa', '228 276 1844', 'mavem80', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estructuras`
--
ALTER TABLE `estructuras`
  ADD PRIMARY KEY (`idestructuras`);

--
-- Indices de la tabla `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`idpartidas`),
  ADD KEY `fk_partidas_solicitudes_idx` (`solicitudes_folio`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`folio`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estructuras`
--
ALTER TABLE `estructuras`
  MODIFY `idestructuras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `partidas`
--
ALTER TABLE `partidas`
  MODIFY `idpartidas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
