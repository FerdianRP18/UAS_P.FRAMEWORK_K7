-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Agu 2024 pada 18.55
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
-- Database: `po_sumber_jaya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beli_tiket`
--

CREATE TABLE `beli_tiket` (
  `id_tiket` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `plat` varchar(10) NOT NULL,
  `jadwal` datetime NOT NULL,
  `rute` varchar(255) NOT NULL,
  `kode_tiket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `beli_tiket`
--

INSERT INTO `beli_tiket` (`id_tiket`, `username`, `email`, `plat`, `jadwal`, `rute`, `kode_tiket`) VALUES
(1, 'dosen', 'dos@gmail.com', 'L6754PK', '2024-08-11 11:51:00', 'sby - mdr', '7299F450'),
(2, 'dosen', 'dos@gmail.com', 'L6754PK', '2024-08-11 11:51:00', 'sby - mdr', 'E167071C'),
(3, 'mahasiswa', 'zetsu1802@gmail.com', 'L6754PK', '2024-08-11 11:51:00', 'sby - mdr', 'E3118649'),
(4, 'mahasiswa', 'zetsu1802@gmail.com', 'L6754PK', '2024-08-11 11:51:00', 'sby - mdr', '13591991'),
(5, 'mahasiswa', 'zetsu1802@gmail.com', 'L6754PK', '2024-08-11 11:51:00', 'sby - mdr', '7CED3807'),
(6, 'mahasiswa', 'zetsu1802@gmail.com', 'L6754PK', '2024-08-11 11:51:00', 'sby - mdr', 'AB87BA72'),
(7, 'dosen', 'd@gmail.com', 'L6754PK', '2024-08-11 11:51:00', 'sby - mdr', 'ED40AF56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus`
--

CREATE TABLE `bus` (
  `id` int(5) UNSIGNED NOT NULL,
  `plat` varchar(10) NOT NULL,
  `jenis_bus` varchar(50) NOT NULL,
  `jumlah_kursi` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bus`
--

INSERT INTO `bus` (`id`, `plat`, `jenis_bus`, `jumlah_kursi`, `created_at`, `updated_at`) VALUES
(1, 'L8969YU', '123', 21, '2024-08-09 02:27:38', '2024-08-09 02:27:38'),
(3, 'L6754PK', 'Hyundai', 25, '2024-08-09 03:07:30', '2024-08-09 03:07:58'),
(4, 'L8969YU', 'L3987LP', 90, '2024-08-09 03:59:53', '2024-08-09 03:59:53'),
(5, 'L8897YT', 'MERCY', 20, '2024-08-10 06:30:22', '2024-08-10 06:30:22'),
(6, 'L8969YU', 'Mercy', 22, '2024-08-10 06:43:32', '2024-08-10 06:43:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-08-09-123456', 'App\\Database\\Migrations\\CreateBusTable', 'default', 'App', 1723169493, 1),
(2, '2024-08-09-035354', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1723175678, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute_jadwal`
--

CREATE TABLE `rute_jadwal` (
  `id_rute_jadwal` int(5) UNSIGNED NOT NULL,
  `bus_id` int(5) UNSIGNED NOT NULL,
  `plat` varchar(10) DEFAULT NULL,
  `jenis_bus` varchar(50) DEFAULT NULL,
  `rute_berangkat` varchar(255) DEFAULT NULL,
  `rute_tujuan` varchar(255) DEFAULT NULL,
  `jadwal` datetime DEFAULT NULL,
  `jumlah_kursi_tersedia` int(5) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rute_jadwal`
--

INSERT INTO `rute_jadwal` (`id_rute_jadwal`, `bus_id`, `plat`, `jenis_bus`, `rute_berangkat`, `rute_tujuan`, `jadwal`, `jumlah_kursi_tersedia`, `created_at`, `updated_at`) VALUES
(5, 0, 'L8969YU', NULL, 'sby', 'jkt', '2024-08-11 08:52:00', 18, '2024-08-10 09:00:39', '2024-08-10 15:44:21'),
(6, 0, 'L6754PK', NULL, 'sby', 'sdj', '2024-08-20 09:00:00', 25, '2024-08-10 09:01:05', '2024-08-10 09:01:05'),
(7, 0, 'L6754PK', NULL, 'sby', 'mdr', '2024-08-11 11:51:00', 16, '2024-08-10 11:51:44', '2024-08-10 11:51:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user','petugas') NOT NULL,
  `umur` int(3) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `alamat` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `umur`, `jenis_kelamin`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'mahasiswa', 'zetsu1802@gmail.com', '$2y$10$vdaDblxunj0Q5EGvMjldleqsOVf1Q/Tihwj5r6YlpX0K/DGWWX2z.', 'user', 23, 'pria', 'kalimas', '2024-08-09 19:40:49', '2024-08-09 19:40:49'),
(2, 'dosen', 'd@gmail.com', '$2y$10$wRLM8LfJ8gzKijDoGLqVu.aHducKKJzSottA1VvE5K6P6NofvoQ7S', 'petugas', 12, 'pria', 'sby', '2024-08-09 20:45:54', '2024-08-10 17:08:01'),
(3, 'dosen', 'dos@gmail.com', '$2y$10$WG8/ykWnAF2Z0WdWldd1S..osz8mA/b7PPlx5PLnK.ZpjItmkX0BC', 'admin', 12, 'pria', 'qwert', '2024-08-09 20:48:40', '2024-08-11 23:41:34'),
(4, 'mahasiswa', 'm@gmail.com', '$2y$10$Nvfd.CzOAB1uNd5hQaZpwuPEJs7uWMZ3obtNsFq8BNWomR0H9lF2W', 'admin', 23, 'pria', 'surabaya', '2024-08-10 10:14:01', '2024-08-10 17:02:46'),
(5, 'Budi', 'b@gmail.com', '$2y$10$W8X8ednbcdt6fc0RDk2K8uD4alHksL3/pTjcvWT3IfL4Gl5zHCRrC', 'user', 12, 'pria', '12', '2024-08-10 23:16:50', '2024-08-10 23:16:50'),
(6, 'Budi2', 'b2@gmail.com', '$2y$10$KiGsecTlose2Go6kQ8ZMIuDw951Yo0EqE/MkFYJc./MuPw2fzd1Km', 'user', 12, 'pria', '12', '2024-08-10 23:22:30', '2024-08-10 23:22:30'),
(7, 'Penumpang', 'p@gmail.com', '$2y$10$te4iZKc4rRlSHzGtAcxHROJZcyPpN1/nRNyEN5XNQiJ9rlKc4je3O', 'user', 12, 'pria', 'ponorogo', '2024-08-11 23:20:36', '2024-08-11 23:20:36'),
(8, 'Penumpang', 'pe@gmail.com', '$2y$10$WtVPuE3y0O4g6OSxKNrbluSOJJzoSecRg5QiPzy1CbTEbIcK61Kda', 'user', 120, 'pria', '12', '2024-08-11 23:25:28', '2024-08-11 23:25:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi_tiket`
--

CREATE TABLE `verifikasi_tiket` (
  `id_verifikasi` int(11) NOT NULL,
  `nama_petugas` varchar(100) DEFAULT NULL,
  `kode_tiket` varchar(8) DEFAULT NULL,
  `createdAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `verifikasi_tiket`
--

INSERT INTO `verifikasi_tiket` (`id_verifikasi`, `nama_petugas`, `kode_tiket`, `createdAt`) VALUES
(1, 'dosen', '7299F450', '2024-08-10 17:38:40'),
(2, 'dosen', '7299F450', '2024-08-10 17:43:51'),
(3, 'dosen', '7299F450', '2024-08-10 17:45:22'),
(4, 'dosen', '7299F450', '2024-08-10 17:45:56'),
(5, 'dosen', '7299F450', '2024-08-10 17:53:27'),
(6, 'dosen', '7299F450', '2024-08-11 23:34:41'),
(7, 'dosen', '7299F450', '2024-08-11 23:34:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beli_tiket`
--
ALTER TABLE `beli_tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD UNIQUE KEY `kode_tiket` (`kode_tiket`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rute_jadwal`
--
ALTER TABLE `rute_jadwal`
  ADD PRIMARY KEY (`id_rute_jadwal`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `verifikasi_tiket`
--
ALTER TABLE `verifikasi_tiket`
  ADD PRIMARY KEY (`id_verifikasi`),
  ADD KEY `kode_tiket` (`kode_tiket`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beli_tiket`
--
ALTER TABLE `beli_tiket`
  MODIFY `id_tiket` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rute_jadwal`
--
ALTER TABLE `rute_jadwal`
  MODIFY `id_rute_jadwal` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `verifikasi_tiket`
--
ALTER TABLE `verifikasi_tiket`
  MODIFY `id_verifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `beli_tiket`
--
ALTER TABLE `beli_tiket`
  ADD CONSTRAINT `beli_tiket_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_tiket`
--
ALTER TABLE `verifikasi_tiket`
  ADD CONSTRAINT `verifikasi_tiket_ibfk_1` FOREIGN KEY (`kode_tiket`) REFERENCES `beli_tiket` (`kode_tiket`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
