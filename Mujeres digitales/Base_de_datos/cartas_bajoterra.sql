-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2023 a las 23:22:22
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cartas_bajoterra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartas`
--

CREATE TABLE `cartas` (
  `id` varchar(11) NOT NULL,
  `Nombre_carta` varchar(20) DEFAULT NULL,
  `Defensa` int(4) DEFAULT NULL,
  `Ataque` int(4) DEFAULT NULL,
  `Poder` int(4) DEFAULT NULL,
  `imagen_carta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cartas`
--

INSERT INTO `cartas` (`id`, `Nombre_carta`, `Defensa`, `Ataque`, `Poder`, `imagen_carta`) VALUES
('1A', 'CARNERO', 1900, 1550, 1200, '\\img\\4.jpg'),
('1B', 'BURPY', 1900, 1950, 1320, '\\img\\5.jpg'),
('1C', 'TERRARIX', 2000, 1750, 1060, '\\img\\8.jpg'),
('1D', 'FROSTFANG', 2120, 1600, 1500, '\\img\\BJ2.jpg'),
('1F', 'VINE', 1820, 2000, 1600, '\\img\\BJ.jpg'),
('1G', 'MAKO', 2500, 1600, 1460, '\\img\\descarga6.jpg'),
('1H', 'SLICK', 3200, 1800, 1680, '\\img\\descarga7.jpg'),
('1I', 'ARMASHELT', 5800, 1400, 1240, '\\img\\4.jpg'),
('2A', 'CARNERO', 1900, 1550, 1200, '\\img\\5.jpg'),
('2B', 'BURPY', 1900, 1950, 1320, '\\img\\8.jpg'),
('2C', 'TERRARIX', 2000, 1750, 1060, '\\img\\BJ.jpg'),
('2D', 'FROSTFANG', 2120, 1600, 1500, '\\img\\BJ2.jpg'),
('2F', 'VINE', 1820, 2000, 1600, '\\img\\descarga3.jpg'),
('2G', 'MAKO', 2500, 1600, 1460, '\\img\\descarga6.jpg'),
('2H', 'SLICK', 3200, 1800, 1680, '\\img\\descarga7.jpg'),
('2I', 'ARMASHELT', 5800, 1400, 1240, '\\img\\4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nombre_Usuario`) VALUES
(4, 'jugador 1'),
(5, 'jhj');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cartas`
--
ALTER TABLE `cartas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
