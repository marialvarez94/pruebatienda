-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 04:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tienda_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Construccion'),
(2, 'Equipos'),
(3, 'Herramientas'),
(4, 'Hogar'),
(5, 'Tecnologia');

-- --------------------------------------------------------

--
-- Table structure for table `lineas_pedidos`
--

CREATE TABLE `lineas_pedidos` (
  `id` int(255) NOT NULL,
  `pedido_id` int(255) NOT NULL,
  `producto_id` int(255) NOT NULL,
  `unidades` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lineas_pedidos`
--

INSERT INTO `lineas_pedidos` (`id`, `pedido_id`, `producto_id`, `unidades`) VALUES
(1, 1, 4, 1),
(2, 2, 4, 1),
(3, 3, 4, 1),
(4, 3, 6, 1),
(5, 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `coste` float(200,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `provincia`, `localidad`, `direccion`, `coste`, `estado`, `fecha`, `hora`) VALUES
(1, 2, 'barranquilla', 'barranquilla', 'cra 29', 50000.00, 'confirm', '2020-03-04', '14:28:47'),
(2, 3, 'barranquilla', 'barranquilla', 'cra 29 #51', 50000.00, 'confirm', '2020-03-04', '14:30:39'),
(3, 3, 'barranquilla', 'barranquilla', 'cra 29 #51-68', 150000.00, 'confirm', '2020-03-04', '14:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` float(100,2) NOT NULL,
  `stock` int(255) NOT NULL,
  `oferta` varchar(2) DEFAULT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `descripcion`, `precio`, `stock`, `oferta`, `fecha`, `imagen`) VALUES
(2, 3, 'Destornillador punta pala', 'Destornillador pro punta pala 7/32` x 3 69-101 stanley', 4342.00, 12, NULL, '2020-03-03', 'destornillador2.jpg'),
(3, 3, 'Destornillador punta phillips', 'Destornillador punta phillips no.0 red1/8 X 2.1/2` ue X 12 lufkin - ref:64393003', 3901.00, 5, NULL, '2020-03-03', 'destornillador.jpg'),
(4, 1, 'Cemento pl. 285 x 120 ml', 'Cemento pl. 285 x 120 ml pegatex 0402231', 5401.00, 5, NULL, '2020-03-03', 'cemento2.jpg'),
(5, 1, 'Cemento gris argos x 1 kilo', 'Cemento gris argos x 1 kilos solo en cartagena – bolívar.\r\n\r\nCemento gris argos x 1 kilos solo en cartagena – bolívar\r\n\r\nEl Cemento Argos de Uso General es el resultado de la molienda de clínker, yeso y adiciones minerales, en las proporciones óptimas para la obtención de un moderado desarrollo de resistencias tempranas', 1035.00, 7, NULL, '2020-03-03', 'cemento.jpg'),
(6, 1, 'Alambre n12 awg azul X 50m', 'Alambre n12 awg azul X 50m thhn/thwn 600v 90c procables 31353080001 ue1', 54345.00, 20, NULL, '2020-03-03', 'alambre1.jpg'),
(7, 3, 'Juego destornillador x 6', 'Juego destornillador x 6 amarillo negro stanprof caja x 50', 5768.00, 20, NULL, '2020-04-24', 'destornilladorx6.jpg'),
(8, 4, 'Cocina parma 1 50 chantilli', 'COCINA PARMA 1.50CHANTILLÍ DER 4 GAS 3P\r\nCocina Parma 1.50 Chantillí Derecha 4 Puestos Gas Incluye Mueble Superior, Inferior, Mesón  Acero Inoxidable 221811 Socoda.\r\nDiseñada para crear un espacio más cómodo y práctico, embellecido por la elegancia del color.', 1081877.00, 15, NULL, '2020-04-24', 'hogar1.jpg'),
(9, 4, 'Cocina 1.80', 'Cocina 1.80 mueble superior e inferior opal humo incluye campana y cubierta 4 fogones encendido elctronico', 2169994.00, 25, NULL, '2020-04-24', 'hogar2.jpg'),
(10, 5, 'Celular Samsung Galaxy A10S Negro', 'Pantalla: 6.2\"\r\nCámara trasera: 13MP + 2MP\r\nCámara frontal: 8MP\r\nMemoria RAM: 2GB', 508380.00, 6, NULL, '2020-04-24', 'celular.jpg'),
(11, 2, 'Compresor 3/4 hp', 'Compresor 3/4 hp con tanque 6 lt stanprof', 400768.00, 30, NULL, '2020-04-24', 'comprensor1.jpg'),
(12, 2, 'ASPIRADORA 20L', 'ASPIRADORA 20L SK520 SECO/HUMEDO 1200w  12V SUKRA\r\n\r\nImprescindibles: los aspiradores en seco y húmedo pueden hacer frente a cualquier tipo de suciedad; no importa si es seca, húmeda o líquida: los equipos adecuados de SUKRA lo aspiran todo. De este modo, puede utilizar los aspiradores simplemente como aspiradores en húmedo o tan solo como aspiradores en seco.', 40.00, 229448, NULL, '2020-04-24', 'aspiradora.jpg'),
(13, 2, 'Motosierra a gasolina', 'Motosierra a gasolina 24 pulg 2.4kw Sukra Proline  58cc , Ideales para trabajos en exteriores. Gracias a su diseño ergonómico que permite una fácil operación para los usuarios.', 337998.00, 25, NULL, '2020-04-24', 'motosierra.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `rol`, `imagen`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', '123456', 'admin', NULL),
(2, 'maria', 'alvarez', 'maria@gmail.com', '$2y$04$M8orYvhK881F/32oNc6/o.ZLohiQKdkZoN4Is/jhWG3ySMqcpe/S2', 'admin', NULL),
(3, 'ana', 'navarro', 'ana@gmail.com', '$2y$04$OcM9cqF1mY89V/U1x8BHrOcSLxyJRwgUaqn6TvIrfIba.Ibx8KrrC', 'user', NULL),
(18, 'ludis', 'perez', 'ludis@gmail.com', '$2y$04$4KPPMJdlx6ijtOtrIZKPx./e4.9BPX2vGYI2moNl33H9DHDJa8tdK', 'user', NULL),
(19, 'camila', 'navarro', 'camila@gmail.com', '$2y$04$SZQOpw58p9lL3jb17Nxe/Ob1GtQloc.H0HxxzI.71jEttIVdtqCei', 'admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_linea_pedido` (`pedido_id`),
  ADD KEY `fk_linea_producto` (`producto_id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_usuario` (`usuario_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_categoria` (`categoria_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD CONSTRAINT `fk_linea_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `fk_linea_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Constraints for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
