-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-08-2021 a las 00:40:25
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `carpinteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `cuerpo`, `img_id`) VALUES
(12, 'Mueble Laqueado', 'Mueble de cocina totalmente Laqueado en Blanco-semimate', 'zunck4eak4fu2imjugv3'),
(13, 'Mueble TV', 'En MDF enchapado en paraíso laqueado con tapa de doble espesor y estantes flotantes con luces led', 'ztzzijddftx2ysd44dr3'),
(15, 'Mueble TV Vajillero', 'Este mueble de tv tiene incluido un vajillero vidriado e iluminado con luces led', 'opbm7q8v9bi0huakciho'),
(16, 'Rack para Tv', 'Rack flotante laqueado en color gris ceniza con cajones para usos multiples', 'xoa909sigtcozxhz1t36'),
(17, 'Vajillero Comedor', 'Es un mueble empotrado con puertas con varillas enchapas en roble americano laqueados al natural', 'kxgxjpnt9kctuflfdobt'),
(18, 'Mueble de Cocina', 'mueble de cocina en melamina negra con detalles en aluminio con puerta de vidrio esmerilado', 'drixwxuw4ailrvdnd4qs'),
(19, 'prueba1', 'df<dfg<sd', 'humugwdx1ag2pchkvxsb'),
(20, 'prueba15', 'prueba15', 'aikqvigrsryan9kl78d0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'hernan', 'c33367701511b4f6020ec61ded352059'),
(2, 'caballero', 'c33367701511b4f6020ec61ded352059');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
