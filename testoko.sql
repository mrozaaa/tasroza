-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2018 at 02:37 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'mroza', 'mroza', 'muhammad roza'),
(2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Jakarta', 10000),
(2, 'Yogyakarta', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(8, 'mroza@gmail.com', 'roza', 'roza', '123456', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`) VALUES
(1, 1, 1, '2018-07-02', 100000000, '', 0, ''),
(2, 2, 1, '2018-07-19', 890000, '', 0, ''),
(5, 1, 1, '2018-07-18', 1010000, '', 0, ''),
(6, 1, 1, '2018-07-18', 2860000, '', 0, ''),
(7, 1, 1, '2018-07-18', 2860000, '', 0, ''),
(8, 1, 0, '2018-07-18', 2850000, '', 0, ''),
(9, 1, 2, '2018-07-18', 2865000, '', 0, ''),
(10, 1, 2, '2018-07-18', 2865000, '', 0, ''),
(11, 1, 0, '2018-07-18', 2850000, '', 0, ''),
(12, 1, 1, '2018-07-18', 2860000, '', 0, ''),
(13, 1, 0, '2018-07-18', 2850000, '', 0, ''),
(14, 1, 1, '2018-07-18', 860000, '', 0, ''),
(15, 1, 1, '2018-07-18', 710000, '', 0, ''),
(16, 1, 2, '2018-07-18', 1015000, 'Yogyakarta', 15000, ''),
(17, 1, 2, '2018-07-18', 1715000, 'Yogyakarta', 15000, 'semarang utara sekali'),
(18, 1, 0, '2018-07-18', 850000, '', 0, 'semarang'),
(19, 8, 1, '2018-07-18', 2010000, 'Jakarta', 10000, '123456'),
(20, 8, 2, '2018-07-18', 865000, 'Yogyakarta', 15000, 'jasdsajdsaj'),
(21, 8, 1, '2018-07-18', 10000, 'Jakarta', 10000, 'jkl'),
(22, 8, 1, '2018-07-18', 10000, 'Jakarta', 10000, ''),
(23, 8, 1, '2018-07-18', 710000, 'Jakarta', 10000, 'semarang'),
(24, 8, 0, '2018-07-18', 1300000, '', 0, 'asdasd'),
(25, 8, 2, '2018-07-19', 865000, 'Yogyakarta', 15000, 'jogja\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 1, 1, '', 0, 0, 0, 0),
(2, 1, 2, 1, '', 0, 0, 0, 0),
(17, 0, 1, 1, '', 0, 0, 0, 0),
(18, 0, 3, 1, '', 0, 0, 0, 0),
(19, 0, 5, 1, '', 0, 0, 0, 0),
(20, 0, 3, 1, '', 0, 0, 0, 0),
(21, 0, 4, 1, '', 0, 0, 0, 0),
(22, 0, 2, 1, '', 0, 0, 0, 0),
(23, 0, 2, 2, '', 0, 0, 0, 0),
(24, 5, 2, 1, '', 0, 0, 0, 0),
(25, 13, 2, 2, 'Marmont Matelasse', 1000000, 100, 200, 0),
(26, 13, 1, 1, 'Bumble Kanvas', 850000, 1000, 1000, 0),
(27, 14, 1, 1, 'Bumble Kanvas', 850000, 1000, 1000, 0),
(28, 15, 3, 1, 'Flap Crossbody Bag', 700000, 80, 80, 700000),
(29, 16, 2, 1, 'Marmont Matelasse', 1000000, 100, 100, 1000000),
(30, 17, 3, 1, 'Flap Crossbody Bag', 700000, 80, 80, 700000),
(31, 17, 2, 1, 'Marmont Matelasse', 1000000, 100, 100, 1000000),
(32, 18, 1, 1, 'Bumble Kanvas', 850000, 1000, 1000, 850000),
(33, 19, 2, 2, 'Marmont Matelasse', 1000000, 100, 200, 2000000),
(34, 20, 1, 1, 'Bumble Kanvas', 850000, 1000, 1000, 850000),
(35, 23, 3, 1, 'Flap Crossbody Bag', 700000, 80, 80, 700000),
(36, 24, 8, 1, 'Constance Bag', 1300000, 80, 80, 1300000),
(37, 25, 1, 1, 'Bumble Kanvas', 850000, 1000, 1000, 850000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(1, 'Bumble Kanvas', 850000, 1000, 'Ransel.jpg', 'Tas Wanita Ransel Gucci Bumble Kanvas Semi Premium YZ 650 model terbaru ini sangat cocok untuk anda yang ingin bergaya khususnya bagi para wanita socialita. Tas Wanita Ransel Gucci Bumble Kanvas Semi Premium YZ 650 ini adalah tas model terbaru keluaran tahun 2017.'),
(2, 'Marmont Matelasse', 1000000, 100, 'clutch(1).jpg', 'Tas mini rantai GG Marmont memiliki bentuk yang terstruktur lembut dan penutupan flap dengan perangkat keras G Double. Perangkat keras ini terinspirasi oleh desain arsip dari tahun 70-an. Terbuat dari kulit matelassé chevron. Kulit matelassé chevron hitam dengan GG di bagian belakang. Perangkat keras berlapis emas antik. Double G. Enam belas slot kartu dan dua kompartemen tagihan. Tiga kompartemen interior terpisah. Kantong koin zip. Tali bahu rantai yang dapat dilepas dengan 24 \". Penutupan Snap. 8\" W x 5 \"H x 2.5\" D. Dibuat di Italia.\r\nTrendy									'),
(3, 'Flap Crossbody Bag', 700000, 80, 'belt.jpg', 'Tas crossbody kulit pasir dari Wandler yang menampilkan penutupan tutup atas, pengencang gesper, kompartemen internal utama, kantung tempel internal, perangkat keras nada emas dan tali yang dapat dilepas yang dapat digunakan sebagai tali pinggang atau bahu'),
(4, 'Mini Mini Bucket Bag', 900000, 110, 'bucket.jpg', 'Kulit hitam Mini Mini Bucket bag dari MANSUR GAVRIEL menampilkan tali bahu yang dapat disesuaikan dan pengencang tali.\r\n'),
(5, 'Crossbody Rucksack', 1200000, 150, 'back.jpg', 'Terinspirasi oleh tas arsip militer, ransel tanpa batas waktu kami diperbarui dengan tali tambahan untuk dibawa lintas'),
(6, 'Stripe Detail', 1100000, 170, 'lug.jpg', 'Stripe detail tas dari Bally'),
(7, 'Mini Galleria tote', 890000, 100, 'toto.jpg', '\r\nSebuah siluet yang langsung dikenali dari rumah mode Italia, tas jinjing mini \'Galleria\' dari Prada mendemonstrasikan keahlian pengrajin ahli label dan etos desain tanpa batas waktu. Dipahat di Italia dari kulit Saffiano biru dengan perangkat keras berlapis emas, karya ini dirancang untuk wanita modern. Tas ini memiliki dua pegangan bulat yang bulat, tali bahu opsional yang dapat disesuaikan, desain atas terbuka, beberapa ruang interior, dan plak logo tanda tangan Prada 1913 yang beraksen di bagian depan.'),
(8, 'Constance Bag', 1300000, 80, 'vintage.jpg', 'Efisiensi memenuhi gaya di setiap tas Hermès, ketika kecanggihan adalah harus memiliki, atribut abadi. Seperti kebanyakan tas Hermès, tas ini dibuat di negara asal merek, dibuat oleh pengrajin yang berpengalaman. Mudah dipakai, tas bahu Constance adalah aksesori elegan untuk hari-hari pakaian slouchy. Ini fitur tali bahu panjang topping penutupan flap, diikat oleh bar magnet. Di dalam, ada satu kompartemen dengan saku zip dan slip kantong ke belakang. Tas ini selesai dengan hardware emas-nada halus, dibuat dari kulit buaya mewah, menawarkan fokus penuh ke plakat H metal di bagian depan. Harap dicatat bahwa barang-barang vintage tidak baru dan karena itu mungkin memiliki ketidaksempurnaan kecil. Harap dicatat bahwa barang ini tidak dapat dikirim di luar E.U ..\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
