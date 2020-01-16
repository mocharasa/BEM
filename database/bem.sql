-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 01:39 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Super Admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `judul` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` date NOT NULL,
  `konten` text NOT NULL,
  `gambar_artikel` text NOT NULL,
  `penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_category`, `judul`, `date`, `tanggal`, `konten`, `gambar_artikel`, `penulis`) VALUES
(1, 1, 'judul 1', '2020-01-16 09:43:48', '2018-12-09', 'ddfvnngfgf gfjgfjhjghg ngfgf gfjgfjhjghg ngfgf gfjgfjhjghg ngfgf gfjgfjhjghg ngfgf gfjgfjhjghg ngfgf gfjgfjhjghg ngfgf gfjgfj hjghg ddf vnngfgf gfjgfjhjg hg ngfgf gfjgfjhjghg ngfgf gfjg fjhj ghg ngfgf gfjg fjhjghg ngfgf gfjgfjhjghg ngfgf gfjgfjhjg hg ngfgf  ddfvnngfgf gfjgfjh jghg ngfgf gfjgfjhjghg ngfgf gfjg fjhjghg ngfgf gfjgf jhjg hg ngfgf gfjgfjhjghg ngfgf gfjg fjhjgh g ngfgf gfjgfjhj ghg ddfvnngfgf gfjgfjhjghg ngfgf gfjgfjhjghg ngfgf gfjgfj hjghg ngfgf gfjgf jhjghg ngfgf gfjgfjhjghg ngfgf gfjgfj hjghg ngfgf gfjgfj hjghg ddf vnngfgf gfjgfjhjg hg ngfgf gfjgfjhjghg ngfgf gfjg fjhj ghg ngfgf gfjg fjhjghg ngfgf gfjgfjhjghg ngfgf gfjgfjhjg hg ngfgf  ddfvnngfgf gfjgfjh jghg ngfgf gfjgfjhjghg ngfgf gfjg fjhjghg ngfgf gfjgf jhjg hg ngfgf gfjgfjhjghg ngfgf gfjg fjhjgh g ngfgf gfjgfjhj ghg', '', 'dani'),
(2, 1, 'judul 2', '2020-01-16 09:51:59', '2019-10-09', 'Lorem ipsum dolor natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', '', 'dani'),
(3, 1, 'judul 3', '2020-01-16 09:49:30', '2019-11-09', 'Lorem ipsum dolor natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', '', 'dani'),
(5, 1, 'judul 4', '2020-01-16 09:49:56', '2019-12-14', 'Lorem ipsum dolor natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', 'Penguins.jpg', 'dani'),
(6, 1, 'judul 5', '2020-01-16 09:50:35', '2019-12-14', 'Lorem ipsum dolor natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', 'Jellyfish.jpg', 'dani');

-- --------------------------------------------------------

--
-- Table structure for table `bukutamu`
--

CREATE TABLE `bukutamu` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `subjek` text NOT NULL,
  `pesan` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bukutamu`
--

INSERT INTO `bukutamu` (`id`, `tanggal`, `nama`, `email`, `telepon`, `subjek`, `pesan`, `status`) VALUES
(1, '2019-12-07', 'arif', 'email@email.com', '000000000', 'subjek', 'pesan', 'Sudah Dibaca');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `tanggal`, `nama`, `ukuran`, `jenis`, `id_kategori`, `deskripsi`) VALUES
('5e20211fc863c', '2020-01-16', '5e20211fc863c.jpg', '581.33', 'image/jpeg', 2, 'Gambar Bunga'),
('5e202257ce74b', '2020-01-16', '5e202257ce74b.jpg', '759.6', 'image/jpeg', 0, 'Penguin'),
('5e202437791ce', '2020-01-16', '5e202437791ce.jpg', '548.12', 'image/jpeg', 999, 'bangunan'),
('5e2024e4d754b', '2020-01-16', '5e2024e4d754b.jpg', '759.6', 'image/jpeg', 1000, 'Penguin');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(2, 'Bunga'),
(1000, 'Fauna');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id_category` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id_category`, `category`) VALUES
(1, 'Uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `nama` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_artikel`, `tanggal`, `nama`, `email`, `isi`) VALUES
(1, 11, '2019-12-21 00:00:00', 'jamal', 'surel@surel.com', 'nitip gan'),
(2, 11, '2019-12-21 00:00:00', 'jamal', 'surel@surel.com', 'nitip gan'),
(3, 11, '2019-12-21 00:00:00', 'jamal', 'surel@surel.com', 'nitip gan'),
(4, 11, '2019-12-21 00:00:00', 'jamal', 'surel@surel.com', 'jejak gan'),
(5, 1, '2019-12-21 00:00:00', 'Juhari', 'surel@surel.com', 'nitip jejak gan'),
(6, 1, '2019-12-21 06:11:03', 'jamal', 'surel@surel.com', 'mantul gan'),
(7, 12, '2019-12-22 04:46:38', 'arif', 'arief.hosting@gmail.com', 'gajelas jing'),
(8, 13, '2019-12-27 05:07:53', 'arif', 'arief.hosting@gmail.com', 'sasasa');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `tentang` text NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `whatsapp` varchar(50) NOT NULL,
  `youtube` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `tentang`, `alamat`, `telepon`, `email`, `instagram`, `facebook`, `twitter`, `whatsapp`, `youtube`) VALUES
(1, '																																<p></p><div style="text-align: justify;"><span style="color: rgb(51, 51, 51);">BEM STT WASKA ADALAH : .............</span></div><div style="text-align: justify;"><span style="color: rgb(51, 51, 51);"><br></span></div><div style="text-align: justify;"><span style="color: rgb(51, 51, 51); font-weight: bold;">Visi :</span></div><div style="text-align: justify;"><span style="color: rgb(51, 51, 51); font-weight: bold; font-style: italic;">Visi BEM STT WASKA</span></div><div style="text-align: justify;"><span style="color: rgb(51, 51, 51); font-weight: bold;"><br></span></div><div style="text-align: justify;"><span style="color: rgb(51, 51, 51); font-weight: bold;">Misi :</span></div><div style="text-align: justify;"><ol><li><span style="color: rgb(51, 51, 51);">Satu</span></li><li><span style="color: rgb(51, 51, 51);">Dua</span></li><li><span style="color: rgb(51, 51, 51);">Tiga</span></li><li><span style="color: rgb(51, 51, 51);">Empat</span></li></ol></div><p></p><p>                                </p>                                                                                                                                ', 'Alamat Sekretariat ', '0811998877', 'mail@email.com', '', '', '', '0811998877', '');

-- --------------------------------------------------------

--
-- Table structure for table `sambutan`
--

CREATE TABLE `sambutan` (
  `id` int(11) NOT NULL,
  `sambutan` text NOT NULL,
  `tagline` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sambutan`
--

INSERT INTO `sambutan` (`id`, `sambutan`, `tagline`, `foto`) VALUES
(1, '<p>								\r\n											<p>Asslamualaikum Wr. Wb.</p>Lorem ipsum dolor natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p><p>Wassalamualaikum Wr. Wb<br>										</p>', 'Bersatu Bersinergi', 'udin.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `bukutamu`
--
ALTER TABLE `bukutamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bukutamu`
--
ALTER TABLE `bukutamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sambutan`
--
ALTER TABLE `sambutan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
