-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2024 pada 12.46
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderingdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_pesanan`
--

CREATE TABLE `daftar_pesanan` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_date` date NOT NULL,
  `status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar_pesanan`
--

INSERT INTO `daftar_pesanan` (`id`, `customer_name`, `total_price`, `payment_method`, `payment_date`, `status`) VALUES
(3, 'yyn', 20000.00, 'Cash', '2024-11-23', 'Menunggu Pembayaran'),
(4, 'Yayan Mulyana', 10000.00, 'Cash', '2024-11-23', 'Menunggu Pembayaran'),
(5, 'Yayan Mulyana', 10000.00, 'Cash', '2024-11-23', 'Menunggu Pembayaran'),
(6, 'Yayan', 40000.00, 'Cash', '2024-11-24', 'Menunggu Pembayaran'),
(7, 'uus', 40000.00, 'Cash', '2024-11-24', 'Menunggu Pembayaran'),
(8, 'uus', 40000.00, 'Cash', '2024-11-24', 'Menunggu Pembayaran'),
(9, 'YAyan', 30000.00, 'Cash', '2024-11-24', 'Menunggu Pembayaran'),
(10, 'Yayan Mulyana ', 20000.00, 'Cash', '2024-11-25', 'Menunggu Pembayaran'),
(11, 'Yayan', 10000.00, 'Cash', '2024-11-25', 'Menunggu Pembayaran'),
(12, 'azam', 10000.00, 'Cash', '2024-11-25', 'Menunggu Pembayaran'),
(13, 'Yyan', 20000.00, 'Cash', '2024-11-27', 'Menunggu Pembayaran'),
(14, 'yahs', 20000.00, 'Cash', '2024-11-28', 'Menunggu Pembayaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id_makanan` int(11) NOT NULL,
  `nama_makanan` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`id_makanan`, `nama_makanan`, `harga`, `stok`) VALUES
