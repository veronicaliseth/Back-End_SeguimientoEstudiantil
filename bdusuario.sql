-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-01-2022 a las 22:16:07
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
  `nss` varchar(200) NOT NULL,
  `nombreCompletoFamiliar` varchar(50) NOT NULL,
  `numeroTelefono` varchar(50) NOT NULL,
  `fecha` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `credencialestudiante`
--

INSERT INTO `credencialestudiante` (`idCredencialEstudiante`, `nombreAlumno`, `matricula`, `curp`, `carrera`, `tipoSangre`, `nss`, `nombreCompletoFamiliar`, `numeroTelefono`, `fecha`) VALUES
(1, 'a', '2586325', 'LOGO660620HCSRRS05', 'b', 'o+', '356353', 'gr', '35353', ''),
(2, 'Fernanda', '569595', 'LOGO660620HCSRRS05', 'Licenciada en Administracion', 'O+', '595529596', 'Samantha', '96948965263', ''),
(3, 'Fernanda', '78995552', 'LOGO660620HCSRRS05', 'Licenciada en Administracion', 'O+', '595529596', 'Samantha', '96948965263', ''),
(4, 'Kevin Estrada Zenteno', '201569', 'KEZ010608MDJCD09', 'Lic en Administracion', 'O +', '69642352897', 'Ozel Alfonso Aguilar Dominguez', '9615859789', '2021-12-31T21:29:58.446Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datoscontactointeresado`
--

CREATE TABLE `datoscontactointeresado` (
  `idDatoscontactointeresado` int NOT NULL,
  `correo` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `telefonoprincipal` varchar(200) NOT NULL,
  `telefonosecundario` varchar(200) NOT NULL,
  `nivelinteresado` int NOT NULL,
  `gradointeresado` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datoscontactointeresado`
--

INSERT INTO `datoscontactointeresado` (`idDatoscontactointeresado`, `correo`, `domicilio`, `telefonoprincipal`, `telefonosecundario`, `nivelinteresado`, `gradointeresado`) VALUES
(1, 'ozel@gmail.com', 'tercera poniente entre avenida central', '96188', '96422', 5, 2),
(2, 'ernesto@gmail.com', 'avenida central', '9518875641', '9615578456', 5, 3),
(3, 'Goliat@gmail.com', 'avenida central', '9615588756', '96188654789', 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonales`
--

CREATE TABLE `datospersonales` (
  `idDatospersonalesinteresado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidopaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidomaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefonoprincipal` varchar(200) NOT NULL,
  `telefonosecundario` varchar(200) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `alergias` varchar(50) NOT NULL,
  `padecimientos` varchar(50) NOT NULL,
  `fecha` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datospersonales`
--

INSERT INTO `datospersonales` (`idDatospersonalesinteresado`, `nombre`, `apellidopaterno`, `apellidomaterno`, `telefonoprincipal`, `telefonosecundario`, `correo`, `domicilio`, `alergias`, `padecimientos`, `fecha`) VALUES
(1, 'crf', 'rf', 'fref', '17', '274852', ';pi', 'opi', 'p;i', 'ip', ''),
(2, 'crf', 'rf', 'fref', '17', '274852', ';pi', 'opi', 'p;i', 'ip', ''),
(3, 'crf', 'rf', 'fref', '17', '274852', ';pi', 'opi', 'p;i', 'ip', ''),
(4, 'crf', 'rf', 'fref', '17', '274852', ';pi', 'opi', 'p;i', 'ip', ''),
(5, 'Ulises', 'Hernandez', 'Aguilar', '9616688759', '9615588746', 'ulises@gmail.com', 'avenida central', 'ninguna', 'Ninguna', '2021-12-31T20:10:48.610Z'),
(6, 'Ulises', 'Hernandez', 'Aguilar', '9616688759', '9615588746', 'ulises@gmail.com', 'avenida central', 'ninguna', 'Ninguna', '2021-12-31T20:21:29.666Z'),
(7, 'Alejandro', 'Perez', 'Aguilar', '96178784569', '9615986456', 'ale@gmail.com', 'tercera poniente', 'ninguna', 'ninguna', '2021-12-31T20:57:17.424Z'),
(8, 'Alejandro', 'Perez', 'Aguilar', '96178784569', '9615986456', 'ale@gmail.com', 'tercera poniente', 'ninguna', 'ninguna', '2021-12-31T20:59:35.925Z'),
(9, 'Alejandro', 'Perez', 'Aguilar', '96178784569', '9615986456', 'ale@gmail.com', 'tercera poniente', 'ninguna', 'ninguna', '2021-12-31T21:16:26.518Z'),
(10, 'Alejandro', 'Estrada', 'Zenteno', '9615588759', '96144459862', 'ale@gamil.com', 'avenida', 'ninguna', 'ninguno', '2021-12-31T21:20:30.694Z');

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
  `comoentero` varchar(50) NOT NULL,
  `fecha` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `datospersonalesinteresado`
--

INSERT INTO `datospersonalesinteresado` (`idDatosinteresados`, `nombre`, `apellidopaterno`, `apellidomaterno`, `genero`, `fechanacimiento`, `escuelaprocedencia`, `comoentero`, `fecha`) VALUES
(1, 'd', 'd', 'd', 'Mujer', '2021-12-17', '12', '3', ''),
(2, 'Ozel', 'Vazquez', 'Lopez', 'Hombre', '2021-12-17', '12', '2', ''),
(3, 'Ozel', 'Vazquez', 'Lopez', 'Hombre', '2021-12-17', '12', '2', ''),
(4, 'Ernesto', 'Estrada', 'Aguilar', 'Hombre', '2021-12-18', '9', '3', ''),
(5, 'Goliat', 'Bezares', 'Perez', 'Hombre', '2019-04-06', '12', '3', '2021-12-31T21:34:11.583Z');

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
(3, 'd', 'd', '7'),
(4, 'd', 'd', '8'),
(5, 'Alejandra', 'undefined', 'undefined'),
(6, 'Alejandra', 'undefined', 'undefined'),
(7, 'Alfonso', 'Estrada', 'Perez'),
(8, 'Rogelio', 'Cruz', 'Zenteno');

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
(1, 'ip;oi', 'iop', 'ip', '5785', 'io', '58', '452', 'oio', '58', '452', 'oio', 'oio'),
(2, 'Ulises', 'Hernandez', 'Aguilar', '29140', 'centro', '10c', '112', 'aevch06', '10c', '112', 'aevch06', 'aevch06'),
(3, 'Ulises', 'Hernandez', 'Aguilar', '29140', 'centro', '10c', '112', 'aevch06', '10c', '112', 'aevch06', 'aevch06'),
(4, 'Ulises', 'Hernandez', 'Aguilar', '29140', 'centro', '10c', '112', 'aevch06', '10c', '112', 'aevch06', 'aevch06'),
(5, 'Alejandro', 'Perez', 'Aguilar', '29140', 'centro', '10c', '112', 'APEA041501EB5', '10c', '112', 'APEA041501EB5', 'APEA041501EB5'),
(6, 'Alejandro', 'Perez', 'Aguilar', '29140', 'centro', '10c', '112', 'APEA041501EB5', '10c', '112', 'APEA041501EB5', 'APEA041501EB5'),
(7, 'Alejandro', 'Perez', 'Aguilar', '29140', 'centro', '10c', '112', 'APEA041501EB5', '10c', '112', 'APEA041501EB5', 'APEA041501EB5'),
(8, 'Alejandro', 'Perez', 'Aguilar', '29140', 'centro', '10c', '112', 'APEA041501EB5', '10c', '112', 'APEA041501EB5', 'APEA041501EB5'),
(9, 'Alejandro', 'Perez', 'Aguilar', '29140', 'centro', '10c', '112', 'APEA041501EB5', '10c', '112', 'APEA041501EB5', 'APEA041501EB5'),
(10, 'Alejandro', 'Perez', 'Aguilar', '29140', 'centro', '10c', '112', 'APEA041501EB5', '10c', '112', 'APEA041501EB5', 'APEA041501EB5'),
(11, 'Alejandro ', 'Estrada', 'Zenteno', '29140', 'centro', '10c', '145', 'AEZ040601F5', '10c', '145', 'AEZ040601F5', 'AEZ040601F5');

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

--
-- Volcado de datos para la tabla `familiar`
--

INSERT INTO `familiar` (`idFamiliar`, `nombre`, `apellidos`, `edad`, `estudios`, `profesion`, `horariolaboral`) VALUES
(1, 'Ernesto', 'Estrada Reyes', 65, 'licenciatura', 'Medico', '08:00 a 16:00');

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
  MODIFY `idCredencialEstudiante` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `datoscontactointeresado`
--
ALTER TABLE `datoscontactointeresado`
  MODIFY `idDatoscontactointeresado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  MODIFY `idDatospersonalesinteresado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `datospersonalesinteresado`
--
ALTER TABLE `datospersonalesinteresado`
  MODIFY `idDatosinteresados` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `datostutorinteresado`
--
ALTER TABLE `datostutorinteresado`
  MODIFY `idDatostutorinteresado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `idFacturacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `familiar`
--
ALTER TABLE `familiar`
  MODIFY `idFamiliar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
