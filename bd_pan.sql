-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-02-2020 a las 05:55:30
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

--
-- Volcado de datos para la tabla `comprobantes`
--

INSERT INTO `comprobantes` (`folio`, `idpartida`, `emisor`, `receptor`, `totalfactura`, `foliosat`, `xml`, `estatus`) VALUES
(42, 48, 'NIMB861103BW0', 'IUV0412306K3', 90.99, 'fd2d9ece-5fb2-4eb6-b146-5bfe1d1c854f', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;\r\n&lt;cfdi:Comprobante Certificado=&quot;MIIGITCCBAmgAwIBAgIUMDAwMDEwMDAwMDA0MDM0OTI4MDUwDQYJKoZIhvcNAQELBQAwggGyMTgwNgYDVQQDDC9BLkMuIGRlbCBTZXJ2aWNpbyBkZSBBZG1pbmlzdHJhY2nDs24gVHJpYnV0YXJpYTEvMC0GA1UECgwmU2VydmljaW8gZGUgQWRtaW5pc3RyYWNpw7NuIFRyaWJ1dGFyaWExODA2BgNVBAsML0FkbWluaXN0cmFjacOzbiBkZSBTZWd1cmlkYWQgZGUgbGEgSW5mb3JtYWNpw7NuMR8wHQYJKoZIhvcNAQkBFhBhY29kc0BzYXQuZ29iLm14MSYwJAYDVQQJDB1Bdi4gSGlkYWxnbyA3NywgQ29sLiBHdWVycmVybzEOMAwGA1UEEQwFMDYzMDAxCzAJBgNVBAYTAk1YMRkwFwYDVQQIDBBEaXN0cml0byBGZWRlcmFsMRQwEgYDVQQHDAtDdWF1aHTDqW1vYzEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMV0wWwYJKoZIhvcNAQkCDE5SZXNwb25zYWJsZTogQWRtaW5pc3RyYWNpw7NuIENlbnRyYWwgZGUgU2VydmljaW9zIFRyaWJ1dGFyaW9zIGFsIENvbnRyaWJ1eWVudGUwHhcNMTYwODI1MjMyNTU4WhcNMjAwODI1MjMyNTU4WjCBwTEnMCUGA1UEAxMeQkxBTkNBIEVMSVpBQkVUSCBOSUVUTyBNSVJBTkRBMScwJQYDVQQpEx5CTEFOQ0EgRUxJWkFCRVRIIE5JRVRPIE1JUkFOREExJzAlBgNVBAoTHkJMQU5DQSBFTElaQUJFVEggTklFVE8gTUlSQU5EQTEWMBQGA1UELRMNTklNQjg2MTEwM0JXMDEbMBkGA1UEBRMSTklNQjg2MTEwM01ERlRSTDAxMQ8wDQYDVQQLEwZVTklEQUQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCszoI1tKdl/6XSuudvh1Rea058T8jJT7C9LXHB7C7Cg+I6HgHI2rOqelGuu5RQCUqYqC0gvn+cI5/8ojyEXTgdTqat++oLUiG1cpczDpEhhwkv5Kc2oZpEL22B39oolkwAa1upXlX/UWqPKOsgOGdxtka7TDm3Di2NgDzPY3qGOvkCKT701fNa+fUigQouTQuzOoR5ww8++f2RPwuLvH2ZFVXRvxajvC/DSjru6NCwQwEzipamMhjFPXfZ+ieuidcg/W6CbVNHmMdZA1V9zPyN4ABfGcstURsf5h/LrxzGv/z0fPEPtVKlHsBqzI2EWXAbUOzK0X0mk07SnKuZngXjAgMBAAGjHTAbMAwGA1UdEwEB/wQCMAAwCwYDVR0PBAQDAgbAMA0GCSqGSIb3DQEBCwUAA4ICAQCjKGgHEXPsXaHqJ0TbnEUMAEPHdoWD8VsBdvnyn6EcFgfA4wqfJEeD6z4ibZJooWnb9k6JTlBlcHAka7nsmtKVuoIfuGcrfnxMlNZscjShtYFNPbgMKXABhn/Lcwq13PGXFOxWhX6h8ug8wlAhZg4ZubeY74mfusmlTH+SBKQoadNZum1Bd2I/ArOuXnp2M2OYQlrmvur+vBmPu9jMdu0/WR0zdOZfdSTzLgzq6BWlA9VTHsaO7e0C7hO9CODnJEftWT8+e+Z3Dl+5Kv2nB0eLQQhfrRIaJ2aJqdf2NyU747AeADzVTmF7/xY6/8n8BNy893badacMV46heibbVFJg1OdQOfoDwHfJmu7UXvl29qOjcfVVuWVCeOqdexdtD4N4SU0rH55ShAsJP4KACQAxOOIC7DhuRFBdH/p/gBNV+ECxv565okiBRC7m1BZE+N3YxQabLPZttUFuNcMe3hRdtqWnXJHO4KhnOJf/I8ivsUGYVUGDlWpltDaqOAoR6chm+rf6cvbi64tNr1oLYq6/l6y2f8cn2TsZZAfujhzQNFu+5cjZIEGX1mjsyUR6u8dB5UiQHYQdaXXolOwRSOu6YjfffWf4K8prFdHPjsazc7rMhtrNdkw/9briT9SnoT+wmVwhcFCKg8Zfm6O9dWaZT4BI7gyHoVt8iah9DzUaQg==&quot; CondicionesDePago=&quot;Pago en una sola exhibici&amp;#243;n&quot; Fecha=&quot;2019-03-25T13:38:36&quot; Folio=&quot;5731&quot; FormaPago=&quot;01&quot; LugarExpedicion=&quot;72530&quot; MetodoPago=&quot;PUE&quot; Moneda=&quot;MXN&quot; NoCertificado=&quot;00001000000403492805&quot; Sello=&quot;kUzEB4Q5c/qGQ0p7COIsAD32PKGAqSzaP0NEsgNo2QPraqmcU/O09+Bp+Zi6EIVNeSWZUa6ZeAQiZ4qCGapWh7EEN3n3aQjrLypYTPuLrk0yh4HBZt48EUW0rC4OA6/rofMPbz0enM9Uy+BBtTw1hTSJ2U2SqLT+vb5y0jvnxabGkQbLdWjGuPQkh0vRQp6VvyzhM8v5soxPMhY3y5ZKtPdSeKu39hgvoVW+Zlqe+uZDfYVZdpMcGM8Nkdv+w7M81QlBIcy/3Z+bRe/93gKnmfgBBpjC1MIagXfyKa8LKZLyq5pDdFeRysgMND+NClapgJr1sV5XjdeVX2Si8Cl4Ew==&quot; Serie=&quot;F&quot; SubTotal=&quot;78.44&quot; TipoCambio=&quot;1&quot; TipoDeComprobante=&quot;I&quot; Total=&quot;90.99&quot; Version=&quot;3.3&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot;&gt;&lt;cfdi:Emisor Nombre=&quot;BLANCA ELIZABETH NIETO MIRANDA&quot; RegimenFiscal=&quot;612&quot; Rfc=&quot;NIMB861103BW0&quot;/&gt;&lt;cfdi:Receptor Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO, S.C.&quot; Rfc=&quot;IUV0412306K3&quot; UsoCFDI=&quot;G03&quot;/&gt;&lt;cfdi:Conceptos&gt;&lt;cfdi:Concepto Cantidad=&quot;1&quot; ClaveProdServ=&quot;90101500&quot; ClaveUnidad=&quot;E48&quot; Descripcion=&quot;FECHA DE CONSUMO 23/03/2019&quot; Importe=&quot;78.44&quot; Unidad=&quot;N/A&quot; ValorUnitario=&quot;78.44&quot;&gt;&lt;cfdi:Impuestos&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Base=&quot;78.440000&quot; Importe=&quot;12.55&quot; Impuesto=&quot;002&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;/cfdi:Concepto&gt;&lt;/cfdi:Conceptos&gt;&lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;12.55&quot;&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Importe=&quot;12.55&quot; Impuesto=&quot;002&quot; TasaOCuota=&quot;0.160000&quot; TipoFactor=&quot;Tasa&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;cfdi:Complemento&gt;&lt;tfd:TimbreFiscalDigital FechaTimbrado=&quot;2019-03-25T13:41:20&quot; UUID=&quot;fd2d9ece-5fb2-4eb6-b146-5bfe1d1c854f&quot; NoCertificadoSAT=&quot;00001000000405555426&quot; SelloCFD=&quot;kUzEB4Q5c/qGQ0p7COIsAD32PKGAqSzaP0NEsgNo2QPraqmcU/O09+Bp+Zi6EIVNeSWZUa6ZeAQiZ4qCGapWh7EEN3n3aQjrLypYTPuLrk0yh4HBZt48EUW0rC4OA6/rofMPbz0enM9Uy+BBtTw1hTSJ2U2SqLT+vb5y0jvnxabGkQbLdWjGuPQkh0vRQp6VvyzhM8v5soxPMhY3y5ZKtPdSeKu39hgvoVW+Zlqe+uZDfYVZdpMcGM8Nkdv+w7M81QlBIcy/3Z+bRe/93gKnmfgBBpjC1MIagXfyKa8LKZLyq5pDdFeRysgMND+NClapgJr1sV5XjdeVX2Si8Cl4Ew==&quot; SelloSAT=&quot;bbLq++G8/Jw4HYDFtmxUimJ5oGa624Gcw2+uWbd3dVSCuPepigv49kB2ahuxCG0UraFBEV/IzrzpsGkyzTLUXwiZ3helgQfiTWinTRLOfEKGHAtEQShVimozxVciRoniTE7fpWyfEndwH5Q+obGg5E1yAOec32fscUIFcgESBWaFs8tV3n4okGl3cSpKzyxxX4KqaIRkJY+CR92Zagh5pVXVno391b6Tm/0XTzCTz5oxioZV1ibppQDAL9N8YJI45DdPan6dLS/jT59wiBF4ZfdRcwKJY6m6QBdWSZdB+BGQFgEMcAQDIWta/h7ArhTHCxqac/fZS3H4fZf0uqiDDQ==&quot; Version=&quot;1.1&quot; RfcProvCertif=&quot;CCC1007293K0&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/timbrefiscaldigital/TimbreFiscalDigitalv11.xsd&quot; xmlns:fn=&quot;http://www.w3.org/2005/xpath-functions&quot; xmlns:soapenv=&quot;http://schemas.xmlsoap.org/soap/envelope/&quot; xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot;/&gt;&lt;/cfdi:Complemento&gt;&lt;/cfdi:Comprobante&gt;', 3),
(42, 48, 'CPM030614M68', 'IUV0412306K3', 47, 'D97FAACC-0208-4B7B-8DC6-1ABA4816A7C4', '﻿&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;\r\n&lt;cfdi:Comprobante xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot; xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot; Version=&quot;3.3&quot; Folio=&quot;987657&quot; Fecha=&quot;2019-03-26T12:31:58&quot; Sello=&quot;Su2n7kotyc4/iz+Cu2Az56Vugu0EpuLpvg1GnOz5NBz+ATmvIVuLVO6IfDDql1Q8Z50k+tjtskEP3LUdIF3x3GWkIwNqnJ/iWbpOXxWl0ZG+mzwMGnuNvTktxGynI5tat//8WBnETQcfE548nJGPXsmbriuI5rQZGhXoA1cre90AJ1bxf3cIh0f0oyP2wZIvlXsTZ3cRvUttfoLZUg2CB0Ldd1LnV08cxwOs7t7IPqo7f/NqFh5R50008yr8ir2TonZ3SXkNdFJq7j3CXTT53XiXoUCbV4bJSiU05He16q2TQ74/g7Roa6VP07PZWrHKGLkPQZ54drZYVTxKyaEq/Q==&quot; FormaPago=&quot;01&quot; NoCertificado=&quot;00001000000404232475&quot; Certificado=&quot;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&quot; SubTotal=&quot;40.52&quot; Moneda=&quot;MXN&quot; Total=&quot;47.00&quot; TipoDeComprobante=&quot;I&quot; MetodoPago=&quot;PUE&quot; LugarExpedicion=&quot;91630&quot;&gt;\r\n  &lt;cfdi:Emisor Rfc=&quot;CPM030614M68&quot; Nombre=&quot;CONCESIONES Y PROMOCIONES MALIBRAN S.A. DE C.V.&quot; RegimenFiscal=&quot;601&quot; /&gt;\r\n  &lt;cfdi:Receptor Rfc=&quot;IUV0412306K3&quot; Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO, S.C&quot; UsoCFDI=&quot;G03&quot; /&gt;\r\n  &lt;cfdi:Conceptos&gt;\r\n    &lt;cfdi:Concepto ClaveProdServ=&quot;95111603&quot; Cantidad=&quot;1&quot; ClaveUnidad=&quot;C62&quot; Descripcion=&quot;CUOTA DE PEAJE  PLAN DEL R&Iacute;O, CARRIL 305 A LAS 16:03:04 HRS. DEL 24 MAR 19; BOLETO N&deg; FOLIO:13846435&quot; ValorUnitario=&quot;40.52&quot; Importe=&quot;40.52&quot;&gt;\r\n      &lt;cfdi:Impuestos&gt;\r\n        &lt;cfdi:Traslados&gt;\r\n          &lt;cfdi:Traslado Base=&quot;40.52&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;6.48&quot; /&gt;\r\n        &lt;/cfdi:Traslados&gt;\r\n      &lt;/cfdi:Impuestos&gt;\r\n    &lt;/cfdi:Concepto&gt;\r\n  &lt;/cfdi:Conceptos&gt;\r\n  &lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;6.48&quot;&gt;\r\n    &lt;cfdi:Traslados&gt;\r\n      &lt;cfdi:Traslado Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;6.48&quot; /&gt;\r\n    &lt;/cfdi:Traslados&gt;\r\n  &lt;/cfdi:Impuestos&gt;\r\n  &lt;cfdi:Complemento&gt;\r\n    &lt;tfd:TimbreFiscalDigital xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/timbrefiscaldigital/TimbreFiscalDigitalv11.xsd&quot; Version=&quot;1.1&quot; UUID=&quot;D97FAACC-0208-4B7B-8DC6-1ABA4816A7C4&quot; FechaTimbrado=&quot;2019-03-26T12:32:02&quot; RfcProvCertif=&quot;STA0903206B9&quot; SelloCFD=&quot;Su2n7kotyc4/iz+Cu2Az56Vugu0EpuLpvg1GnOz5NBz+ATmvIVuLVO6IfDDql1Q8Z50k+tjtskEP3LUdIF3x3GWkIwNqnJ/iWbpOXxWl0ZG+mzwMGnuNvTktxGynI5tat//8WBnETQcfE548nJGPXsmbriuI5rQZGhXoA1cre90AJ1bxf3cIh0f0oyP2wZIvlXsTZ3cRvUttfoLZUg2CB0Ldd1LnV08cxwOs7t7IPqo7f/NqFh5R50008yr8ir2TonZ3SXkNdFJq7j3CXTT53XiXoUCbV4bJSiU05He16q2TQ74/g7Roa6VP07PZWrHKGLkPQZ54drZYVTxKyaEq/Q==&quot; NoCertificadoSAT=&quot;00001000000405131108&quot; SelloSAT=&quot;dhtqcuwXBtm6d4DK4pGBy4Gv1kqGGZYg+QH/YdLh6QHVdJwh+VsaGV0lDTYXgtxQz+a2IFSBwgSaaQvoek0N1e0nDK5pCNjmSlCsXto7AbHlTwnQOcCBrf/yda4GX+2wTcopz6gnKXfQ4flcyhyeGoHwM5qiHMeCGV/8zdejxjmn7VcPP3haYLy3rm5ZxregErRUyPOfy2lme8T53b6lYzxPkUSCOOUSKhtpeJ0MKB2nQFORT7ydqxGsPbYOyagPP1zhCLsrOfOkHx6jEm64rciYIMF+UX5qK4v8bbFrPSAiabqoMXPCzxikDlBIf1Gm+IQH6foZpzxWAk52Pb9nuw==&quot; /&gt;\r\n  &lt;/cfdi:Complemento&gt;\r\n&lt;/cfdi:Comprobante&gt;', 3),
(42, 48, 'FNI970829JR9', 'IUV0412306K3', 264, 'D12E60BF-ECA9-4962-B257-DC9B8C9EDF0F', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;\n&lt;cfdi:Comprobante xmlns:cfdi=&quot;http://www.sat.gob.mx/cfd/3&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; Version=&quot;3.3&quot; Fecha=&quot;2019-03-26T12:10:28&quot; Sello=&quot;JD9KN/wR7mnG6/cUg5TigGnDPea3pA3ArxCprB+rXQyUmamk+D1nG0PPvSv9oS6oRcUSrKonSDxL441g6j4iSwCy5dwQbK2tDpIgilvKCXrFpJJaSFMkV3HiourZqyR+Bsm7wk6fxQQbLiP+gnQdOOi/HcYJYtqMoYm5kdxaUEr1wvGJudYcjxvFXe7KZaLzouKKyHIdaR75L5opja6MNxQ9zZE0Tc7QCHK7rLv/LHuxlUygbIa5u6GfXrtheUgmoH8bJerX9x/25u0Xn9/4ioa4ffgaCxxSFP7QGbY8+DXkYqY24PyCxcFVVGGm9Wk8zNF2F4IBD82gDOkHDDoj3A==&quot; FormaPago=&quot;01&quot; NoCertificado=&quot;00001000000409441240&quot; Certificado=&quot;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&quot; SubTotal=&quot;227.58&quot; Moneda=&quot;MXN&quot; Total=&quot;264.00&quot; TipoDeComprobante=&quot;I&quot; MetodoPago=&quot;PUE&quot; LugarExpedicion=&quot;01219&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv33.xsd&quot;&gt;&lt;cfdi:Emisor Rfc=&quot;FNI970829JR9&quot; Nombre=&quot;FONDO NACIONAL DE INFRAESTRUCTURA&quot; RegimenFiscal=&quot;603&quot;/&gt;&lt;cfdi:Receptor Rfc=&quot;IUV0412306K3&quot; Nombre=&quot;INSTITUTO UNIVERSITARIO VERACRUZANO S.C.&quot; UsoCFDI=&quot;G03&quot;/&gt;&lt;cfdi:Conceptos&gt;&lt;cfdi:Concepto ClaveProdServ=&quot;95111602&quot; Cantidad=&quot;1&quot; ClaveUnidad=&quot;C62&quot; Unidad=&quot;PEAJE&quot; Descripcion=&quot;SERVICIO DE PEAJE Y CRUCE CARRETERO SAN MARCOS 2019-03-23 10:14:48&quot; ValorUnitario=&quot;113.79&quot; Importe=&quot;113.79&quot;&gt;&lt;cfdi:Impuestos&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Base=&quot;113.79&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;18.21&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;/cfdi:Concepto&gt;&lt;cfdi:Concepto ClaveProdServ=&quot;95111602&quot; Cantidad=&quot;1&quot; ClaveUnidad=&quot;C62&quot; Unidad=&quot;PEAJE&quot; Descripcion=&quot;SERVICIO DE PEAJE Y CRUCE CARRETERO SAN MARCOS 2019-03-23 08:47:58&quot; ValorUnitario=&quot;113.79&quot; Importe=&quot;113.79&quot;&gt;&lt;cfdi:Impuestos&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Base=&quot;113.79&quot; Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;18.21&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;/cfdi:Concepto&gt;&lt;/cfdi:Conceptos&gt;&lt;cfdi:Impuestos TotalImpuestosTrasladados=&quot;36.42&quot;&gt;&lt;cfdi:Traslados&gt;&lt;cfdi:Traslado Impuesto=&quot;002&quot; TipoFactor=&quot;Tasa&quot; TasaOCuota=&quot;0.160000&quot; Importe=&quot;36.42&quot;/&gt;&lt;/cfdi:Traslados&gt;&lt;/cfdi:Impuestos&gt;&lt;cfdi:Complemento&gt;&lt;tfd:TimbreFiscalDigital xmlns:tfd=&quot;http://www.sat.gob.mx/TimbreFiscalDigital&quot; xsi:schemaLocation=&quot;http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd&quot; Version=&quot;1.1&quot; SelloCFD=&quot;JD9KN/wR7mnG6/cUg5TigGnDPea3pA3ArxCprB+rXQyUmamk+D1nG0PPvSv9oS6oRcUSrKonSDxL441g6j4iSwCy5dwQbK2tDpIgilvKCXrFpJJaSFMkV3HiourZqyR+Bsm7wk6fxQQbLiP+gnQdOOi/HcYJYtqMoYm5kdxaUEr1wvGJudYcjxvFXe7KZaLzouKKyHIdaR75L5opja6MNxQ9zZE0Tc7QCHK7rLv/LHuxlUygbIa5u6GfXrtheUgmoH8bJerX9x/25u0Xn9/4ioa4ffgaCxxSFP7QGbY8+DXkYqY24PyCxcFVVGGm9Wk8zNF2F4IBD82gDOkHDDoj3A==&quot; NoCertificadoSAT=&quot;00001000000403190844&quot; RfcProvCertif=&quot;CVD110412TF6&quot; UUID=&quot;D12E60BF-ECA9-4962-B257-DC9B8C9EDF0F&quot; FechaTimbrado=&quot;2019-03-26T12:16:03&quot; SelloSAT=&quot;t/bsz1U5MofbyX0omal8U4WHN0eZ4tjfF+faU/7mftGIaZz9ilgWeB2j0z0ABrkyQHyo+rvJs/yUya+iSmrB3mgGt4X6YTlv1hkMrlrGjXc1nbznDnpC9uo0iMfmEYHabTnL8Lfm2/dlTmmLi7H02zLM2K1GEU6/JkfYkICF76Jz3j9QIZmlX85xObJwLqoEPtH2K7+jXI2rkSp6xQoD7KOhWIjaw6O5oBWj3fiDd99WSG4LqZ1xXr2x6OLeLyYHFTeBShk9/JewK+uTnIu3L3EsSpx1mKC7bsnmSjC2mWpPkoHzKElTFAdCKeIIpatbXJkMi3ZziHvm7T6l2pHFOg==&quot;/&gt;&lt;/cfdi:Complemento&gt;&lt;/cfdi:Comprobante&gt;', 3);

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
(48, 'Casetas', '1', 42, 401.99, 401.99, 1);

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
(42, '2020-01-24', 'Mario Alberto Ventura Martinez', 'redes', NULL, 'Veracruz', 'Xalapa', 'Veracruz', 'Xalapa', NULL, NULL, 'Solicitud de prueba', 'finalizada', '3600', NULL, NULL, 0);

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
  MODIFY `idpartidas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
