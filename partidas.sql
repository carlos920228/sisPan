-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-12-2019 a las 08:12:44
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
  `xml` text NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`idpartidas`, `descripcion`, `total`, `solicitudes_folio`, `emisor`, `receptor`, `totalfactura`, `foliosat`, `xml`, `estatus`) VALUES
(7, 'Comida', '2000.70', 26, '', '', 0, '', '0', 0),
(9, 'Gasolina', '10000.80', 25, '', '', 0, '', '0', 0),
(12, 'Comida', '500.00', 29, '', '', 0, '', '0', 0),
(14, 'casetas', '70.50', 26, '', '', 0, '', '0', 0),
(15, 'ropa', '10000', 32, '', '', 0, '', '0', 0),
(16, 'Otro', '3000', 35, '', '', 0, '', '0', 0),
(17, 'Gasolina', '1500', 35, '', '', 0, '', '0', 0),
(18, 'Autobuses', '200', 36, 'COGM750623484', 'IUV0412306K3', 9857, 'BA695AFA-C70A-464B-A2C3-8CC7FB5C812E', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;&lt;cfdi:Comprobante xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot; Version=&quot;3.3&quot; Folio=&quot;527&quot; Fecha=&quot;2019-05-22T15:45:27&quot; Sello=&quot;X8NMg/+SgS6cMaGoF/FMm0LFMRVRYW4FzOvp7lTO68PRVd8Ncf6hnXqeKcbu3tMwTlChlVgEGi+1msXD3LUDjXiTTNZePTEblmdgKkaADyaT9Z6p9j8sPNtl+x2UFkDX1lHecn1XQoW1FQQeQ8h6dSfCgRUy1rzukwXJ3VCB7VuuJdpUxaZtBwpgiWqNtj7Wpcufh8ZZkVNfQUlTSvc14/1dpphAnatUmOyL/WUj0q/2bmTpP107ZGM3R1Rq8pmq0rR9sERILDGObSN5osV6S6k10i8JUyZDN+/esYvPAUsCWD2YcKuWe7yL5oxEBIQeNZuk7nIGdmbFcxDnfOfiMQ==&quot; FormaPago=&quot;99&quot; NoCertificado=&quot;00001000000409599567&quot; Certificado=&quot;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&quot; SubTotal=&quot;8497.41&quot; Moneda=&quot;MXN&quot; Total=&quot;9857.00&quot; TipoDeComprobante=&quot;I&quot; MetodoPago=&quot;PPD&quot; LugarExpedicion=&quot;91000&quot; xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot;&gt;&lt;cfdi:Emisor Rfc=&quot;COGM750623484&quot; Nombre=&quot;MARIO CORDOBA GARCIA&quot; RegimenFiscal=&quot;612&quot; /&gt;&lt;cfdi:Receptor Rfc=&quot;IUV0412306K3&quot; Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO S C&quot; UsoCFDI=&quot;G03&quot; /&gt;&lt;cfdi:Conceptos&gt;&lt;cfdi:Concepto ClaveUnidad=&quot;E48&quot; ClaveProdServ=&quot;82101500&quot; Cantidad=&quot;1&quot; Descripcion=&quot;PRODUCCI&Oacute;N Y COLOCACI&Oacute;N DE SE&Ntilde;ALETICA INSTITUCIONAL&quot; ValorUnitario=&quot;8497.413&quot; Importe=&quot;8497.413&quot;&gt;&lt;cfdi:Impuestos&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Base=&quot;8497.413&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;1359.586080&quot; /&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;/cfdi:Concepto&gt;&lt;/cfdi:Conceptos&gt;&lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;1359.59&quot;&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;1359.59&quot; /&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;cfdi:Complemento&gt;&lt;tfd:TimbreFiscalDigital Version=&quot;1.1&quot; RfcProvCertif=&quot;STA0903206B9&quot; UUID=&quot;BA695AFA-C70A-464B-A2C3-8CC7FB5C812E&quot; FechaTimbrado=&quot;2019-05-22T15:51:36&quot; SelloCFD=&quot;X8NMg/+SgS6cMaGoF/FMm0LFMRVRYW4FzOvp7lTO68PRVd8Ncf6hnXqeKcbu3tMwTlChlVgEGi+1msXD3LUDjXiTTNZePTEblmdgKkaADyaT9Z6p9j8sPNtl+x2UFkDX1lHecn1XQoW1FQQeQ8h6dSfCgRUy1rzukwXJ3VCB7VuuJdpUxaZtBwpgiWqNtj7Wpcufh8ZZkVNfQUlTSvc14/1dpphAnatUmOyL/WUj0q/2bmTpP107ZGM3R1Rq8pmq0rR9sERILDGObSN5osV6S6k10i8JUyZDN+/esYvPAUsCWD2YcKuWe7yL5oxEBIQeNZuk7nIGdmbFcxDnfOfiMQ==&quot; NoCertificadoSAT=&quot;00001000000405131108&quot; SelloSAT=&quot;HdMgiCM4zTK2WzA4tGDCS7ph5Wmwo+FaGAqFx89+vzz/zjD4JYusTFjBGWypj7n1muUQ4vju4Vx3b81BcKCPJXTjqGgv1OtiHXv7GXedDYOwEr6W/3+oyhlGopM08Of6/LpRwyDuxOhi0W8sQWX4CuOWdHhCRgMZ3vxsjr5o4jIynT6HRnzs9Ac1eth2EDB+mB1AOX3SAT9wPOQgABQ5Pzb+7IC1M8LmN9XtHPbtxFrEFAveh+HOECwosSR3yJ8rEoLcpJI40CMVBKmvePvVZH2xX/MODh224VZqIEuBFOe/8kyryhGjjNDR1EXqPyTxew1uXsV5OAojQuqJEMZf2A==&quot; xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd&quot; /&gt;&lt;/cfdi:Complemento&gt;&lt;/cfdi:Comprobante&gt;', 1);

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