(1, 'Nasi Goreng', 10000, 27),
(2, 'Bakso', 10000, 2),
(3, 'Nasi Uduk', 15000, 1),
(4, 'Batagor', 5000, 20),
(5, 'Cireng', 5000, 25),
(6, 'Ayam Geprek', 10000, 10),
(7, 'Bubur Ayam', 8000, 20),
(8, 'Seblak', 15000, 3),
(9, 'Mie Goreng', 10000, 12),
(10, 'Mie Rebus', 10000, 8),
(11, 'Ayam Katsu', 10000, 7),
(12, 'Nasi Padang', 10000, 6),
(13, 'Kare', 10000, 10),
(14, 'Sushi', 10000, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `menu_name`, `quantity`, `price`, `order_date`, `payment_method`) VALUES
(51, 'Nasi Goreng', 2, 20000.00, '2024-11-22 09:10:50', 'Cash'),
(52, 'Nasi Goreng', 2, 20000.00, '2024-11-22 09:10:58', 'Cash'),
(53, 'Bakso', 2, 20000.00, '2024-11-22 09:11:46', 'Cash'),
(54, 'Nasi Goreng', 2, 20000.00, '2024-11-22 09:13:18', 'Cash'),
(55, 'Nasi Goreng', 2, 20000.00, '2024-11-22 09:13:24', 'Cash'),
(56, 'Seblak', 2, 30000.00, '2024-11-22 09:13:24', 'Cash'),
(57, 'Bakso', 2, 20000.00, '2024-11-22 09:19:02', 'Cash'),
(58, 'Bakso', 2, 20000.00, '2024-11-22 09:19:08', 'Cash'),
(59, 'Nasi Goreng', 2, 20000.00, '2024-11-22 09:25:23', 'Cash'),
(60, 'Nasi Goreng', 3, 30000.00, '2024-11-22 09:26:47', 'Cash'),
(61, 'Nasi Goreng', 2, 20000.00, '2024-11-22 09:37:04', 'Cash'),
(62, 'Nasi Goreng', 3, 30000.00, '2024-11-22 14:47:33', 'Cash'),
(63, 'Bakso', 2, 20000.00, '2024-11-22 14:52:04', 'Cash'),
(64, 'Nasi Uduk', 3, 45000.00, '2024-11-22 14:52:04', 'Cash'),
(65, 'Nasi Uduk', 2, 30000.00, '2024-11-22 15:14:36', 'Cash'),
(66, 'Mie Rebus', 2, 20000.00, '2024-11-22 15:14:36', 'Cash'),
(67, 'Bakso', 1, 10000.00, '2024-11-22 15:21:33', 'Cash'),
(68, 'Nasi Uduk', 3, 45000.00, '2024-11-22 15:21:33', 'Cash'),
(69, 'Batagor', 2, 10000.00, '2024-11-22 15:21:33', 'Cash'),
(70, 'Nasi Goreng', 2, 20000.00, '2024-11-22 15:40:10', 'Cash'),
(71, 'Nasi Uduk', 1, 15000.00, '2024-11-22 15:40:10', 'Cash'),
(72, 'Nasi Goreng', 2, 20000.00, '2024-11-22 15:40:59', 'Cash'),
(73, 'Nasi Goreng', 2, 20000.00, '2024-11-22 15:45:41', 'Cash'),
(74, 'Nasi Uduk', 2, 30000.00, '2024-11-22 15:45:41', 'Cash'),
(75, 'Batagor', 1, 5000.00, '2024-11-22 15:45:41', 'Cash'),
(76, 'Batagor', 1, 5000.00, '2024-11-22 15:46:52', 'Cash'),
(77, 'Bakso', 2, 20000.00, '2024-11-22 15:48:17', 'Cash'),
(78, 'Nasi Goreng', 1, 10000.00, '2024-11-22 15:53:16', 'Cash'),
(79, 'Nasi Uduk', 1, 15000.00, '2024-11-22 15:53:16', 'Cash'),
(80, 'Bakso', 1, 10000.00, '2024-11-22 15:54:29', 'Cash'),
(81, 'Nasi Goreng', 1, 10000.00, '2024-11-22 15:56:46', 'Cash'),
(82, 'Nasi Uduk', 1, 15000.00, '2024-11-22 15:56:46', 'Cash'),
(83, 'Nasi Goreng', 1, 10000.00, '2024-11-22 15:59:29', 'Cash'),
(84, 'Nasi Uduk', 1, 15000.00, '2024-11-22 15:59:29', 'Cash'),
(85, 'Nasi Uduk', 1, 15000.00, '2024-11-22 16:00:30', 'Cash'),
(86, 'Nasi Goreng', 2, 20000.00, '2024-11-22 16:01:06', 'Cash'),
(87, 'Nasi Goreng', 2, 20000.00, '2024-11-22 16:01:11', 'Cash'),
(88, 'Nasi Uduk', 1, 15000.00, '2024-11-22 16:01:11', 'Cash'),
(89, 'Nasi Goreng', 2, 20000.00, '2024-11-22 16:01:47', 'Cash'),
(90, 'Nasi Uduk', 1, 15000.00, '2024-11-22 16:01:47', 'Cash'),
(91, 'Nasi Goreng', 3, 30000.00, '2024-11-22 16:03:25', 'Cash'),
(92, 'Bakso', 3, 30000.00, '2024-11-22 16:03:25', 'Cash'),
(93, 'Nasi Goreng', 2, 20000.00, '2024-11-22 16:12:37', 'Cash'),
(94, 'Bakso', 2, 20000.00, '2024-11-22 16:12:37', 'Cash'),
(95, 'Bakso', 2, 20000.00, '2024-11-22 16:34:59', 'Cash'),
(96, 'Batagor', 1, 5000.00, '2024-11-22 16:34:59', 'Cash'),
(97, 'Nasi Goreng', 1, 10000.00, '2024-11-22 16:38:43', 'Cash'),
(98, 'Nasi Goreng', 1, 10000.00, '2024-11-22 16:42:55', 'Cash'),
(99, 'Bakso', 1, 10000.00, '2024-11-22 16:43:39', 'Cash'),
(100, 'Nasi Uduk', 1, 15000.00, '2024-11-22 16:43:39', 'Cash'),
(101, 'Batagor', 4, 20000.00, '2024-11-22 16:43:39', 'Cash'),
(102, 'Seblak', 2, 30000.00, '2024-11-22 20:56:25', 'Cash'),
(103, 'Nasi Goreng', 2, 20000.00, '2024-11-22 20:57:06', 'Cash'),
(104, 'Nasi Goreng', 2, 20000.00, '2024-11-22 21:10:05', 'Cash'),
(105, 'Nasi Goreng', 2, 20000.00, '2024-11-22 21:13:47', 'Cash'),
(106, 'Bubur Ayam', 2, 16000.00, '2024-11-22 21:24:34', 'Cash'),
(107, 'Nasi Goreng', 2, 20000.00, '2024-11-22 21:51:14', 'Cash'),
(108, 'Seblak', 2, 30000.00, '2024-11-23 10:28:46', 'Cash'),
(109, 'Bakso', 2, 20000.00, '2024-11-23 10:31:12', 'Cash'),
(110, 'Nasi Goreng', 2, 20000.00, '2024-11-23 10:46:05', 'Cash'),
(111, 'Nasi Goreng', 2, 20000.00, '2024-11-23 10:50:31', 'Cash'),
(112, 'Nasi Goreng', 2, 20000.00, '2024-11-23 10:55:12', 'Cash'),
(113, 'Nasi Goreng', 2, 20000.00, '2024-11-23 10:59:54', 'Cash'),
(114, 'Nasi Goreng', 16, 160000.00, '2024-11-23 11:27:32', 'Cash'),
(115, 'Nasi Goreng', 4, 40000.00, '2024-11-23 11:36:51', 'Cash'),
(116, 'Sushi', 3, 30000.00, '2024-11-23 11:59:23', 'Cash'),
(117, 'Bakso', 1, 10000.00, '2024-11-23 13:18:02', 'Cash'),
(118, 'Nasi Uduk', 1, 15000.00, '2024-11-23 13:18:02', 'Cash'),
(119, 'Nasi Goreng', 2, 20000.00, '2024-11-23 13:47:36', 'Cash'),
(120, 'Nasi Uduk', 2, 30000.00, '2024-11-23 14:00:29', 'Cash'),
(121, 'Nasi Goreng', 5, 50000.00, '2024-11-23 14:31:27', 'Cash'),
(122, 'Nasi Goreng', 3, 30000.00, '2024-11-23 14:32:28', 'Cash'),
(123, 'Nasi Goreng', 3, 30000.00, '2024-11-23 14:32:37', 'Cash'),
(124, 'Nasi Goreng', 2, 20000.00, '2024-11-23 14:36:43', 'Cash'),
(125, 'Nasi Goreng', 1, 10000.00, '2024-11-23 14:42:35', 'Cash'),
(126, 'Sushi', 1, 10000.00, '2024-11-23 19:53:51', 'Cash'),
(127, 'Nasi Goreng', 3, 30000.00, '2024-11-23 21:44:03', 'Cash'),
(128, 'Nasi Goreng', 4, 40000.00, '2024-11-24 13:52:07', 'Cash'),
(129, 'Sushi', 3, 30000.00, '2024-11-24 13:54:38', 'Cash'),
(130, 'Nasi Goreng', 1, 10000.00, '2024-11-24 14:36:13', 'Cash'),
(131, 'Nasi Uduk', 1, 15000.00, '2024-11-24 14:36:13', 'Cash'),
(132, 'Batagor', 1, 5000.00, '2024-11-24 14:36:13', 'Cash'),
(133, 'Cireng', 1, 5000.00, '2024-11-24 14:36:13', 'Cash'),
(134, 'Nasi Goreng', 1, 10000.00, '2024-11-24 15:36:16', 'Cash'),
(135, 'Bakso', 1, 10000.00, '2024-11-24 15:36:16', 'Cash'),
(136, 'Nasi Uduk', 1, 15000.00, '2024-11-24 15:36:16', 'Cash'),
(137, 'Batagor', 1, 5000.00, '2024-11-24 15:36:16', 'Cash'),
(138, 'Nasi Goreng', 1, 10000.00, '2024-11-24 15:47:45', 'Cash'),
(139, 'Bakso', 1, 10000.00, '2024-11-24 15:47:45', 'Cash'),
(140, 'Nasi Uduk', 1, 15000.00, '2024-11-24 15:47:45', 'Cash'),
(141, 'Batagor', 1, 5000.00, '2024-11-24 15:47:45', 'Cash'),
(142, 'Seblak', 2, 30000.00, '2024-11-24 19:07:07', 'Cash'),
(143, 'Nasi Uduk', 1, 15000.00, '2024-11-25 07:52:19', 'Cash'),
(144, 'Nasi Goreng', 2, 20000.00, '2024-11-25 07:53:27', 'Cash'),
(145, 'Cireng', 2, 10000.00, '2024-11-25 08:11:48', 'Cash'),
(146, 'Cireng', 2, 10000.00, '2024-11-25 08:14:41', 'Cash'),
(147, 'Nasi Goreng', 3, 30000.00, '2024-11-27 18:35:46', 'Cash'),
(148, 'Bakso', 2, 20000.00, '2024-11-27 18:46:25', 'Cash'),
(149, 'Bakso', 2, 20000.00, '2024-11-27 18:46:26', 'Cash'),
(150, 'Bakso', 2, 20000.00, '2024-11-27 18:46:54', 'Cash'),
(151, 'Nasi Uduk', 2, 30000.00, '2024-11-27 18:46:54', 'Cash'),
(152, 'Batagor', 2, 10000.00, '2024-11-27 18:47:08', 'Cash'),
(153, 'Bakso', 2, 20000.00, '2024-11-27 19:01:03', 'Cash'),
(154, 'Nasi Goreng', 1, 10000.00, '2024-11-28 14:42:53', 'Cash'),
(155, 'Nasi Goreng', 2, 20000.00, '2024-11-28 15:53:38', 'Cash');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `npm` varchar(15) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama_lengkap`, `npm`, `alamat_email`, `kata_sandi`) VALUES
(1, 'Yayan Mulyana', '2310631170057', 'yayanmaulyana845@gmail.com', '73a0d1ee72244a7549bb0b105c4b08661af75d6df4d9c1df829c5ed79172a8e4'),
(2, 'yayan', '1111111111111', 'yayanggwp180904@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(3, 'yayan ganteng', '13971892371', 'yayan123@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(4, 'ysyavagvhasvh', '812937182931', 'asyuagsasg@gmail.com', '256007914540abd544b90732125fffafdb5a6ccb7792e6213bdb2125cb6b974b'),
(5, '6fytfyfytfy', '565656566', '6fytfyfytfy@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(6, 'contoh', '7326427', 'contoh@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(7, 'uus', '1253163', 'uus@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(8, 'yayan mulyana', '2310631170067', 'yayan@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(9, 'uus', '2310631170033', 'uus77@gmail.com', 'df9ebab69dfb29fe91e8a1ffa37255e3e264a72e7d63385bfe34bd76a701790b'),
(11, 'yayan mulyana', '23108782374', 'yayan863178@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(13, 'yayan my', '2310638372', 'yayanmy@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(14, 'azam', '231973212', 'azam@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(15, 'test', '182378127', 'test@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(16, 'yayangantenf', '7328732', 'yayangantenf123@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_pesanan`
--
ALTER TABLE `daftar_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makanan`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alamat_email` (`alamat_email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_pesanan`
--
ALTER TABLE `daftar_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
