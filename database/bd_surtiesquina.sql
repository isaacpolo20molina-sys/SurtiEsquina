-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2026 a las 22:24:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_surtiesquina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id_auditoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `accion` varchar(100) NOT NULL,
  `tabla_afectada` varchar(100) NOT NULL,
  `registro_afectado` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id_caja` int(11) NOT NULL,
  `id_usuario_apertura` int(11) NOT NULL,
  `fecha_apertura` datetime NOT NULL DEFAULT current_timestamp(),
  `fondo_inicial` decimal(10,2) NOT NULL,
  `fecha_cierre` datetime DEFAULT NULL,
  `saldo_esperado` decimal(10,2) DEFAULT NULL,
  `saldo_contado` decimal(10,2) DEFAULT NULL,
  `diferencia` decimal(10,2) DEFAULT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_compra` datetime NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id_detalle_compra` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_solicitada` int(11) NOT NULL,
  `cantidad_recibida` int(11) NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle_venta` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_caja`
--

CREATE TABLE `movimientos_caja` (
  `id_movimiento_caja` int(11) NOT NULL,
  `id_caja` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tipo_movimiento` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `fecha_movimiento` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_inventario`
--

CREATE TABLE `movimientos_inventario` (
  `id_movimiento` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `tipo_movimiento` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `fecha_movimiento` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades_recepcion`
--

CREATE TABLE `novedades_recepcion` (
  `id_novedad` int(11) NOT NULL,
  `id_recepcion` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `tipo_novedad` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `stock_minimo` int(11) NOT NULL DEFAULT 0,
  `fecha_ingreso` date NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `documento` varchar(30) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepciones`
--

CREATE TABLE `recepciones` (
  `id_recepcion` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_recepcion` datetime NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(30) NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuperacion_contrasena`
--

CREATE TABLE `recuperacion_contrasena` (
  `id_recuperacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `fecha_solicitud` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_expiracion` datetime NOT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_caja` int(11) DEFAULT NULL,
  `fecha_venta` datetime NOT NULL DEFAULT current_timestamp(),
  `subtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ganancias_productos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ganancias_productos` (
`id_producto` int(11)
,`producto` varchar(100)
,`cantidad_vendida` decimal(32,0)
,`precio_compra` decimal(10,2)
,`precio_venta` decimal(10,2)
,`ganancia_total` decimal(43,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_inventario_actual`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_inventario_actual` (
`id_producto` int(11)
,`producto` varchar(100)
,`marca` varchar(100)
,`categoria` varchar(100)
,`precio_compra` decimal(10,2)
,`precio_venta` decimal(10,2)
,`stock` int(11)
,`stock_minimo` int(11)
,`fecha_ingreso` date
,`fecha_vencimiento` date
,`estado` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_productos_bajo_stock`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_productos_bajo_stock` (
`id_producto` int(11)
,`producto` varchar(100)
,`categoria` varchar(100)
,`stock` int(11)
,`stock_minimo` int(11)
,`precio_venta` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_productos_vencidos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_productos_vencidos` (
`id_producto` int(11)
,`producto` varchar(100)
,`categoria` varchar(100)
,`stock` int(11)
,`fecha_vencimiento` date
,`precio_compra` decimal(10,2)
,`precio_venta` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_reporte_proveedores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_reporte_proveedores` (
`id_proveedor` int(11)
,`proveedor` varchar(100)
,`telefono` varchar(20)
,`correo` varchar(100)
,`compras_realizadas` bigint(21)
,`total_comprado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_ventas_detalladas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_ventas_detalladas` (
`id_venta` int(11)
,`fecha_venta` datetime
,`nombre_usuario` varchar(100)
,`apellido_usuario` varchar(100)
,`producto` varchar(100)
,`marca` varchar(100)
,`cantidad` int(11)
,`precio_unitario` decimal(10,2)
,`subtotal` decimal(10,2)
,`metodo_pago` varchar(50)
,`estado` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ganancias_productos`
--
DROP TABLE IF EXISTS `vw_ganancias_productos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_ganancias_productos`  AS SELECT `p`.`id_producto` AS `id_producto`, `p`.`nombre` AS `producto`, sum(`dv`.`cantidad`) AS `cantidad_vendida`, `p`.`precio_compra` AS `precio_compra`, `p`.`precio_venta` AS `precio_venta`, sum(`dv`.`cantidad` * (`p`.`precio_venta` - `p`.`precio_compra`)) AS `ganancia_total` FROM ((`detalle_venta` `dv` join `productos` `p` on(`dv`.`id_producto` = `p`.`id_producto`)) join `ventas` `v` on(`dv`.`id_venta` = `v`.`id_venta`)) WHERE `v`.`estado` = 'COMPLETADA' GROUP BY `p`.`id_producto`, `p`.`nombre`, `p`.`precio_compra`, `p`.`precio_venta` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_inventario_actual`
--
DROP TABLE IF EXISTS `vw_inventario_actual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_inventario_actual`  AS SELECT `p`.`id_producto` AS `id_producto`, `p`.`nombre` AS `producto`, `p`.`marca` AS `marca`, `c`.`nombre` AS `categoria`, `p`.`precio_compra` AS `precio_compra`, `p`.`precio_venta` AS `precio_venta`, `p`.`stock` AS `stock`, `p`.`stock_minimo` AS `stock_minimo`, `p`.`fecha_ingreso` AS `fecha_ingreso`, `p`.`fecha_vencimiento` AS `fecha_vencimiento`, `p`.`estado` AS `estado` FROM (`productos` `p` join `categorias` `c` on(`p`.`id_categoria` = `c`.`id_categoria`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_productos_bajo_stock`
--
DROP TABLE IF EXISTS `vw_productos_bajo_stock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_productos_bajo_stock`  AS SELECT `p`.`id_producto` AS `id_producto`, `p`.`nombre` AS `producto`, `c`.`nombre` AS `categoria`, `p`.`stock` AS `stock`, `p`.`stock_minimo` AS `stock_minimo`, `p`.`precio_venta` AS `precio_venta` FROM (`productos` `p` join `categorias` `c` on(`p`.`id_categoria` = `c`.`id_categoria`)) WHERE `p`.`stock` <= `p`.`stock_minimo` AND `p`.`estado` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_productos_vencidos`
--
DROP TABLE IF EXISTS `vw_productos_vencidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_productos_vencidos`  AS SELECT `p`.`id_producto` AS `id_producto`, `p`.`nombre` AS `producto`, `c`.`nombre` AS `categoria`, `p`.`stock` AS `stock`, `p`.`fecha_vencimiento` AS `fecha_vencimiento`, `p`.`precio_compra` AS `precio_compra`, `p`.`precio_venta` AS `precio_venta` FROM (`productos` `p` join `categorias` `c` on(`p`.`id_categoria` = `c`.`id_categoria`)) WHERE `p`.`fecha_vencimiento` is not null AND `p`.`fecha_vencimiento` < curdate() AND `p`.`estado` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_reporte_proveedores`
--
DROP TABLE IF EXISTS `vw_reporte_proveedores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_reporte_proveedores`  AS SELECT `pr`.`id_proveedor` AS `id_proveedor`, `pr`.`nombre` AS `proveedor`, `pr`.`telefono` AS `telefono`, `pr`.`correo` AS `correo`, count(`c`.`id_compra`) AS `compras_realizadas`, coalesce(sum(`c`.`total`),0) AS `total_comprado` FROM (`proveedores` `pr` left join `compras` `c` on(`pr`.`id_proveedor` = `c`.`id_proveedor`)) GROUP BY `pr`.`id_proveedor`, `pr`.`nombre`, `pr`.`telefono`, `pr`.`correo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_ventas_detalladas`
--
DROP TABLE IF EXISTS `vw_ventas_detalladas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_ventas_detalladas`  AS SELECT `v`.`id_venta` AS `id_venta`, `v`.`fecha_venta` AS `fecha_venta`, `u`.`nombre` AS `nombre_usuario`, `u`.`apellido` AS `apellido_usuario`, `p`.`nombre` AS `producto`, `p`.`marca` AS `marca`, `dv`.`cantidad` AS `cantidad`, `dv`.`precio_unitario` AS `precio_unitario`, `dv`.`subtotal` AS `subtotal`, `v`.`metodo_pago` AS `metodo_pago`, `v`.`estado` AS `estado` FROM (((`ventas` `v` join `usuarios` `u` on(`v`.`id_usuario` = `u`.`id_usuario`)) join `detalle_venta` `dv` on(`v`.`id_venta` = `dv`.`id_venta`)) join `productos` `p` on(`dv`.`id_producto` = `p`.`id_producto`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id_auditoria`),
  ADD KEY `fk_auditoria_usuarios` (`id_usuario`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id_caja`),
  ADD KEY `fk_cajas_usuario_apertura` (`id_usuario_apertura`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_compras_proveedores` (`id_proveedor`),
  ADD KEY `fk_compras_usuarios` (`id_usuario`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id_detalle_compra`),
  ADD KEY `fk_detalle_compra_compras` (`id_compra`),
  ADD KEY `fk_detalle_compra_productos` (`id_producto`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle_venta`),
  ADD KEY `fk_detalle_venta_ventas` (`id_venta`),
  ADD KEY `fk_detalle_venta_productos` (`id_producto`);

--
-- Indices de la tabla `movimientos_caja`
--
ALTER TABLE `movimientos_caja`
  ADD PRIMARY KEY (`id_movimiento_caja`),
  ADD KEY `fk_movimientos_caja_cajas` (`id_caja`),
  ADD KEY `fk_movimientos_caja_usuarios` (`id_usuario`);

--
-- Indices de la tabla `movimientos_inventario`
--
ALTER TABLE `movimientos_inventario`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD KEY `fk_movimientos_inventario_productos` (`id_producto`),
  ADD KEY `fk_movimientos_inventario_usuarios` (`id_usuario`),
  ADD KEY `fk_movimientos_inventario_compras` (`id_compra`);

--
-- Indices de la tabla `novedades_recepcion`
--
ALTER TABLE `novedades_recepcion`
  ADD PRIMARY KEY (`id_novedad`),
  ADD KEY `fk_novedades_recepcion` (`id_recepcion`),
  ADD KEY `fk_novedades_productos` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_productos_categorias` (`id_categoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `recepciones`
--
ALTER TABLE `recepciones`
  ADD PRIMARY KEY (`id_recepcion`),
  ADD KEY `fk_recepciones_compras` (`id_compra`),
  ADD KEY `fk_recepciones_usuarios` (`id_usuario`);

--
-- Indices de la tabla `recuperacion_contrasena`
--
ALTER TABLE `recuperacion_contrasena`
  ADD PRIMARY KEY (`id_recuperacion`),
  ADD KEY `fk_recuperacion_usuarios` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_ventas_usuarios` (`id_usuario`),
  ADD KEY `fk_ventas_cajas` (`id_caja`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id_auditoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id_detalle_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id_detalle_venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimientos_caja`
--
ALTER TABLE `movimientos_caja`
  MODIFY `id_movimiento_caja` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimientos_inventario`
--
ALTER TABLE `movimientos_inventario`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `novedades_recepcion`
--
ALTER TABLE `novedades_recepcion`
  MODIFY `id_novedad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recepciones`
--
ALTER TABLE `recepciones`
  MODIFY `id_recepcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recuperacion_contrasena`
--
ALTER TABLE `recuperacion_contrasena`
  MODIFY `id_recuperacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD CONSTRAINT `fk_auditoria_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD CONSTRAINT `fk_cajas_usuario_apertura` FOREIGN KEY (`id_usuario_apertura`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_proveedores` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`),
  ADD CONSTRAINT `fk_compras_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `fk_detalle_compra_compras` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`),
  ADD CONSTRAINT `fk_detalle_compra_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_venta_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `fk_detalle_venta_ventas` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`);

--
-- Filtros para la tabla `movimientos_caja`
--
ALTER TABLE `movimientos_caja`
  ADD CONSTRAINT `fk_movimientos_caja_cajas` FOREIGN KEY (`id_caja`) REFERENCES `cajas` (`id_caja`),
  ADD CONSTRAINT `fk_movimientos_caja_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `movimientos_inventario`
--
ALTER TABLE `movimientos_inventario`
  ADD CONSTRAINT `fk_movimientos_inventario_compras` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`),
  ADD CONSTRAINT `fk_movimientos_inventario_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `fk_movimientos_inventario_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `novedades_recepcion`
--
ALTER TABLE `novedades_recepcion`
  ADD CONSTRAINT `fk_novedades_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `fk_novedades_recepcion` FOREIGN KEY (`id_recepcion`) REFERENCES `recepciones` (`id_recepcion`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `recepciones`
--
ALTER TABLE `recepciones`
  ADD CONSTRAINT `fk_recepciones_compras` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`),
  ADD CONSTRAINT `fk_recepciones_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `recuperacion_contrasena`
--
ALTER TABLE `recuperacion_contrasena`
  ADD CONSTRAINT `fk_recuperacion_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_cajas` FOREIGN KEY (`id_caja`) REFERENCES `cajas` (`id_caja`),
  ADD CONSTRAINT `fk_ventas_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
