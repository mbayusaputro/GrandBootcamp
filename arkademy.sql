-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 Nov 2018 pada 12.07
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arkademy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `created_date`) VALUES
(1, 'Sabun Wangi', 1, '2018-11-10 18:08:15'),
(2, 'Minuman Cola', 2, '2018-11-10 18:08:15'),
(3, 'Prenagon Gold', 3, '2018-11-10 18:08:15'),
(5, 'Aqua', 2, '2018-11-10 18:08:15'),
(6, 'The Botol', 2, '2018-11-10 18:08:15'),
(7, 'Sampo', 1, '2018-11-10 18:08:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_date`) VALUES
(1, 'Peralatan Mandi', '2018-11-10 18:05:38'),
(2, 'Minuman Kemasan', '2018-11-10 18:05:44'),
(3, 'Produk Susu', '2018-11-10 18:05:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
