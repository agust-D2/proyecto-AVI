-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-08-2020 a las 02:34:44
-- Versión del servidor: 8.0.19
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dni` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fechanac` date NOT NULL,
  `correo` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sexo` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clave` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellido`, `dni`, `fechanac`, `correo`, `sexo`, `usuario`, `clave`) VALUES
(1, 'Jean Carlos', 'Cruz Huanca', '71046461', '1996-02-19', 'yean_u0129@hotmail.com', 'M', 'jeancillo', '123'),
(2, 'Nathan ', 'Silvera Iñigo', '12345678', '1999-03-14', 'natancillo@gmail.com', 'M', 'natancillo', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
