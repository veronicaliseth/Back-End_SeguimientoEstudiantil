-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-12-2021 a las 09:20:50
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
-- Estructura de tabla para la tabla `credencialestudiante`
--

CREATE TABLE `credencialestudiante` (
  `idCredencialEstudiante` int NOT NULL,
  `nombreAlumno` varchar(50) NOT NULL,
  `matricula` varchar(50) NOT NULL,
  `curp` varchar(50) NOT NULL,
  `carrera` varchar(70) NOT NULL,
  `tipoSangre` varchar(50) NOT NULL,
  `nss` int NOT NULL,
  `nombreCompletoFamiliar` varchar(50) NOT NULL,
  `numeroTelefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `credencialestudiante`
--

INSERT INTO `credencialestudiante` (`idCredencialEstudiante`, `nombreAlumno`, `matricula`, `curp`, `carrera`, `tipoSangre`, `nss`, `nombreCompletoFamiliar`, `numeroTelefono`) VALUES
(1, 'a', '2586325', 'LOGO660620HCSRRS05', 'b', 'o+', 356353, 'gr', '35353'),
(2, 'Fernanda', '569595', 'LOGO660620HCSRRS05', 'Licenciada en Administracion', 'O+', 595529596, 'Samantha', '96948965263'),
(3, 'Fernanda', '78995552', 'LOGO660620HCSRRS05', 'Licenciada en Administracion', 'O+', 595529596, 'Samantha', '96948965263');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datoscontactointeresado`
--

CREATE TABLE `datoscontactointeresado` (
  `idDatoscontactointeresado` int NOT NULL,
  `correo` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `telefonoprincipal` int NOT NULL,
  `telefonosecundario` int NOT NULL,
  `nivelinteresado` int NOT NULL,
  `gradointeresado` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonales`
--

CREATE TABLE `datospersonales` (
  `idDatospersonalesinteresado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidopaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidomaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefonoprincipal` int NOT NULL,
  `telefonosecundario` int NOT NULL,
  `correo` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `alergias` varchar(50) NOT NULL,
  `padecimientos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datospersonales`
--

INSERT INTO `datospersonales` (`idDatospersonalesinteresado`, `nombre`, `apellidopaterno`, `apellidomaterno`, `telefonoprincipal`, `telefonosecundario`, `correo`, `domicilio`, `alergias`, `padecimientos`) VALUES
(1, 'crf', 'rf', 'fref', 17, 274852, ';pi', 'opi', 'p;i', 'ip'),
(2, 'crf', 'rf', 'fref', 17, 274852, ';pi', 'opi', 'p;i', 'ip'),
(3, 'crf', 'rf', 'fref', 17, 274852, ';pi', 'opi', 'p;i', 'ip'),
(4, 'crf', 'rf', 'fref', 17, 274852, ';pi', 'opi', 'p;i', 'ip');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datostutorinteresado`
--

CREATE TABLE `datostutorinteresado` (
  `idDatostutorinteresado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidopaterno` varchar(50) NOT NULL,
  `apellidomaterno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datostutorinteresado`
--

INSERT INTO `datostutorinteresado` (`idDatostutorinteresado`, `nombre`, `apellidopaterno`, `apellidomaterno`) VALUES
(1, 'undefined', 'undefined', 'undefined'),
(2, 'undefined', 'undefined', 'undefined'),
(3, 'd', 'd', '7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `idFacturacion` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidopaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidomaterno` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `codigopostal` varchar(200) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `nexterno` varchar(200) NOT NULL,
  `ninterno` varchar(200) NOT NULL,
  `metodopago` varchar(50) NOT NULL,
  `rfc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`idFacturacion`, `nombre`, `apellidopaterno`, `apellidomaterno`, `pais`, `estado`, `codigopostal`, `municipio`, `colonia`, `nexterno`, `ninterno`, `metodopago`, `rfc`) VALUES
(1, 'ip;oi', 'iop', 'ip', '5785', 'io', '58', '452', 'oio', '58', '452', 'oio', 'oio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiar`
--

CREATE TABLE `familiar` (
  `idFamiliar` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `edad` int NOT NULL,
  `estudios` varchar(50) NOT NULL,
  `profesion` varchar(50) NOT NULL,
  `horariolaboral` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `username`, `password`) VALUES
(1, 'Alejandra', 'alejandra123'),
(2, 'fernado@gmail.com', 'fer123'),
(3, 'ale@gmail.com', '456ale'),
(4, 'sofia@gmail.com', 'sof789'),
(5, 'ernesto@gamil.com', '159ern'),
(6, 'hector@gmail.com', 'hec423'),
(7, 'hecto@gmail.com', 'hec423'),
(8, 'gil@gmail.com', '741gil'),
(9, 'diego@gmail.com', 'diego'),
(10, 'sam@gmail.com', 'sam'),
(11, 'sam@gmail.com', 'sam'),
(12, 'sam@gmail.com', 'sam');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `credencialestudiante`
--
ALTER TABLE `credencialestudiante`
  ADD PRIMARY KEY (`idCredencialEstudiante`);

--
-- Indices de la tabla `datoscontactointeresado`
--
ALTER TABLE `datoscontactointeresado`
  ADD PRIMARY KEY (`idDatoscontactointeresado`);

--
-- Indices de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  ADD PRIMARY KEY (`idDatospersonalesinteresado`);

--
-- Indices de la tabla `datospersonalesinteresado`
--
ALTER TABLE `datospersonalesinteresado`
  ADD PRIMARY KEY (`idDatosinteresados`);

--
-- Indices de la tabla `datostutorinteresado`
--
ALTER TABLE `datostutorinteresado`
  ADD PRIMARY KEY (`idDatostutorinteresado`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`idFacturacion`);

--
-- Indices de la tabla `familiar`
--
ALTER TABLE `familiar`
  ADD PRIMARY KEY (`idFamiliar`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `credencialestudiante`
--
ALTER TABLE `credencialestudiante`
  MODIFY `idCredencialEstudiante` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `datoscontactointeresado`
--
ALTER TABLE `datoscontactointeresado`
  MODIFY `idDatoscontactointeresado` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  MODIFY `idDatospersonalesinteresado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `datospersonalesinteresado`
--
ALTER TABLE `datospersonalesinteresado`
  MODIFY `idDatosinteresados` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datostutorinteresado`
--
ALTER TABLE `datostutorinteresado`
  MODIFY `idDatostutorinteresado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `idFacturacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `familiar`
--
ALTER TABLE `familiar`
  MODIFY `idFamiliar` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
