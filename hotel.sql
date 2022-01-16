-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2022 a las 20:54:31
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_lastname` varchar(255) DEFAULT NULL,
  `client_age` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_hotels`
--

CREATE TABLE `tbl_hotels` (
  `id` int(11) NOT NULL,
  `hotelName` varchar(255) DEFAULT NULL,
  `categoria` int(10) UNSIGNED DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_hotels`
--

INSERT INTO `tbl_hotels` (`id`, `hotelName`, `categoria`, `precio`, `picture`, `createdAt`, `updatedAt`) VALUES
(1, 'Hotel Panama', 1, 45.78, '[\"https://t-cf.bstatic.com/xdata/images/hotel/square200/101081783.webp?k=eb05cdd78f6eb3a633d6d08221f0c6efbcff38c30c81d9f3e3baa6f5e13e98f6&o=&s=1\"]', '2022-01-16 17:24:08', '2022-01-16 17:24:08'),
(2, 'Hotel Riu', 4, 45.78, '[\"https://t-cf.bstatic.com/xdata/images/hotel/square200/223971049.webp?k=3c1f1126f259d672b467f9445660261c261eae98bbe447eb38bcd471092257ef&o=&s=1\"]', '2022-01-16 17:24:19', '2022-01-16 17:24:19'),
(3, 'Hotel Continental', 4, 95.78, '[\"https://t-cf.bstatic.com/xdata/images/hotel/square200/291633354.webp?k=20fe9594a5c89d76bc28bf302fadd51c75397e5bb2968e725fe78490d80235fd&o=&s=1\"]', '2022-01-16 17:24:35', '2022-01-16 17:24:35'),
(4, 'Hotel Plya Blanca', 3, 106.78, '[\"https://t-cf.bstatic.com/xdata/images/hotel/square200/174444786.webp?k=6e0016dfa74de76ddbc9ef7005cb74d048a9a71de6e9512ebcf2370c76764efd&o=&s=1\"]', '2022-01-16 17:25:01', '2022-01-16 17:25:01'),
(5, 'Hotel Sortis', 5, 94.58, '[\"https://t-cf.bstatic.com/xdata/images/hotel/square200/185909985.webp?k=3f0e62980a277d9cd11ad6b2b050550442e3c7ee7a6627d195a8b8bf94900e31&o=&s=1\"]', '2022-01-16 17:25:37', '2022-01-16 17:25:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_hotel_coments`
--

CREATE TABLE `tbl_hotel_coments` (
  `id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `hotel_id` int(10) UNSIGNED DEFAULT NULL,
  `coment` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_hotel_coments`
--

INSERT INTO `tbl_hotel_coments` (`id`, `client_id`, `hotel_id`, `coment`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 1, 'Recomendado por sus platillos', '2022-01-16 18:34:53', '2022-01-16 18:34:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_hotels`
--
ALTER TABLE `tbl_hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_hotel_coments`
--
ALTER TABLE `tbl_hotel_coments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_hotels`
--
ALTER TABLE `tbl_hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_hotel_coments`
--
ALTER TABLE `tbl_hotel_coments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
