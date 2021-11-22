-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2021 a las 22:56:55
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `app_matriculacionv2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `nombre`, `descripcion`, `direccion`) VALUES
(1, 'Ingenieria de Sistemas', 'Tecnologia', 'Complejo'),
(2, 'Ingenieria de Civil', 'Construccion', 'complejo v2'),
(3, 'Nutricion', 'aa', 'aaa'),
(4, 'Derecho', 'qq', 'qq'),
(5, 'Comunicacion Social', 'mm', 'mm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Dispensacion', 'Examen directo'),
(2, 'Pre Universitario', 'aaa'),
(3, 'Exacelencia', 'ddd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestiones`
--

CREATE TABLE `gestiones` (
  `id_gestion` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gestiones`
--

INSERT INTO `gestiones` (`id_gestion`, `nombre`) VALUES
(1, '2020'),
(2, '2021'),
(3, '2022'),
(4, '2019'),
(5, '2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id_matricula` int(10) UNSIGNED NOT NULL,
  `costo` int(11) DEFAULT NULL,
  `f_matriculacion` date DEFAULT NULL,
  `nro_deposito` int(11) DEFAULT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `id_carrera` int(10) UNSIGNED NOT NULL,
  `id_sede` int(10) UNSIGNED NOT NULL,
  `id_gestion` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id_matricula`, `costo`, `f_matriculacion`, `nro_deposito`, `id_usuario`, `id_categoria`, `id_carrera`, `id_sede`, `id_gestion`) VALUES
(1, 22, '2021-11-28', 122423, 1, 1, 1, 1, 1),
(2, 22, '2021-11-25', 12334, 4, 3, 4, 2, 1),
(4, 22, '2021-11-23', 3242242, 3, 2, 4, 3, 4),
(5, 27, '2021-11-23', 222242, 4, 3, 5, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id_sede` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id_sede`, `nombre`, `direccion`) VALUES
(1, 'Villa Esperanza', 'Complejo'),
(2, 'Villa Ingenio', 'aa'),
(3, 'Satelite', 'jjj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `ap_paterno` varchar(30) DEFAULT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `ci` int(11) DEFAULT NULL,
  `ru` int(11) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `f_nac` date DEFAULT NULL,
  `n_titulo_bachiller` varchar(250) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `ap_paterno`, `ap_materno`, `nombres`, `ci`, `ru`, `celular`, `correo`, `direccion`, `f_nac`, `n_titulo_bachiller`, `foto`, `nick`, `password`, `estado`, `nivel`) VALUES
(1, 'aaa', 'Bernal', 'Jose', 12345678, 87654321, 78765432, 'jose@jose.com', 'ccc', '1998-09-17', '2342423', 'default.jpg', 'jos', '30446d562301c34308155183a2f0ff23652fa4d7', 1, 1),
(3, 'jjjaja', 'ajaja', 'ajaja', 78237823, 1231231, 6453423, 'jsj@js.com', 'sasa', '1998-09-02', '23113', 'default.jpg', 'lala', 'lala', 1, 2),
(4, 'aaa', 'bb', 'nnnn', 9029281, 43387278, 345873874, 'jsjsj.jsj.com', 'klskja', '1999-06-09', '783827', 'default.jpg', 'lojsu', 'ljois', 1, 1),
(5, 'sdasda', 'saddas', 'dadsad', 754323, 4545654, 8942788, 'admin@admin.com', 'jsjs', '1998-07-02', '35235443', 'default.jpg', 'hshs', 'admin', 1, 2),
(6, 'admin', 'adm', 'dlsklak', 456, 435, 35325, 'prueba@prueba.com', 'ggg', '1998-09-02', '554543', 'default.jpg', 'prueba1', 'prueba', 1, 1),
(7, 'admin2', 'admin2', 'admin2', 222, NULL, 111, 'admin2@admin,com', NULL, NULL, NULL, 'default.jpg', NULL, 'admin', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `gestiones`
--
ALTER TABLE `gestiones`
  ADD PRIMARY KEY (`id_gestion`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_carrera` (`id_carrera`),
  ADD KEY `id_sede` (`id_sede`),
  ADD KEY `id_gestion` (`id_gestion`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id_carrera` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `gestiones`
--
ALTER TABLE `gestiones`
  MODIFY `id_gestion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_matricula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id_sede` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `matriculas_ibfk_3` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`),
  ADD CONSTRAINT `matriculas_ibfk_4` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id_sede`),
  ADD CONSTRAINT `matriculas_ibfk_5` FOREIGN KEY (`id_gestion`) REFERENCES `gestiones` (`id_gestion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
