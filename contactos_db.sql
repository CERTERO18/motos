-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2024 a las 04:48:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contactos_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombre`, `email`, `mensaje`, `fecha`) VALUES
(8, 'dffdg', 'bryanalexanderbarrancos@gmail.com', 'fff', '2024-06-19 05:06:20'),
(9, 'v', 'bryanalexanderbarrancos@gmail.com', 'cc', '2024-06-19 05:10:39'),
(10, 'x', 'bryanalexanderbarrancos@gmail.com', 'sdsdd', '2024-06-19 05:11:06'),
(11, 'barrancos', 'bryanalexanderbarrancos@gmail.com', 'beien', '2024-06-19 17:39:26'),
(12, 'jazmin ', 'bryanalexanderbarrancos@gmail.com', 'gg', '2024-06-19 17:58:51'),
(13, 'g', 'bryanalexanderbarrancos@gmail.com', 'ff', '2024-06-19 17:59:51'),
(14, 'nardo', 'bryanalexanderbarrancos@gmail.com', 'dddddd', '2024-06-19 18:02:33'),
(15, 'luis ruiz', 'bryanalexanderbarrancos@gmail.com', 'simon', '2024-06-19 18:04:08'),
(16, 'bryan barrancos', 'bryanalexanderbarrancos@gmail.com', 'cc', '2024-06-19 18:08:38'),
(17, 'bryan barrancos', 'bryanalexanderbarrancos@gmail.com', 'chi', '2024-06-19 18:09:33'),
(18, 'sss', 'bryanalexanderbarrancos@gmail.com', 'ggg', '2024-06-19 18:26:19'),
(19, 'nardo', 'bryanalexanderbarrancos@gmail.com', 'bbb', '2024-06-19 18:28:29'),
(20, 'bryan barrancosvc', 'cv@gmail.com', 'jj', '2024-06-19 18:51:04'),
(21, 'valeria', 'cv@gmail.com', 'kjkjjkkkj', '2024-06-19 19:14:55'),
(22, 'bryan barrancos', 'cv@gmail.com', 'rffff', '2024-06-20 01:00:25'),
(23, 'Bryan Alexander Barrancos Sanchez', 'bryanalexanderbarrancos@gmail.com', 'la pagina estuvo buena y me brindo buena informacion', '2024-06-20 02:42:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
