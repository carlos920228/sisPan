-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-02-2020 a las 09:25:10
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
  `estatus` int(11) NOT NULL,
  `tiempo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comprobantes`
--

INSERT INTO `comprobantes` (`folio`, `idpartida`, `emisor`, `receptor`, `totalfactura`, `foliosat`, `xml`, `estatus`, `tiempo`) VALUES
(44, 52, 'CPM030614M68', 'IUV0412306K3', 47, 'D97FAACC-0208-4B7B-8DC6-1ABA4816A7C4', '﻿&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;\r\n&lt;cfdi:Comprobante xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot; xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot; Version=&quot;3.3&quot; Folio=&quot;987657&quot; Fecha=&quot;2019-03-26T12:31:58&quot; Sello=&quot;Su2n7kotyc4/iz+Cu2Az56Vugu0EpuLpvg1GnOz5NBz+ATmvIVuLVO6IfDDql1Q8Z50k+tjtskEP3LUdIF3x3GWkIwNqnJ/iWbpOXxWl0ZG+mzwMGnuNvTktxGynI5tat//8WBnETQcfE548nJGPXsmbriuI5rQZGhXoA1cre90AJ1bxf3cIh0f0oyP2wZIvlXsTZ3cRvUttfoLZUg2CB0Ldd1LnV08cxwOs7t7IPqo7f/NqFh5R50008yr8ir2TonZ3SXkNdFJq7j3CXTT53XiXoUCbV4bJSiU05He16q2TQ74/g7Roa6VP07PZWrHKGLkPQZ54drZYVTxKyaEq/Q==&quot; FormaPago=&quot;01&quot; NoCertificado=&quot;00001000000404232475&quot; Certificado=&quot;MIIGYTCCBEmgAwIBAgIUMDAwMDEwMDAwMDA0MDQyMzI0NzUwDQYJKoZIhvcNAQELBQAwggGyMTgwNgYDVQQDDC9BLkMuIGRlbCBTZXJ2aWNpbyBkZSBBZG1pbmlzdHJhY2nDs24gVHJpYnV0YXJpYTEvMC0GA1UECgwmU2VydmljaW8gZGUgQWRtaW5pc3RyYWNpw7NuIFRyaWJ1dGFyaWExODA2BgNVBAsML0FkbWluaXN0cmFjacOzbiBkZSBTZWd1cmlkYWQgZGUgbGEgSW5mb3JtYWNpw7NuMR8wHQYJKoZIhvcNAQkBFhBhY29kc0BzYXQuZ29iLm14MSYwJAYDVQQJDB1Bdi4gSGlkYWxnbyA3NywgQ29sLiBHdWVycmVybzEOMAwGA1UEEQwFMDYzMDAxCzAJBgNVBAYTAk1YMRkwFwYDVQQIDBBEaXN0cml0byBGZWRlcmFsMRQwEgYDVQQHDAtDdWF1aHTDqW1vYzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMV0wWwYJKoZIhvcNAQkCDE5SZXNwb25zYWJsZTogQWRtaW5pc3RyYWNpw7NuIENlbnRyYWwgZGUgU2VydmljaW9zIFRyaWJ1dGFyaW9zIGFsIENvbnRyaWJ1eWVudGUwHhcNMTYxMTE0MTUzMzUxWhcNMjAxMTE0MTUzMzUxWjCCAQAxNDAyBgNVBAMTK0NPTkNFU0lPTkVTIFkgUFJPTU9DSU9ORVMgTUFMSUJSQU4gU0EgREUgQ1YxNDAyBgNVBCkTK0NPTkNFU0lPTkVTIFkgUFJPTU9DSU9ORVMgTUFMSUJSQU4gU0EgREUgQ1YxNDAyBgNVBAoTK0NPTkNFU0lPTkVTIFkgUFJPTU9DSU9ORVMgTUFMSUJSQU4gU0EgREUgQ1YxJTAjBgNVBC0THENQTTAzMDYxNE02OCAvIE1FTUE2NTA3MjYxWjQxHjAcBgNVBAUTFSAvIE1FTUE2NTA3MjZIREZOUkwwNzEVMBMGA1UECxMMUExBTiBERUwgUklPMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgt7ssjT5T09wTWK2NbBaYizbSH1UF6EsQ4/YsGxeu/Nc4uEHV0gJ1uRdaAWywN6C3qW3F2CCUEUQqN2v58L6pmdJPxdY8BeL6un+L/AZeCgiZokTPKFllOH0CuoUftinvLgSocsl+bAZnMvaKsy26FTzp7fT7L9MSjFxPBg9bgwOmGdi12c1U+WF5Z+LYElcybFMAbW+jf4ytUaRmZq28MVahZ72ryq3P5iUP9Yu5L98TAEFjU3CPMmAhZbTylePGT0yYnHt8nb+WCoXYOhxxqGYoam94OGwjiC8OjGGUQkz89N7A/x5x20mAyAbYNzeO07qeVeYZDzHvLga/oCMdQIDAQABox0wGzAMBgNVHRMBAf8EAjAAMAsGA1UdDwQEAwIGwDANBgkqhkiG9w0BAQsFAAOCAgEAGrvfsVkqY8H39CAd0/OGkwMaPxxFup2Bl6gkMj8yhJRwfFJTvKPvZ+KClHpqiFA5b55zPMmMqX5tyi3qgbpSm8ZFDD0g2HHYsvbTr3kGDgqwJL/0852U3V2F97a+mP7iWeemxWlgYqDiZk3OjQaS1vd9Z2ypcigGuIOJB0wFzJ5Rz8hsjX4Qlqx4rpZTJP4PuRxirhtXehRTtuRGkZLxR1nAXWWHEwKkMx2I5SAwwrqVrTw7CwN7pUB/4oefRxTbcDmmZpAOLXGmwierCILwP9xE6NHqz6LK9wNhVf6dFO/cEmR2JTjwjPYE5rg3gOrkWe8sJ4moMPskK+0OGdkxwxqE84JayU8OTxs8aTcu/Q0mveMbWHHKF6HFD8fLezf83bbJyt8YJ2HNt4gifeV6DvXlqS+ztshCM6OTlCzgr81LbDtwp3Bgb/N/2VtkuO6ayub7ZZm/IbgBJddmRdt+z3O5JHJVc2LmIL1EhDH8i8ETtPpuTltai0yavUU3KpAwTcoVzB0uah5j9hTMhxlGVHcntZw+AeLAtoQSokUXZ58K5xLYCJTEVWFYoopc3xWVI6lfN/Th0Ylb5AeTP7itN8eGVOIaoa/KYIf0CxVUy3DXwHIyNBGNio4RwCT2H/uk2+iVKcV/u1ZLYQ3DuDomVweGAY7ITxuGuCDZNM2m454=&quot; SubTotal=&quot;40.52&quot; Moneda=&quot;MXN&quot; Total=&quot;47.00&quot; TipoDeComprobante=&quot;I&quot; MetodoPago=&quot;PUE&quot; LugarExpedicion=&quot;91630&quot;&gt;\r\n  &lt;cfdi:Emisor Rfc=&quot;CPM030614M68&quot; Nombre=&quot;CONCESIONES Y PROMOCIONES MALIBRAN S.A. DE C.V.&quot; RegimenFiscal=&quot;601&quot; /&gt;\r\n  &lt;cfdi:Receptor Rfc=&quot;IUV0412306K3&quot; Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO, S.C&quot; UsoCFDI=&quot;G03&quot; /&gt;\r\n  &lt;cfdi:Conceptos&gt;\r\n    &lt;cfdi:Concepto ClaveProdServ=&quot;95111603&quot; Cantidad=&quot;1&quot; ClaveUnidad=&quot;C62&quot; Descripcion=&quot;CUOTA DE PEAJE  PLAN DEL R&Iacute;O, CARRIL 305 A LAS 16:03:04 HRS. DEL 24 MAR 19; BOLETO N&deg; FOLIO:13846435&quot; ValorUnitario=&quot;40.52&quot; Importe=&quot;40.52&quot;&gt;\r\n      &lt;cfdi:Impuestos&gt;\r\n        &lt;cfdi:Traslados&gt;\r\n          &lt;cfdi:Traslado Base=&quot;40.52&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;6.48&quot; /&gt;\r\n        &lt;/cfdi:Traslados&gt;\r\n      &lt;/cfdi:Impuestos&gt;\r\n    &lt;/cfdi:Concepto&gt;\r\n  &lt;/cfdi:Conceptos&gt;\r\n  &lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;6.48&quot;&gt;\r\n    &lt;cfdi:Traslados&gt;\r\n      &lt;cfdi:Traslado Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;6.48&quot; /&gt;\r\n    &lt;/cfdi:Traslados&gt;\r\n  &lt;/cfdi:Impuestos&gt;\r\n  &lt;cfdi:Complemento&gt;\r\n    &lt;tfd:TimbreFiscalDigital xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/timbrefiscaldigital/TimbreFiscalDigitalv11.xsd&quot; Version=&quot;1.1&quot; UUID=&quot;D97FAACC-0208-4B7B-8DC6-1ABA4816A7C4&quot; FechaTimbrado=&quot;2019-03-26T12:32:02&quot; RfcProvCertif=&quot;STA0903206B9&quot; SelloCFD=&quot;Su2n7kotyc4/iz+Cu2Az56Vugu0EpuLpvg1GnOz5NBz+ATmvIVuLVO6IfDDql1Q8Z50k+tjtskEP3LUdIF3x3GWkIwNqnJ/iWbpOXxWl0ZG+mzwMGnuNvTktxGynI5tat//8WBnETQcfE548nJGPXsmbriuI5rQZGhXoA1cre90AJ1bxf3cIh0f0oyP2wZIvlXsTZ3cRvUttfoLZUg2CB0Ldd1LnV08cxwOs7t7IPqo7f/NqFh5R50008yr8ir2TonZ3SXkNdFJq7j3CXTT53XiXoUCbV4bJSiU05He16q2TQ74/g7Roa6VP07PZWrHKGLkPQZ54drZYVTxKyaEq/Q==&quot; NoCertificadoSAT=&quot;00001000000405131108&quot; SelloSAT=&quot;dhtqcuwXBtm6d4DK4pGBy4Gv1kqGGZYg+QH/YdLh6QHVdJwh+VsaGV0lDTYXgtxQz+a2IFSBwgSaaQvoek0N1e0nDK5pCNjmSlCsXto7AbHlTwnQOcCBrf/yda4GX+2wTcopz6gnKXfQ4flcyhyeGoHwM5qiHMeCGV/8zdejxjmn7VcPP3haYLy3rm5ZxregErRUyPOfy2lme8T53b6lYzxPkUSCOOUSKhtpeJ0MKB2nQFORT7ydqxGsPbYOyagPP1zhCLsrOfOkHx6jEm64rciYIMF+UX5qK4v8bbFrPSAiabqoMXPCzxikDlBIf1Gm+IQH6foZpzxWAk52Pb9nuw==&quot; /&gt;\r\n  &lt;/cfdi:Complemento&gt;\r\n&lt;/cfdi:Comprobante&gt;', 1, 0),
(44, 52, 'AAN051220835', 'IUV0412306K3', 30, '75BBCCE8-E98F-4DD6-B2BC-5E5D70FF8EC7', '﻿&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&lt;cfdi:Comprobante xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns:catCFDI=&quot;http://www.sat.gob.mx/sitio_internet/cfd/catalogos&quot; xmlns:tdCFDI=&quot;http://www.sat.gob.mx/sitio_internet/cfd/tipoDatos/tdCFDI&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot; Version=&quot;3.3&quot; Serie=&quot;FW&quot; Folio=&quot;3066869&quot; Fecha=&quot;2019-03-26T11:50:04&quot; Sello=&quot;cXZxjZ8n7g7VTqU0bX6I4sO/f1N5tAhtY77Xiqw5w8x1RS/COhYWoEuGV7ycy/BVDv0wsPoIoHTSKiypPidXU3rQTTf2L3fQmu1/wZYFUhzDACa00crfZcRhrYKsiD7tIlzCC3sI/7HHeA4caTE9VvRU7kNWNstwvOClWWKfl4VncIY40Y5CkegmFGlu+8/LiFNmI+KjnrPX8fz8HHGpSPucwFifd+3HOQ57YnEPvHVTfFVhPc4htyKQGQzuW3bfVeLCgDIdEYbANSZKEQIal6SFeOHAtbFmUaQUWttnqdykq8Ecw85o+CIMOnlJBjlIEXzJRgpDIL34xCd/8jBTMw==&quot; FormaPago=&quot;01&quot; NoCertificado=&quot;00001000000404049654&quot; Certificado=&quot;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&quot; CondicionesDePago=&quot;Contado&quot; SubTotal=&quot;25.86&quot; Descuento=&quot;0.00&quot; Moneda=&quot;MXN&quot; TipoCambio=&quot;1&quot; Total=&quot;30.00&quot; TipoDeComprobante=&quot;I&quot; MetodoPago=&quot;PUE&quot; LugarExpedicion=&quot;11000&quot;&gt;  &lt;cfdi:Emisor Nombre=&quot;AUTOPISTA ARCO NORTE, SA DE CV&quot; Rfc=&quot;AAN051220835&quot; RegimenFiscal=&quot;601&quot; /&gt;  &lt;cfdi:Receptor UsoCFDI=&quot;G03&quot; Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO SC&quot; Rfc=&quot;IUV0412306K3&quot; /&gt;  &lt;cfdi:Conceptos&gt;    &lt;cfdi:Concepto ClaveUnidad=&quot;E48&quot; Unidad=&quot;SERVICIO&quot; NoIdentificacion=&quot;AFO01&quot; Cantidad=&quot;1.00&quot; Importe=&quot;12.93&quot; ValorUnitario=&quot;12.93&quot; Descripcion=&quot;PEAJE EFECTIVO&quot; ClaveProdServ=&quot;95111603&quot; Descuento=&quot;0.00&quot;&gt;      &lt;cfdi:Impuestos&gt;        &lt;cfdi:Traslados&gt;          &lt;cfdi:Traslado TasaOCuota=&quot;0.160000&quot; Base=&quot;12.93&quot; Importe=&quot;2.07&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; /&gt;        &lt;/cfdi:Traslados&gt;      &lt;/cfdi:Impuestos&gt;    &lt;/cfdi:Concepto&gt;    &lt;cfdi:Concepto ClaveUnidad=&quot;E48&quot; Unidad=&quot;SERVICIO&quot; NoIdentificacion=&quot;AFO01&quot; Cantidad=&quot;1.00&quot; Importe=&quot;12.93&quot; ValorUnitario=&quot;12.93&quot; Descripcion=&quot;PEAJE EFECTIVO&quot; ClaveProdServ=&quot;95111603&quot; Descuento=&quot;0.00&quot;&gt;      &lt;cfdi:Impuestos&gt;        &lt;cfdi:Traslados&gt;          &lt;cfdi:Traslado TasaOCuota=&quot;0.160000&quot; Base=&quot;12.93&quot; Importe=&quot;2.07&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; /&gt;        &lt;/cfdi:Traslados&gt;      &lt;/cfdi:Impuestos&gt;    &lt;/cfdi:Concepto&gt;  &lt;/cfdi:Conceptos&gt;  &lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;4.14&quot;&gt;    &lt;cfdi:Traslados&gt;      &lt;cfdi:Traslado Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;4.14&quot; /&gt;    &lt;/cfdi:Traslados&gt;  &lt;/cfdi:Impuestos&gt;&lt;cfdi:Complemento&gt;&lt;tfd:TimbreFiscalDigital xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd&quot; Version=&quot;1.1&quot; UUID=&quot;75BBCCE8-E98F-4DD6-B2BC-5E5D70FF8EC7&quot; FechaTimbrado=&quot;2019-03-26T11:50:15&quot; SelloCFD=&quot;cXZxjZ8n7g7VTqU0bX6I4sO/f1N5tAhtY77Xiqw5w8x1RS/COhYWoEuGV7ycy/BVDv0wsPoIoHTSKiypPidXU3rQTTf2L3fQmu1/wZYFUhzDACa00crfZcRhrYKsiD7tIlzCC3sI/7HHeA4caTE9VvRU7kNWNstwvOClWWKfl4VncIY40Y5CkegmFGlu+8/LiFNmI+KjnrPX8fz8HHGpSPucwFifd+3HOQ57YnEPvHVTfFVhPc4htyKQGQzuW3bfVeLCgDIdEYbANSZKEQIal6SFeOHAtbFmUaQUWttnqdykq8Ecw85o+CIMOnlJBjlIEXzJRgpDIL34xCd/8jBTMw==&quot; NoCertificadoSAT=&quot;00001000000404477432&quot; SelloSAT=&quot;M8lSgkT9jam6nWMzMmLr1NZ8vnyjzjBrvk4cEhljMw9M7oUHrN4f0r9T7tfNTJLIqLLTUbDKd8lspQh6QKP/5kg9nezZbCy1oGZjoFIxVRk6Z8xfhNWOm1ERCLopARFj/nHlAMbuwsvGZFskbozCVg9RgDqzR77KPoRhaaqt6deyxryuiRU7LkCwZQ6aUKJ9XPk1kz5s6XWL5M5ErLddWJbFg1hkkF8nK7LbRtHtVlSzepv9P/uSc7nFEa/U8fxWl8NiM2hLPgz3fHrKqcqfsr2m71Y77IiY/tdsFj4niJ7l+HH2jEo449gLZ9qJ7ljr6DLH0DS7QC3jW4Qb6eNB2A==&quot; RfcProvCertif=&quot;EME000602QR9&quot; /&gt;&lt;/cfdi:Complemento&gt;&lt;/cfdi:Comprobante&gt;\r\n', 1, 0),
(44, 52, 'NIMB861103BW0', 'IUV0412306K3', 90.99, 'fd2d9ece-5fb2-4eb6-b146-5bfe1d1c854f', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;\r\n&lt;cfdi:Comprobante Certificado=&quot;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&quot; CondicionesDePago=&quot;Pago en una sola exhibici&amp;#243;n&quot; Fecha=&quot;2019-03-25T13:38:36&quot; Folio=&quot;5731&quot; FormaPago=&quot;01&quot; LugarExpedicion=&quot;72530&quot; MetodoPago=&quot;PUE&quot; Moneda=&quot;MXN&quot; NoCertificado=&quot;00001000000403492805&quot; Sello=&quot;kUzEB4Q5c/qGQ0p7COIsAD32PKGAqSzaP0NEsgNo2QPraqmcU/O09+Bp+Zi6EIVNeSWZUa6ZeAQiZ4qCGapWh7EEN3n3aQjrLypYTPuLrk0yh4HBZt48EUW0rC4OA6/rofMPbz0enM9Uy+BBtTw1hTSJ2U2SqLT+vb5y0jvnxabGkQbLdWjGuPQkh0vRQp6VvyzhM8v5soxPMhY3y5ZKtPdSeKu39hgvoVW+Zlqe+uZDfYVZdpMcGM8Nkdv+w7M81QlBIcy/3Z+bRe/93gKnmfgBBpjC1MIagXfyKa8LKZLyq5pDdFeRysgMND+NClapgJr1sV5XjdeVX2Si8Cl4Ew==&quot; Serie=&quot;F&quot; SubTotal=&quot;78.44&quot; TipoCambio=&quot;1&quot; TipoDeComprobante=&quot;I&quot; Total=&quot;90.99&quot; Version=&quot;3.3&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot;&gt;&lt;cfdi:Emisor Nombre=&quot;BLANCA ELIZABETH NIETO MIRANDA&quot; RegimenFiscal=&quot;612&quot; Rfc=&quot;NIMB861103BW0&quot;/&gt;&lt;cfdi:Receptor Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO, S.C.&quot; Rfc=&quot;IUV0412306K3&quot; UsoCFDI=&quot;G03&quot;/&gt;&lt;cfdi:Conceptos&gt;&lt;cfdi:Concepto Cantidad=&quot;1&quot; ClaveProdServ=&quot;90101500&quot; ClaveUnidad=&quot;E48&quot; Descripcion=&quot;FECHA DE CONSUMO 23/03/2019&quot; Importe=&quot;78.44&quot; Unidad=&quot;N/A&quot; ValorUnitario=&quot;78.44&quot;&gt;&lt;cfdi:Impuestos&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Base=&quot;78.440000&quot; Importe=&quot;12.55&quot; Impuesto=&quot;002&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;/cfdi:Concepto&gt;&lt;/cfdi:Conceptos&gt;&lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;12.55&quot;&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Importe=&quot;12.55&quot; Impuesto=&quot;002&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;cfdi:Complemento&gt;&lt;tfd:TimbreFiscalDigital FechaTimbrado=&quot;2019-03-25T13:41:20&quot; UUID=&quot;fd2d9ece-5fb2-4eb6-b146-5bfe1d1c854f&quot; NoCertificadoSAT=&quot;00001000000405555426&quot; SelloCFD=&quot;kUzEB4Q5c/qGQ0p7COIsAD32PKGAqSzaP0NEsgNo2QPraqmcU/O09+Bp+Zi6EIVNeSWZUa6ZeAQiZ4qCGapWh7EEN3n3aQjrLypYTPuLrk0yh4HBZt48EUW0rC4OA6/rofMPbz0enM9Uy+BBtTw1hTSJ2U2SqLT+vb5y0jvnxabGkQbLdWjGuPQkh0vRQp6VvyzhM8v5soxPMhY3y5ZKtPdSeKu39hgvoVW+Zlqe+uZDfYVZdpMcGM8Nkdv+w7M81QlBIcy/3Z+bRe/93gKnmfgBBpjC1MIagXfyKa8LKZLyq5pDdFeRysgMND+NClapgJr1sV5XjdeVX2Si8Cl4Ew==&quot; SelloSAT=&quot;bbLq++G8/Jw4HYDFtmxUimJ5oGa624Gcw2+uWbd3dVSCuPepigv49kB2ahuxCG0UraFBEV/IzrzpsGkyzTLUXwiZ3helgQfiTWinTRLOfEKGHAtEQShVimozxVciRoniTE7fpWyfEndwH5Q+obGg5E1yAOec32fscUIFcgESBWaFs8tV3n4okGl3cSpKzyxxX4KqaIRkJY+CR92Zagh5pVXVno391b6Tm/0XTzCTz5oxioZV1ibppQDAL9N8YJI45DdPan6dLS/jT59wiBF4ZfdRcwKJY6m6QBdWSZdB+BGQFgEMcAQDIWta/h7ArhTHCxqac/fZS3H4fZf0uqiDDQ==&quot; Version=&quot;1.1&quot; RfcProvCertif=&quot;CCC1007293K0&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/timbrefiscaldigital/TimbreFiscalDigitalv11.xsd&quot; xmlns:fn=&quot;http://www.w3.org/2005/xpath-functions&quot; xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot;/&gt;&lt;/cfdi:Complemento&gt;&lt;/cfdi:Comprobante&gt;', 1, 0),
(44, 52, 'MADM881121AKA', 'IUV0412306K3', 110, '3E6A92C7-23BF-4D71-86D0-96F215154FEB', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt; &lt;cfdi:Comprobante xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; Certificado=&quot;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&quot; Fecha=&quot;2019-03-26T17:14:14&quot; Folio=&quot;3742&quot; FormaPago=&quot;01&quot; LugarExpedicion=&quot;91020&quot; MetodoPago=&quot;PUE&quot; Moneda=&quot;MXN&quot; NoCertificado=&quot;00001000000409108537&quot; Sello=&quot;HnlAbBp8nPNaEAX7MPvb3tmKo6Av97ag/lfC6+G9WCqSESNGpCdhi9inhe5Fk9aVsA9n9sz2BU+GSuhjKbjMbo5NwdIwMVggMuFtF3ykLNZqmaAYCqS5+BukJZx16R0VYpUTKpb85GEPLSHaZ9YwV3mj3X4rjkpKrTXOVXfgnwoDwwof8xbzDQAd0CH17RWvZVsxUtVOMJvE08+oeGdy0kQtDCPtCbxORmX4k5950mwZvyPM1M1yq513CjdOEcUOFKJ73ZqmKE3oX4zkLqGfVGNpD0DbiloVfF4ra+8aaj/PoFTE5c0oipT8yKWn1/PwlzhrxPtc3AdxtN7evkCqNA==&quot; Serie=&quot;A&quot; SubTotal=&quot;94.83&quot; TipoCambio=&quot;1&quot; TipoDeComprobante=&quot;I&quot; Total=&quot;110.00&quot; Version=&quot;3.3&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot;&gt; &lt;cfdi:Emisor Nombre=&quot;MALVA SARA MALLEIRO DIAZ&quot; RegimenFiscal=&quot;621&quot; Rfc=&quot;MADM881121AKA&quot;/&gt; &lt;cfdi:Receptor Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO S C&quot; Rfc=&quot;IUV0412306K3&quot; UsoCFDI=&quot;G03&quot;/&gt; &lt;cfdi:Conceptos&gt;&lt;cfdi:Concepto Cantidad=&quot;1.00&quot; ClaveProdServ=&quot;90101501&quot; ClaveUnidad=&quot;E48&quot; Descripcion=&quot;RESTAURANTE&quot; Importe=&quot;94.83&quot; NoIdentificacion=&quot;002&quot; Unidad=&quot;REST&quot; ValorUnitario=&quot;94.83&quot;&gt; &lt;cfdi:Impuestos&gt; &lt;cfdi:Traslados&gt; &lt;cfdi:Traslado Base=&quot;94.81&quot; Importe=&quot;15.17&quot; Impuesto=&quot;002&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot;/&gt; &lt;/cfdi:Traslados&gt; &lt;/cfdi:Impuestos&gt; &lt;/cfdi:Concepto&gt;&lt;/cfdi:Conceptos&gt;&lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;15.17&quot;&gt; &lt;cfdi:Traslados&gt; &lt;cfdi:Traslado Importe=&quot;15.17&quot; Impuesto=&quot;002&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot;/&gt; &lt;/cfdi:Traslados&gt; &lt;/cfdi:Impuestos&gt; &lt;cfdi:Complemento&gt;&lt;tfd:TimbreFiscalDigital xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; FechaTimbrado=&quot;2019-03-26T17:14:19&quot; NoCertificadoSAT=&quot;00001000000412961981&quot; RfcProvCertif=&quot;FCG840618N51&quot; SelloCFD=&quot;HnlAbBp8nPNaEAX7MPvb3tmKo6Av97ag/lfC6+G9WCqSESNGpCdhi9inhe5Fk9aVsA9n9sz2BU+GSuhjKbjMbo5NwdIwMVggMuFtF3ykLNZqmaAYCqS5+BukJZx16R0VYpUTKpb85GEPLSHaZ9YwV3mj3X4rjkpKrTXOVXfgnwoDwwof8xbzDQAd0CH17RWvZVsxUtVOMJvE08+oeGdy0kQtDCPtCbxORmX4k5950mwZvyPM1M1yq513CjdOEcUOFKJ73ZqmKE3oX4zkLqGfVGNpD0DbiloVfF4ra+8aaj/PoFTE5c0oipT8yKWn1/PwlzhrxPtc3AdxtN7evkCqNA==&quot; SelloSAT=&quot;MQPTGlt4CT9LZdQO3FBftbWa2K/c7QYELZ50Dgnw4ibhIQJM3BTF9p0C2M8YnhOTfXj8TkJq5oQWNXTBaZGlWqGCIgwfBUzWu+T9umUGF4nE6/FEsy8NiKO9lQgcJGKkGnMcBd/h1W/d6ElVoWJEPRRUodhmpuwhmVkbpmQuQWhCvUnzSfoEEsAyNT/06nuaoOm7jFnS98YZgx4pM2KNVK558LK7ek0wqwXFo+TW8wRVAHeQeaVWaSYKZuCiFjzwGaUnXHqAdW9iQA4BGN74S4tcDuH2MFZ5CjT/1YKPpMhtdOdbTJhbrHGqmKnYMhk2bUl1SVotR/OyAR+LLLK+gw==&quot; UUID=&quot;3E6A92C7-23BF-4D71-86D0-96F215154FEB&quot; Version=&quot;1.1&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/timbrefiscaldigital/TimbreFiscalDigitalv11.xsd&quot;/&gt;&lt;/cfdi:Complemento&gt;&lt;/cfdi:Comprobante&gt;', 1, 0),
(44, 52, 'CAP080114GMA', 'IUV0412306K3', 149, 'bb7e1c6c-24d1-4b86-a8d9-2088de8a9f1d', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;\n&lt;cfdi:Comprobante Certificado=&quot;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&quot; Fecha=&quot;2019-03-25T13:39:38&quot; FormaPago=&quot;01&quot; LugarExpedicion=&quot;91000&quot; MetodoPago=&quot;PUE&quot; Moneda=&quot;MXN&quot; NoCertificado=&quot;00001000000404403040&quot; Sello=&quot;a2iwK1r0BOVZ4OAD1yHg9CGB7v35+61lzT7OHh+Vo402retkpgbKQEcEiQqY6fY6I0M9+LATLt8GNMZtCyYKibqDArvGifk32L770euo7MFA+INOyguxgMeRiT4MtQasCahJqoaR0dupShFR3mQ7H1pvseFj6vSbxRoVjB+q4DhxmSVVaxN/UiQJbjbugLJ7q7ZU2ZCapLknD0H1iZ4d3hZzRKKPewvv5Rd8qItv0wR7ei//JW9GSO/ymrBnCsd3TTYDqgs3ekiyspCcHhA/McAH2DoxG3ND1Jr9bLe+gT+kz7zNuWWlE02pryPOG8gG3rKVlXgV7HiqA7q3HiL0CA==&quot; Serie=&quot;A&quot; SubTotal=&quot;128.45&quot; TipoDeComprobante=&quot;I&quot; Total=&quot;149.00&quot; Version=&quot;3.3&quot; xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot; xmlns:fm=&quot;http://facturame.mx/ns/addenda/1&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot; Folio=&quot;169548&quot;&gt;\n&lt;cfdi:Emisor Nombre=&quot;CONCESIONARIA AUTOPISTA PEROTE-XALAPA&quot; RegimenFiscal=&quot;601&quot; Rfc=&quot;CAP080114GMA&quot;/&gt;\n&lt;cfdi:Receptor Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO S.C.&quot; Rfc=&quot;IUV0412306K3&quot; UsoCFDI=&quot;G03&quot;/&gt;\n&lt;cfdi:Conceptos&gt;&lt;cfdi:Concepto Cantidad=&quot;1&quot; ClaveProdServ=&quot;95111603&quot; ClaveUnidad=&quot;C62&quot; Descripcion=&quot;AUTOV&quot; Importe=&quot;128.45&quot; NoIdentificacion=&quot;010107OMA201903230627457942&quot; ValorUnitario=&quot;128.45&quot;&gt;\n&lt;cfdi:Impuestos&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Base=&quot;128.45&quot; Importe=&quot;20.55&quot; Impuesto=&quot;002&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot;/&gt;\n&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;/cfdi:Concepto&gt;\n&lt;/cfdi:Conceptos&gt;\n&lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;20.55&quot;&gt;\n&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Importe=&quot;20.55&quot; Impuesto=&quot;002&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot;/&gt;\n&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;\n&lt;cfdi:Complemento&gt;\n        &lt;tfd:TimbreFiscalDigital xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd&quot; Version=&quot;1.1&quot; UUID=&quot;bb7e1c6c-24d1-4b86-a8d9-2088de8a9f1d&quot; RfcProvCertif=&quot;DIA031002LZ2&quot; FechaTimbrado=&quot;2019-03-25T13:39:38&quot; SelloCFD=&quot;a2iwK1r0BOVZ4OAD1yHg9CGB7v35+61lzT7OHh+Vo402retkpgbKQEcEiQqY6fY6I0M9+LATLt8GNMZtCyYKibqDArvGifk32L770euo7MFA+INOyguxgMeRiT4MtQasCahJqoaR0dupShFR3mQ7H1pvseFj6vSbxRoVjB+q4DhxmSVVaxN/UiQJbjbugLJ7q7ZU2ZCapLknD0H1iZ4d3hZzRKKPewvv5Rd8qItv0wR7ei//JW9GSO/ymrBnCsd3TTYDqgs3ekiyspCcHhA/McAH2DoxG3ND1Jr9bLe+gT+kz7zNuWWlE02pryPOG8gG3rKVlXgV7HiqA7q3HiL0CA==&quot; NoCertificadoSAT=&quot;00001000000412961770&quot; SelloSAT=&quot;iwwYeZXCsnamBhW585h9M2I1uXwIxh34juRic8g3pRK7/h4kPZ2pHlkiVuegX93nwaHC8G5VvlGqnvtA+th7VN2mvqM/whf89zcwBZ11k9TucTtkFH+0S39ckLfi6Uu0cDbBNyjW1Smf2vjr/ET5A+vgEGy9Xks6JByg2p6uZ9Hva2dVsPxe2O/wdcX2UrQfQ4dWieLDEXUyiE6Lgj85GdDoCRfxCLGioCmAKN9j7YwE7yxK69DjZgStMKhqyOoToc7jQeMArAgoIbLs1lBO6+dhX6GMz5HOKRV9fUx6N8PeAXj1pey76wiLrbgBM9kHh4aFys7m7GhGccG41VBbvw==&quot;/&gt;\n    &lt;/cfdi:Complemento&gt;&lt;cfdi:Addenda&gt;&lt;dvz:diverza version=&quot;1.1&quot; xmlns=&quot;http://www.diverza.com/ns/addenda/diverza/1&quot; xmlns:dvz=&quot;http://www.diverza.com/ns/addenda/diverza/1&quot; xmlns:tdCFDI=&quot;http://www.sat.gob.mx/sitio_internet/cfd/tipoDatos/tdCFDI&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:schemaLocation=&quot;http://www.diverza.com/ns/addenda/diverza/1 http://www.diverza.com/schema/xsd/Addenda_Diverza_v1.1.xsd&quot;&gt;\n&lt;dvz:generales observaciones=&quot;&quot; tipoDocumento=&quot;Factura&quot; totalConLetra=&quot;ciento cuarenta y nueve 00/100 M.N.&quot;/&gt;\n&lt;dvz:complemento&gt;&lt;dvz:datosExtra atributo=&quot;Via&quot; valor=&quot;07&quot;/&gt;\n&lt;dvz:datosExtra atributo=&quot;Sentido&quot; valor=&quot;O&quot;/&gt;\n&lt;dvz:datosExtra atributo=&quot;Clase&quot; valor=&quot;AUTOV&quot;/&gt;\n&lt;dvz:datosExtra atributo=&quot;Plaza&quot; valor=&quot;01&quot;/&gt;\n&lt;/dvz:complemento&gt;&lt;/dvz:diverza&gt;\n&lt;fm:AddendaFacturame version=&quot;1.0&quot; xmlns:fm=&quot;http://facturame.mx/ns/addenda/1&quot;&gt;&lt;Ticket number=&quot;010107201903230627457942&quot;/&gt;&lt;/fm:AddendaFacturame&gt;&lt;/cfdi:Addenda&gt;&lt;/cfdi:Comprobante&gt;', 1, 0),
(44, 52, 'FNI970829JR9', 'IUV0412306K3', 264, 'D12E60BF-ECA9-4962-B257-DC9B8C9EDF0F', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;\n&lt;cfdi:Comprobante xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; Version=&quot;3.3&quot; Fecha=&quot;2019-03-26T12:10:28&quot; Sello=&quot;JD9KN/wR7mnG6/cUg5TigGnDPea3pA3ArxCprB+rXQyUmamk+D1nG0PPvSv9oS6oRcUSrKonSDxL441g6j4iSwCy5dwQbK2tDpIgilvKCXrFpJJaSFMkV3HiourZqyR+Bsm7wk6fxQQbLiP+gnQdOOi/HcYJYtqMoYm5kdxaUEr1wvGJudYcjxvFXe7KZaLzouKKyHIdaR75L5opja6MNxQ9zZE0Tc7QCHK7rLv/LHuxlUygbIa5u6GfXrtheUgmoH8bJerX9x/25u0Xn9/4ioa4ffgaCxxSFP7QGbY8+DXkYqY24PyCxcFVVGGm9Wk8zNF2F4IBD82gDOkHDDoj3A==&quot; FormaPago=&quot;01&quot; NoCertificado=&quot;00001000000409441240&quot; Certificado=&quot;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&quot; SubTotal=&quot;227.58&quot; Moneda=&quot;MXN&quot; Total=&quot;264.00&quot; TipoDeComprobante=&quot;I&quot; MetodoPago=&quot;PUE&quot; LugarExpedicion=&quot;01219&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot;&gt;&lt;cfdi:Emisor Rfc=&quot;FNI970829JR9&quot; Nombre=&quot;FONDO NACIONAL DE INFRAESTRUCTURA&quot; RegimenFiscal=&quot;603&quot;/&gt;&lt;cfdi:Receptor Rfc=&quot;IUV0412306K3&quot; Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO S.C.&quot; UsoCFDI=&quot;G03&quot;/&gt;&lt;cfdi:Conceptos&gt;&lt;cfdi:Concepto ClaveProdServ=&quot;95111602&quot; Cantidad=&quot;1&quot; ClaveUnidad=&quot;C62&quot; Unidad=&quot;PEAJE&quot; Descripcion=&quot;SERVICIO DE PEAJE Y CRUCE CARRETERO SAN MARCOS 2019-03-23 10:14:48&quot; ValorUnitario=&quot;113.79&quot; Importe=&quot;113.79&quot;&gt;&lt;cfdi:Impuestos&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Base=&quot;113.79&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;18.21&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;/cfdi:Concepto&gt;&lt;cfdi:Concepto ClaveProdServ=&quot;95111602&quot; Cantidad=&quot;1&quot; ClaveUnidad=&quot;C62&quot; Unidad=&quot;PEAJE&quot; Descripcion=&quot;SERVICIO DE PEAJE Y CRUCE CARRETERO SAN MARCOS 2019-03-23 08:47:58&quot; ValorUnitario=&quot;113.79&quot; Importe=&quot;113.79&quot;&gt;&lt;cfdi:Impuestos&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Base=&quot;113.79&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;18.21&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;/cfdi:Concepto&gt;&lt;/cfdi:Conceptos&gt;&lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;36.42&quot;&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;36.42&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;cfdi:Complemento&gt;&lt;tfd:TimbreFiscalDigital xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd&quot; Version=&quot;1.1&quot; SelloCFD=&quot;JD9KN/wR7mnG6/cUg5TigGnDPea3pA3ArxCprB+rXQyUmamk+D1nG0PPvSv9oS6oRcUSrKonSDxL441g6j4iSwCy5dwQbK2tDpIgilvKCXrFpJJaSFMkV3HiourZqyR+Bsm7wk6fxQQbLiP+gnQdOOi/HcYJYtqMoYm5kdxaUEr1wvGJudYcjxvFXe7KZaLzouKKyHIdaR75L5opja6MNxQ9zZE0Tc7QCHK7rLv/LHuxlUygbIa5u6GfXrtheUgmoH8bJerX9x/25u0Xn9/4ioa4ffgaCxxSFP7QGbY8+DXkYqY24PyCxcFVVGGm9Wk8zNF2F4IBD82gDOkHDDoj3A==&quot; NoCertificadoSAT=&quot;00001000000403190844&quot; RfcProvCertif=&quot;CVD110412TF6&quot; UUID=&quot;D12E60BF-ECA9-4962-B257-DC9B8C9EDF0F&quot; FechaTimbrado=&quot;2019-03-26T12:16:03&quot; SelloSAT=&quot;t/bsz1U5MofbyX0omal8U4WHN0eZ4tjfF+faU/7mftGIaZz9ilgWeB2j0z0ABrkyQHyo+rvJs/yUya+iSmrB3mgGt4X6YTlv1hkMrlrGjXc1nbznDnpC9uo0iMfmEYHabTnL8Lfm2/dlTmmLi7H02zLM2K1GEU6/JkfYkICF76Jz3j9QIZmlX85xObJwLqoEPtH2K7+jXI2rkSp6xQoD7KOhWIjaw6O5oBWj3fiDd99WSG4LqZ1xXr2x6OLeLyYHFTeBShk9/JewK+uTnIu3L3EsSpx1mKC7bsnmSjC2mWpPkoHzKElTFAdCKeIIpatbXJkMi3ZziHvm7T6l2pHFOg==&quot;/&gt;&lt;/cfdi:Complemento&gt;&lt;/cfdi:Comprobante&gt;', 1, 0),
(44, 52, 'GAN030926UU7', 'IUV0412306K3', 358, 'CBC032CE-0CD0-4376-8958-9769E74EA25B', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;\r\r\n&lt;cfdi:Comprobante Moneda=&quot;MXN&quot; TipoDeComprobante=&quot;I&quot; Folio=&quot;1036238&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot; FormaPago=&quot;01&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; NoCertificado=&quot;00001000000403719924&quot; SubTotal=&quot;308.62&quot; TipoCambio=&quot;1&quot; MetodoPago=&quot;PUE&quot; LugarExpedicion=&quot;06600&quot; Fecha=&quot;2019-03-25T12:39:56&quot; Version=&quot;3.3&quot; Total=&quot;358.00&quot; Certificado=&quot;MIIGMzCCBBugAwIBAgIUMDAwMDEwMDAwMDA0MDM3MTk5MjQwDQYJKoZIhvcNAQELBQAwggGyMTgwNgYDVQQDDC9BLkMuIGRlbCBTZXJ2aWNpbyBkZSBBZG1pbmlzdHJhY2nDs24gVHJpYnV0YXJpYTEvMC0GA1UECgwmU2VydmljaW8gZGUgQWRtaW5pc3RyYWNpw7NuIFRyaWJ1dGFyaWExODA2BgNVBAsML0FkbWluaXN0cmFjacOzbiBkZSBTZWd1cmlkYWQgZGUgbGEgSW5mb3JtYWNpw7NuMR8wHQYJKoZIhvcNAQkBFhBhY29kc0BzYXQuZ29iLm14MSYwJAYDVQQJDB1Bdi4gSGlkYWxnbyA3NywgQ29sLiBHdWVycmVybzEOMAwGA1UEEQwFMDYzMDAxCzAJBgNVBAYTAk1YMRkwFwYDVQQIDBBEaXN0cml0byBGZWRlcmFsMRQwEgYDVQQHDAtDdWF1aHTDqW1vYzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMV0wWwYJKoZIhvcNAQkCDE5SZXNwb25zYWJsZTogQWRtaW5pc3RyYWNpw7NuIENlbnRyYWwgZGUgU2VydmljaW9zIFRyaWJ1dGFyaW9zIGFsIENvbnRyaWJ1eWVudGUwHhcNMTYwOTIwMjMxNjQ1WhcNMjAwOTIwMjMxNjQ1WjCB0zEnMCUGA1UEAxMeR1JVUE8gQVVUT1BJU1RBUyBOQUNJT05BTEVTIFNBMScwJQYDVQQpEx5HUlVQTyBBVVRPUElTVEFTIE5BQ0lPTkFMRVMgU0ExJzAlBgNVBAoTHkdSVVBPIEFVVE9QSVNUQVMgTkFDSU9OQUxFUyBTQTElMCMGA1UELRMcR0FOMDMwOTI2VVU3IC8gTUVDQTQ4MDcxNFRSNjEeMBwGA1UEBRMVIC8gTUVDQTQ4MDcxNEhORU5MTjAyMQ8wDQYDVQQLEwZNRVhJQ08wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCgEn+KlgFJlRwBGUXwk12c2J6LimfQz92lWqhldh/OKY0SWkb/AdjNYkLDp6uVJNnFhakIbfr45s0FZrn/YHMpMzMgIgNVsoMltoNjSsfUiW1AkzbJqPuSduJtbV5RrOgm/wl4kE9CoMumwH5a5cwAjMiqo+3YQDSNDEKMO/A4R3+Yke8EmQuC4BI6nw3JfzAYd8Z2zf+daeJQiN8OV/oFh6fbOHcg6DLpVmYLPU2bg57vPdQnnC2Kb3izvSupgRuS14Qj8EjbAmk4iNfqaB/HOMWy+2Sg8Ymg8x6kA06W3Uy8Fg1ndySbUZzb9v7vgNlZCnNGRj27qGEfqk4e4MzrAgMBAAGjHTAbMAwGA1UdEwEB/wQCMAAwCwYDVR0PBAQDAgbAMA0GCSqGSIb3DQEBCwUAA4ICAQAw0bY551ufyhhc11JHiNAIyOEIM+3AKEQDZpc7qWs3FJAfdJwoW8oe5TN9G2bEMnGSmM01CBPQAS/YdI2TibuMkpGiCBnMH/rZlRq0z6er+qv77WNpSwasXWYzTLvU2erGifJBpUkfVE4P1xxY2k8B3LjX91FWb0DqW1wgEKHbCRoZKYqgcReWJv0oAy4DtLvCTSes9UlMO757El/JZrMUF0eSjWkgaHb9OiI1wKq3KYy80q39zKgQieP+n/B8UvPuKChspqdJHBMYSav4nWpY/sR188fg0qMfjmdLFUwxEqAKMBee8isD984ttM+tnGgEMB8OwLRfj61jbRPI3JknrQ9i0OywBgIw3NAhQ+Bnk88w87q5KUkWsesmCN4nCtNe8QIKYTjysGWnbuf8SzY2AzK3exRcOsWF4LJtf6d/OX5QJ0xv0fLeT+zr4GJGxJ+fO55agRP/SEJ/ZBDGmQG4o1g6biMRkxymtVasvB90zJoBFjRtlVPWU43X6ntq6F/A4dU0VDjC46REPgBuDjTSP/8sYGSww9CdnFvfGPH38JLcJliRDG46aXvgE6fekMJI6SH9ZSOZf/uXdNmiAikiqyksJBp/iEllyjDCjX00t819Jw3+Os1SOpDAyZAS+Qo0ifnjX55ecI+cKCflGJeV80Q0f3vI/zorCp2e/rORBg==&quot; Sello=&quot;JcZsPoRyl6AoRQ3XeK5kbsEeRNIONla7XvDO+hkk2meHy/LVxdw0whmB2kiMkiD7umdNjZUJI1DYt8NBu0+KDEBwV6FkO7MZ08E13XiFUQpB09bxMc+DZATx6IPzG8M4aHDgN7UfWZHMw9krJ8jyYy8t0NF8yfyNHYUwScpSWW8LVY4iFPfhwAUBTQJ6X6H4HkRBaFucLaDMLmELbcacoAm7VH9Kt55wa5nVYQfE6EQd3kQ/IUvhlcU78t+KV2TXTOZV03gv6YES8qbfJboibB0mfKd/9zbWlW3VRzP6QOwJ5Nec1T7O49LB9kFBep0uicyOii/imWRAy0C7G1OJww==&quot; Serie=&quot;A&quot; xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot;&gt;\r\r\n&lt;cfdi:Emisor Nombre=&quot;Grupo Autopistas Nacionales, S.A.&quot; RegimenFiscal=&quot;601&quot; Rfc=&quot;GAN030926UU7&quot;/&gt;\r\r\n&lt;cfdi:Receptor Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO S.C.&quot; UsoCFDI=&quot;G03&quot; Rfc=&quot;IUV0412306K3&quot;/&gt;\r\r\n&lt;cfdi:Conceptos&gt;\r\r\n&lt;cfdi:Concepto ClaveProdServ=&quot;95111603&quot; ValorUnitario=&quot;40.52&quot; ClaveUnidad=&quot;C62&quot; Importe=&quot;81.04&quot; Cantidad=&quot;2&quot; Descripcion=&quot;T2-CUAPIAXTLA AUTOMOVIL A&quot; Unidad=&quot;UNIDAD&quot;&gt;\r\r\n&lt;cfdi:Impuestos&gt;\r\r\n&lt;cfdi:Traslados&gt;\r\r\n&lt;cfdi:Traslado Importe=&quot;12.97&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot; Base=&quot;81.04&quot; Impuesto=&quot;002&quot;/&gt;\r\r\n&lt;/cfdi:Traslados&gt;\r\r\n&lt;/cfdi:Impuestos&gt;\r\r\n&lt;/cfdi:Concepto&gt;\r\r\n&lt;cfdi:Concepto ClaveProdServ=&quot;95111603&quot; ValorUnitario=&quot;113.79&quot; ClaveUnidad=&quot;C62&quot; Importe=&quot;227.58&quot; Cantidad=&quot;2&quot; Descripcion=&quot;T3-CANTONA AUTOMOVIL A&quot; Unidad=&quot;UNIDAD&quot;&gt;\r\r\n&lt;cfdi:Impuestos&gt;\r\r\n&lt;cfdi:Traslados&gt;\r\r\n&lt;cfdi:Traslado Importe=&quot;36.41&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot; Base=&quot;227.58&quot; Impuesto=&quot;002&quot;/&gt;\r\r\n&lt;/cfdi:Traslados&gt;\r\r\n&lt;/cfdi:Impuestos&gt;\r\r\n&lt;/cfdi:Concepto&gt;\r\r\n&lt;/cfdi:Conceptos&gt;\r\r\n&lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;49.38&quot;&gt;\r\r\n&lt;cfdi:Traslados&gt;\r\r\n&lt;cfdi:Traslado Importe=&quot;49.38&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot; Impuesto=&quot;002&quot;/&gt;\r\r\n&lt;/cfdi:Traslados&gt;\r\r\n&lt;/cfdi:Impuestos&gt;\r\r\n&lt;cfdi:Complemento&gt;\r\r\n&lt;tfd:TimbreFiscalDigital RfcProvCertif=&quot;SEF100616AD2&quot; SelloCFD=&quot;JcZsPoRyl6AoRQ3XeK5kbsEeRNIONla7XvDO+hkk2meHy/LVxdw0whmB2kiMkiD7umdNjZUJI1DYt8NBu0+KDEBwV6FkO7MZ08E13XiFUQpB09bxMc+DZATx6IPzG8M4aHDgN7UfWZHMw9krJ8jyYy8t0NF8yfyNHYUwScpSWW8LVY4iFPfhwAUBTQJ6X6H4HkRBaFucLaDMLmELbcacoAm7VH9Kt55wa5nVYQfE6EQd3kQ/IUvhlcU78t+KV2TXTOZV03gv6YES8qbfJboibB0mfKd/9zbWlW3VRzP6QOwJ5Nec1T7O49LB9kFBep0uicyOii/imWRAy0C7G1OJww==&quot; Version=&quot;1.1&quot; NoCertificadoSAT=&quot;00001000000405148267&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd&quot; FechaTimbrado=&quot;2019-03-25T13:31:22&quot; UUID=&quot;CBC032CE-0CD0-4376-8958-9769E74EA25B&quot; SelloSAT=&quot;egOGTarPDfpqcrQGtOceQBAAUL0ESCzewRDmvy2TvdC1qHX6YPVgBfTBTe9xQRIALiLEUAQm8MtEcsC+OufwGwhq8JLTtSdOWrxFFMOujePaJKk0Jt+2RGY+uDkvj2xib8lPG85A03oPf1g1wyO0VjYmZRoKkuxAbttkmwS4m2KwzF7G7sJIcFAH/hAGvowOE8QoyUquW8r/sbQdhLmWiV6+eTOZc0XDcac/e1sncAbKSF3lhiD2rvKgZWq8j5Hv+TE9DfA37xHfj7rEhUhzLa87jil6A5jHJRC8WSlYwvdYzfalIBRN+ZZ1LDSw4soVJuY2fzZtfxPBZH03ZIPz2Q==&quot; xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot;/&gt;\r\r\n&lt;/cfdi:Complemento&gt;\r\r\n&lt;/cfdi:Comprobante&gt;\r\r\n', 1, 1);

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
  `comprobado` double NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `partidas`
--

INSERT INTO `partidas` (`idpartidas`, `descripcion`, `total`, `solicitudes_folio`, `documentado`, `comprobado`, `estatus`) VALUES
(7, 'Comida', '2000.70', 26, 0, 0, 0),
(9, 'Gasolina', '10000.80', 25, 0, 0, 0),
(12, 'Comida', '500.00', 29, 0, 0, 0),
(14, 'casetas', '70.50', 26, 0, 0, 0),
(15, 'ropa', '10000', 32, 0, 0, 0),
(16, 'Otro', '3000', 35, 0, 0, 0),
(18, 'Gasolina', '1500', 35, 0, 0, 0),
(19, 'Gasolina', '500', 36, 0, 0, 0),
(20, 'Gasolina', '500', 38, 341, 0, 0),
(22, 'Gasolina', '1000', 40, 0, 0, 3),
(23, 'Casetas', '7800', 40, 90, 0, 2),
(24, 'Gasolina', '250', 40, 200, 0, 0),
(25, 'Gasolina', '800', 41, 0, 0, 0),
(26, 'Hotel', '1200', 41, 0, 0, 0),
(27, 'Gasolina', '600', 42, 0, 0, 3),
(48, 'Casetas', '1', 42, 401.99, 401.99, 1),
(49, 'Gasolina', '400', 43, 397.99, 90.99, 0),
(50, 'Casetas', '500', 43, 776, 486, 0),
(51, 'Comidas', '200', 43, 0, 200, 2),
(52, 'Gasolina', '600', 44, 1741.95, 0, 0);

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
(38, '2020-01-15', 'Mario Alberto Ventura Martinez', 'redes', 'Actividad ordinaria', 'Veracruz', 'Xalapa', 'Veracruz', 'veracruz', NULL, NULL, 'viaje de negocios', 'verificar', '1000', NULL, NULL, 0),
(39, '2020-01-19', 'Mario Alberto Ventura Martinez', 'redes', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'xalapa', NULL, NULL, 'solicitud de prueba', 'aceptada', '0', NULL, NULL, 0),
(40, '2020-01-19', 'Mario Alberto Ventura Martinez', 'Contabilidad', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Solicitud de prueba', 'verificar', '1970', NULL, NULL, 0),
(41, '2020-01-23', 'Mario Alberto Ventura Martinez', '1', NULL, '1', '1', '1', '1', NULL, NULL, '1', 'pendiente', '2000', NULL, NULL, 0),
(42, '2020-01-24', 'Mario Alberto Ventura Martinez', 'redes', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Solicitud de prueba', 'finalizada', '3600', NULL, NULL, 0),
(43, '2020-02-06', 'Mario Alberto Ventura Martinez', 'Contabilidad', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'viaje de negocios', 'verificar', '1100', NULL, NULL, 0),
(44, '2020-02-14', 'Mario Alberto Ventura Martinez', 'redes', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', '2020-02-17', '2020-02-20', 'viaje de negocios', 'verificar', '600', NULL, NULL, 0);

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
(5, 'Test ', 'User', '(228) 838-7334', 'Carlos92@gmail.com', 'Veracruz', NULL, NULL, NULL, '(228) 838-7334', '5', 0, 0),
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
  MODIFY `idpartidas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
