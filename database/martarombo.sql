-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2022 pada 10.54
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martarombo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE `relasi` (
  `id` int(100) NOT NULL,
  `Nama Marga` varchar(100) NOT NULL,
  `Relasi Marga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`id`, `Nama Marga`, `Relasi Marga`) VALUES
(1, 'Hutagalung', 'Padan: Hasibuan'),
(2, 'Pangaribuan', 'Padan: Hutapea'),
(3, 'Siregar', 'Padan: Nainggolan'),
(4, 'Sinaga Bonor Suhutnihuta', 'Padan: Situmorang, pandeang'),
(5, 'Simanungkalit', 'Padan: Banjarnahor'),
(6, 'Pasaribu', 'Padan: Damanik'),
(7, 'Silalahi', 'Padan: Tampubolon'),
(8, 'Sitoruspane', 'Padan: Nababan'),
(9, 'Manurung', 'Padan: Hutajulu'),
(10, 'Purba', 'Padan: LumbanBatu'),
(11, 'Panjaitan', 'Padan: Sibuea, Sinambela'),
(12, 'Siagian', 'Padan: Marpaung'),
(13, 'Naibaho', 'Padan: Lumbantoruan'),
(14, 'Sihotang', 'Padan: Toga Marbun'),
(15, 'Sitorus', 'Padan: Hutajulu'),
(16, 'Tampubolon', 'Padan: Sitompul, Silalahi'),
(17, 'Hutabarat', 'Padan: Silaban Sitio'),
(18, 'Simamora Debataraja', 'Padan: Manurung, Lumbangaol'),
(19, 'Sihombing Lumbantoruan', 'Padan: Naibaho');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rumpun`
--

CREATE TABLE `rumpun` (
  `id` int(100) NOT NULL,
  `Nama Rumpun` varchar(100) NOT NULL,
  `Nama Marga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rumpun`
--

INSERT INTO `rumpun` (`id`, `Nama Rumpun`, `Nama Marga`) VALUES
(1, 'Si Raja Sonang', 'Samosir, Gultom, Harianja, Pakpahan, Sitinjak'),
(2, 'Si Raja Oloan', 'Naibaho, Sinambela, Sihotang, Bakkara, Sihite, Simanullang'),
(3, 'SonakMalela', 'Simangunsong, Napitupulu, Marpaung, Pardede'),
(4, 'Tuandibagarna', 'Panjaitan, Siagian, Silitonga, Sianipar, Pardosi'),
(5, 'Nairasaon', 'Sitorus, Sirait, Butar - Butar, Manurung'),
(6, 'Raja Naipospos', 'Sibagariang, Hutauruk, Simanungkalit, Situmeang, Marbun'),
(7, 'Tuan Somanimbil', 'Hutagaol, Simanjuntak, Siahaan'),
(8, 'Sipaettua', 'Hutahaean, Aruan, Hutajulu'),
(9, 'Partano', 'Sibarani, Simangaraja (Sibuea)'),
(10, 'Pardungdang', 'Ompu Raja Laguboti (Pangaribuan), Ompu Rajaoloan (Hutapea)'),
(11, 'sapalatua(Tampubolon)', 'Silaen, Baringbing, Raja parmahan (somundur), Panguhut (Tampubolon-Sitampulak), Raja Pandebubu '),
(12, 'Silahisabungan', 'Sihaloho (Sinaborno, Sinapuran, Sinapitu, Masopang), Situngkir (Sipakar, Sipayung), Sondi'),
(13, 'Silahisabungan(Tambunan)\r\n', 'Tambunmulia (Tambuntoba, Pangaraji, Tambunsunge), Tambunmarbun, Tambunsaribu'),
(14, 'Toga Nsinggolan\r\n', 'Rumahorbo, Lumban siantar, Hutabalian, Lumban nahor, Lumbantungkup, Si Batu\r\n'),
(15, 'Toga simatupang', 'Togatorop, Sianturi, Siburian'),
(16, 'Toga Siregar', 'Silo, Dongoran Silali, Siagian'),
(17, 'Aritonang', 'Ompu Sunggu, Raja Gukguk, Simaremare'),
(18, 'Guru sotindion', 'Sidabutar, sijabat, Sidari, Sidabalok'),
(19, 'Toga Marbun', 'Marbun, Lumban batu, Banjarnahor, Lumbangaol'),
(20, 'Raja Hasibuan', 'Hasibuan, Hutabarat, Panggabean, Hutagalung, Lumbantobing, Hutatoruan'),
(21, 'Toga Sihombing', 'Silaban (Borsakjunjungan), Lumbantoruan (BorsakSirumonggur), Nababan (BorsakMangatasi), Hutasoit'),
(22, 'Toga Simamora', 'Purba, Manalu, Debataraja, Sumerham(Toga Rambe)'),
(23, 'SiRaja Lontung', 'Aritonang, Siregar, Simatupang, Toga Nainggolan, Toga Pandiagan, Toga Sinaga, Situmorang'),
(24, 'Malauraja', 'Malau, Tabutabugumbang (pasaeraja), Manikraja, Ambaritaraja, Gurning, Lamberaja'),
(25, 'Situmorang', 'Sitohangtoruan (Lumban-gaol), Sitohang tongatonga, Sitohanguruk, Siringoringo, Lumbannahor\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rumpun`
--
ALTER TABLE `rumpun`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `rumpun`
--
ALTER TABLE `rumpun`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
