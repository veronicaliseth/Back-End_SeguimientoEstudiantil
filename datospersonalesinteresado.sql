-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-12-2021 a las 09:14:26
-- Versión del servidor: 8.0.26
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdusuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonalesinteresado`
--

CREATE TABLE `datospersonalesinteresado` (
  `idDatosinteresados` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidopaterno` varchar(50) NOT NULL,
  `apellidomaterno` varchar(50) NOT NULL,
  `genero` varchar(200) NOT NULL,
  `fechanacimiento` varchar(200) NOT NULL,
  `escuelaprocedencia` varchar(50) NOT NULL,
  `comoentero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datospersonalesinteresado`
--
ALTER TABLE `datospersonalesinteresado`
  ADD PRIMARY KEY (`idDatosinteresados`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datospersonalesinteresado`
--
ALTER TABLE `datospersonalesinteresado`
  MODIFY `idDatosinteresados` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
