-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 03:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakadsekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `is_main_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tabel_menu`:
--

--
-- Dumping data for table `tabel_menu`
--

INSERT INTO `tabel_menu` (`id`, `nama_menu`, `link`, `icon`, `is_main_menu`) VALUES
(1, 'Data Siswa', 'siswa', 'fa fa-users', 0),
(2, 'Data Guru', 'guru', 'fa fa-user-circle', 0),
(3, 'Data Master', '#', 'fa fa-bars', 0),
(4, 'Mata Pelajaran', 'mapel', 'fa fa-book', 3),
(5, 'Ruangan Kelas', 'ruangan', 'fa fa-building', 3),
(6, 'Tingkatan Kelas', 'tingkatan', 'fa fa-sitemap', 3),
(7, 'Jurusan', 'jurusan', 'fa fa-th-large', 3),
(8, 'Tahun Akademik', 'tahunakademik', 'fa fa-calendar-check-o', 3),
(9, 'Kelas', 'kelas', 'fa fa-cubes', 3),
(10, 'Kurikulum', 'kurikulum', 'fa fa-list', 3),
(12, 'Peserta Didik', 'siswa/siswa_aktif', 'fa fa-users', 0),
(13, 'Walikelas', 'walikelas', 'fa fa-user-plus', 0),
(14, 'Pengguna Sistem', 'user', 'fa fa-id-badge', 0),
(15, 'Menu', 'menu', 'fa fa-list', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `kd_agama` int(2) NOT NULL,
  `nama_agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_agama`:
--

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`kd_agama`, `nama_agama`) VALUES
(1, 'ISLAM'),
(2, 'KRISTEN/ PROTESTAN'),
(3, 'KATHOLIK'),
(4, 'HINDU'),
(5, 'BUDHA'),
(6, 'KHONG HU CHU'),
(99, 'LAIN LAIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(11) NOT NULL,
  `nuptk` varchar(11) NOT NULL,
  `nama_guru` varchar(40) NOT NULL,
  `gender` enum('P','W') NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_guru`:
--

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nuptk`, `nama_guru`, `gender`, `username`, `password`, `foto`) VALUES
(1, '01', 'Jose Brown', '', '01', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(2, '02', 'Benjamin Ford', '', '02', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(3, '03', 'Henry Shah', '', '03', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(4, '04', 'Thomas Chang', '', '04', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(5, '05', 'Maverick Mehta', '', '05', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(6, '06', 'Austin Edwards', '', '06', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(7, '07', 'Daniel Huang', '', '07', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(8, '08', 'Lucas Phan', '', '08', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(9, '09', 'Gabriel Yu', '', '09', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(10, '10', 'Mason Watson', '', '10', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(11, '11', 'Angel Chang', '', '11', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(12, '12', 'Thomas Vazquez', '', '12', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(13, '13', 'Silas Hunter', '', '13', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(14, '14', 'Nicholas Brooks', '', '14', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(15, '15', 'Dominic Thomas', '', '15', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(16, '16', 'Wesley Adams', '', '16', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(17, '17', 'Ian Wu', '', '17', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(18, '18', 'Logan Carrillo', '', '18', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(19, '19', 'Matthew Lim', '', '19', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(20, '20', 'Andrew Moore', '', '20', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(21, '21', 'Roman Yang', '', '21', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(22, '22', 'Kai Flores', '', '22', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(23, '23', 'Jaxson Dinh', '', '23', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(24, '24', 'Axel Jordan', '', '24', 'e10adc3949ba59abbe56e057f20f883e', '01_(3).jpg'),
(25, '25', 'Savannah He', 'P', '25', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(26, '26', 'Samantha Woods', 'P', '26', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(27, '27', 'Amelia Choi', 'P', '27', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(28, '28', 'Luna Taylor', 'P', '28', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(29, '29', 'Emma Cao', 'P', '29', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(30, '30', 'Natalie Hwang', 'P', '30', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(31, '31', 'Adeline Yang', 'P', '31', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(32, '32', 'Allison Roberts', 'P', '32', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(33, '33', 'Eliana Grant', 'P', '33', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(34, '34', 'Mila Soto', 'P', '34', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(35, '35', 'Gabriella Johnson', 'P', '35', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(36, '36', 'Bella Lopez', 'P', '36', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(37, '37', 'Leilani Baker', 'P', '37', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(38, '38', 'Harper Chin', 'P', '38', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(39, '39', 'Madelyn Mehta', 'P', '39', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(40, '40', 'Athena Vasquez', 'P', '40', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(41, '41', 'Everleigh Nunez', 'P', '41', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(42, '42', 'Aubrey Yoon', 'P', '42', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(43, '43', 'Ella Nguyen', 'P', '43', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(44, '44', 'Athena Jordan', 'P', '44', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(45, '45', 'Zoe Sanchez', 'P', '45', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(46, '46', 'Liliana Soto', 'P', '46', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(47, '47', 'Julia Morris', 'P', '47', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg'),
(48, '48', 'Ava Ortiz', 'P', '48', 'e10adc3949ba59abbe56e057f20f883e', '02 (6).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `jam` varchar(30) NOT NULL,
  `kd_ruangan` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_jadwal`:
--

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_tahun_akademik`, `semester`, `kd_jurusan`, `kd_tingkatan`, `kd_kelas`, `kd_mapel`, `id_guru`, `jam`, `kd_ruangan`, `hari`) VALUES
(73, 7, 'ganjil', 'IPA', '7', '7-A1', 'BID1', 1, '', '000', ''),
(74, 7, 'ganjil', 'IPA', '7', '7-B1', 'BID1', 2, '', '000', ''),
(75, 7, 'ganjil', 'IPA', '8', '8-A1', 'BID2', 3, '', '000', ''),
(76, 7, 'ganjil', 'IPA', '8', '8-B1', 'BID2', 4, '', '000', ''),
(77, 7, 'ganjil', 'IPA', '9', '9-A1', 'BID3', 5, '', '000', ''),
(78, 7, 'ganjil', 'IPA', '9', '9-B1', 'BID3', 6, '', '000', ''),
(79, 7, 'ganjil', 'IPA', '7', '7-A1', 'BIO1', 7, '', '000', ''),
(80, 7, 'ganjil', 'IPA', '7', '7-B1', 'BIO1', 8, '', '000', ''),
(81, 7, 'ganjil', 'IPA', '8', '8-A1', 'BIO2', 9, '', '000', ''),
(82, 7, 'ganjil', 'IPA', '8', '8-B1', 'BIO2', 10, '', '000', ''),
(83, 7, 'ganjil', 'IPA', '9', '9-A1', 'BIO3', 11, '', '000', ''),
(84, 7, 'ganjil', 'IPA', '9', '9-B1', 'BIO3', 12, '', '000', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kd_jurusan` varchar(5) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_jurusan`:
--

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kd_jurusan`, `nama_jurusan`) VALUES
('IPA', 'IPA'),
('IPS', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kd_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_kelas`:
--

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kd_kelas`, `nama_kelas`, `kd_tingkatan`, `kd_jurusan`) VALUES
('7-A1', 'Kelas 7-A IPA', '7', 'IPA'),
('7-A2', 'Kelas 7-A IPS', '7', 'IPS'),
('7-B1', 'Kelas 7-B IPA', '7', 'IPA'),
('7-B2', 'Kelas 7-B IPS', '7', 'IPS'),
('8-A1', 'Kelas 8-A IPA', '8', 'IPA'),
('8-A2', 'Kelas 8-A IPS', '8', 'IPS'),
('8-B1', 'Kelas 8-B IPA', '8', 'IPA'),
('8-B2', 'Kelas 8-B IPS', '8', 'IPS'),
('9-A1', 'Kelas 9-A IPA', '9', 'IPA'),
('9-A2', 'Kelas 9-A IPS', '9', 'IPS'),
('9-B1', 'Kelas 9-B IPA', '9', 'IPA'),
('9-B2', 'Kelas 9-B IPS', '9', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum`
--

CREATE TABLE `tbl_kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `nama_kurikulum` varchar(30) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_kurikulum`:
--

--
-- Dumping data for table `tbl_kurikulum`
--

INSERT INTO `tbl_kurikulum` (`id_kurikulum`, `nama_kurikulum`, `is_aktif`) VALUES
(1, 'Kurikulum 2013 (K13)', 'Y'),
(2, 'Kurikulum 2006 (KTSP)', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum_detail`
--

CREATE TABLE `tbl_kurikulum_detail` (
  `id_kurikulum_detail` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_kurikulum_detail`:
--

--
-- Dumping data for table `tbl_kurikulum_detail`
--

INSERT INTO `tbl_kurikulum_detail` (`id_kurikulum_detail`, `id_kurikulum`, `kd_mapel`, `kd_jurusan`, `kd_tingkatan`) VALUES
(1, 1, 'BID1', 'IPA', '7'),
(2, 1, 'BID2', 'IPA', '8'),
(3, 1, 'BID3', 'IPA', '9'),
(4, 1, 'BIO1', 'IPA', '7'),
(5, 1, 'BIO2', 'IPA', '8'),
(6, 1, 'BIO3', 'IPA', '9'),
(7, 1, 'BID1', 'IPA', '7'),
(8, 1, 'BIO1', 'IPA', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `id_level_user` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_level_user`:
--

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`id_level_user`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Walikelas'),
(3, 'Guru'),
(4, 'Keuangan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `kd_mapel` varchar(5) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_mapel`:
--

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`kd_mapel`, `nama_mapel`) VALUES
('BID1', 'Bahasa Indonesia 1'),
('BID2', 'Bahasa Indonesia 2'),
('BID3', 'Bahasa Indonesia 3'),
('BIO1', 'Biologi 1'),
('BIO2', 'Biologi 2'),
('BIO3', 'Biologi 3'),
('MTK1', 'Matematika 1'),
('MTK2', 'Matematika 2'),
('MTK3', 'Matematika 3'),
('PAI1', 'Pendidikan Agama Islam 1'),
('PAI2', 'Pendidikan Agama Islam 2'),
('PAI3', 'Pendidikan Agama Islam 3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_nilai`:
--

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_jadwal`, `nim`, `nilai`) VALUES
(1, 1, '18SI1000', 100),
(2, 1, '18SI1001', 80),
(3, 1, '18SI1002', 75),
(4, 1, '18SI1003', 85),
(5, 1, '18TI2000', 90),
(6, 1, '18TI2001', 100),
(7, 1, '18TI2002', 99),
(8, 1, '18TI2003', 99),
(9, 73, '001', 90);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtitle` text NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `tbl_pengumuman`:
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_riwayat_kelas`
--

CREATE TABLE `tbl_riwayat_kelas` (
  `id_riwayat` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_riwayat_kelas`:
--

--
-- Dumping data for table `tbl_riwayat_kelas`
--

INSERT INTO `tbl_riwayat_kelas` (`id_riwayat`, `kd_kelas`, `nim`, `id_tahun_akademik`) VALUES
(1, '7-A1', '18SI1000', 1),
(2, '7-A1', '18SI1001', 1),
(3, '7-A1', '18SI1002', 1),
(4, '7-A1', '18SI1003', 1),
(5, '7-A1', '18TI2000', 1),
(6, '7-A1', '18TI2001', 1),
(7, '7-A1', '18TI2002', 1),
(8, '7-A1', '18TI2003', 1),
(9, '7-A1', '', 1),
(10, '8-A1', '14.12.8199', 1),
(11, '8-B1', '14.12.8198', 1),
(12, '7-A1', '101010', 1),
(13, '7-B1', 'asd', 7),
(14, '7-A1', '001', 7),
(15, '7-A1', '361', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_ruangan`:
--

--
-- Dumping data for table `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`kd_ruangan`, `nama_ruangan`) VALUES
('IXA1', 'Ruangan Kelas IX-A IPA'),
('IXA2', 'Ruangan Kelas IX-A IPS'),
('IXB1', 'Ruangan Kelas IX-B IPA'),
('IXB2', 'Ruangan Kelas IX-B IPS'),
('VIIA1', 'Ruangan Kelas VII-A IPA'),
('VIIA2', 'Ruangan Kelas VII-A IPS'),
('VIIB1', 'Ruangan Kelas VII-B IPA'),
('VIIB2', 'Ruangan Kelas VII-B IPS'),
('VIIIA1', 'Ruangan Kelas VIII-A IPA'),
('VIIIA2', 'Ruangan Kelas VIII-A IPS'),
('VIIIB1', 'Ruangan Kelas VIII-B IPA'),
('VIIIB2', 'Ruangan Kelas VIII-B IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `kd_agama` int(2) NOT NULL,
  `foto` text NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_siswa`:
--

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nim`, `nama`, `gender`, `tanggal_lahir`, `tempat_lahir`, `kd_agama`, `foto`, `kd_kelas`) VALUES
('001', 'Luke Martin', 'L', '2003-06-22', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-A1'),
('002', 'Easton Bailey', 'L', '2003-06-23', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-A1'),
('003', 'Eli Jones', 'L', '2003-06-24', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-A1'),
('004', 'Robert Yang', 'L', '2003-06-25', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-A1'),
('005', 'David Barnes', 'L', '2003-06-26', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-A1'),
('006', 'Adam Dang', 'L', '2003-06-27', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-A1'),
('007', 'Elias Alvarado', 'L', '2003-06-28', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-A1'),
('008', 'Logan Rivera', 'L', '2003-06-29', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-A1'),
('009', 'Leonardo Dixon', 'L', '2003-06-30', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-A1'),
('010', 'Mateo Her', 'L', '2003-07-01', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-A1'),
('011', 'Jose Henderson', 'L', '2003-07-02', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-A1'),
('012', 'Wyatt Chin', 'L', '2003-07-03', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-A1'),
('013', 'Carson Lu', 'L', '2003-07-04', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-A1'),
('014', 'Dylan Choi', 'L', '2003-07-05', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-A1'),
('015', 'Ezekiel Kumar', 'L', '2003-07-06', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-A1'),
('016', 'Dominic Guzman', 'L', '2003-07-07', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-A2'),
('017', 'Angel Powell', 'L', '2003-07-08', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-A2'),
('018', 'Mateo Vu', 'L', '2003-07-09', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-A2'),
('019', 'Jackson Perry', 'L', '2003-07-10', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-A2'),
('020', 'Owen Lam', 'L', '2003-07-11', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-A2'),
('021', 'John Moore', 'L', '2003-07-12', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-A2'),
('022', 'William Vu', 'L', '2003-07-13', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-A2'),
('023', 'Gabriel Holmes', 'L', '2003-07-14', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-A2'),
('024', 'Wyatt Rojas', 'L', '2003-07-15', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-A2'),
('025', 'Dominic Clark', 'L', '2003-07-16', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-A2'),
('026', 'John Contreras', 'L', '2003-07-17', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-A2'),
('027', 'John Chow', 'L', '2003-07-18', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-A2'),
('028', 'Christian Sanders', 'L', '2003-07-19', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-A2'),
('029', 'William Foster', 'L', '2003-07-20', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-A2'),
('030', 'David Chu', 'L', '2003-07-21', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-A2'),
('031', 'Thomas Padilla', 'L', '2003-07-22', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-B1'),
('032', 'Miles Salazar', 'L', '2003-07-23', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-B1'),
('033', 'Benjamin Moua', 'L', '2003-07-24', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-B1'),
('034', 'Samuel Morales', 'L', '2003-07-25', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B1'),
('035', 'John Soto', 'L', '2003-07-26', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B1'),
('036', 'Joseph Martin', 'L', '2003-07-27', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-B1'),
('037', 'Jose Ross', 'L', '2003-07-28', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-B1'),
('038', 'Parker James', 'L', '2003-07-29', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-B1'),
('039', 'Lincoln Hall', 'L', '2003-07-30', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B1'),
('040', 'Jack Cheng', 'L', '2003-07-31', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-B1'),
('041', 'Gabriel Brooks', 'L', '2003-08-01', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B1'),
('042', 'Jack Huynh', 'L', '2003-08-02', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-B1'),
('043', 'Xavier Zheng', 'L', '2003-08-03', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-B1'),
('044', 'Matthew Chau', 'L', '2003-08-04', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-B1'),
('045', 'Nolan Bui', 'L', '2003-08-05', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-B1'),
('046', 'Noah King', 'L', '2003-08-06', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B2'),
('047', 'Connor Simmons', 'L', '2003-08-07', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '7-B2'),
('048', 'Grayson Cooper', 'L', '2003-08-08', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-B2'),
('049', 'Andrew Thomas', 'L', '2003-08-09', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B2'),
('050', 'Ezekiel Desai', 'L', '2003-08-10', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B2'),
('051', 'Brooks Marquez', 'L', '2003-08-11', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-B2'),
('052', 'Connor Joseph', 'L', '2003-08-12', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-B2'),
('053', 'Liam Jung', 'L', '2003-08-13', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-B2'),
('054', 'Greyson Sanders', 'L', '2003-08-14', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-B2'),
('055', 'Mateo Chu', 'L', '2003-08-15', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B2'),
('056', 'Ezekiel Reed', 'L', '2003-08-16', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '7-B2'),
('057', 'Nolan Guzman', 'L', '2003-08-17', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-B2'),
('058', 'Mateo Williams', 'L', '2003-08-18', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '7-B2'),
('059', 'Levi Mendez', 'L', '2003-08-19', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '7-B2'),
('060', 'Julian Fong', 'L', '2003-08-20', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '7-B2'),
('061', 'Anthony Rogers', 'L', '2003-08-21', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-A1'),
('062', 'Matthew Gupta', 'L', '2003-08-22', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A1'),
('063', 'Silas Chavez', 'L', '2003-08-23', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-A1'),
('064', 'Colton Thao', 'L', '2003-08-24', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-A1'),
('065', 'Alexander Bryant', 'L', '2003-08-25', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-A1'),
('066', 'Elias Zhang', 'L', '2003-08-26', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A1'),
('067', 'Joseph Ruiz', 'L', '2003-08-27', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-A1'),
('068', 'Miles Hsu', 'L', '2003-08-28', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-A1'),
('069', 'Jaxon Park', 'L', '2003-08-29', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-A1'),
('070', 'Elijah Henry', 'L', '2003-08-30', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-A1'),
('071', 'Lucas Thomas', 'L', '2003-08-31', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A1'),
('072', 'Hudson Liu', 'L', '2003-09-01', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-A1'),
('073', 'Jaxson Sandoval', 'L', '2003-09-02', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A1'),
('074', 'Jameson Alvarado', 'L', '2003-09-03', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-A1'),
('075', 'Joseph Ly', 'L', '2003-09-04', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A1'),
('076', 'Daniel Richardson', 'L', '2003-09-05', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A2'),
('077', 'Elias Figueroa', 'L', '2003-09-06', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-A2'),
('078', 'Mason Zhao', 'L', '2003-09-07', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A2'),
('079', 'Jaxson Mai', 'L', '2003-09-08', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-A2'),
('080', 'Nathan Mendez', 'L', '2003-09-09', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-A2'),
('081', 'Alexander Choi', 'L', '2003-09-10', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-A2'),
('082', 'Julian Ross', 'L', '2003-09-11', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-A2'),
('083', 'Jack Brown', 'L', '2003-09-12', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-A2'),
('084', 'Jeremiah Chu', 'L', '2003-09-13', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-A2'),
('085', 'Miles Cho', 'L', '2003-09-14', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-A2'),
('086', 'Caleb Marquez', 'L', '2003-09-15', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-A2'),
('087', 'Eli Soto', 'L', '2003-09-16', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-A2'),
('088', 'Carter Mejia', 'L', '2003-09-17', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A2'),
('089', 'Ethan Clark', 'L', '2003-09-18', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-A2'),
('090', 'Asher Jackson', 'L', '2003-09-19', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-A2'),
('091', 'Jose Kang', 'L', '2003-09-20', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-B1'),
('092', 'Jaxson Wright', 'L', '2003-09-21', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-B1'),
('093', 'Elias Ali', 'L', '2003-09-22', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-B1'),
('094', 'Nolan Pena', 'L', '2003-09-23', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-B1'),
('095', 'Jonathan Chavez', 'L', '2003-09-24', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-B1'),
('096', 'Elijah Kang', 'L', '2003-09-25', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-B1'),
('097', 'Jordan Truong', 'L', '2003-09-26', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-B1'),
('098', 'Daniel Jordan', 'L', '2003-09-27', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-B1'),
('099', 'Daniel Dixon', 'L', '2003-09-28', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-B1'),
('100', 'Luca Duong', 'L', '2003-09-29', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-B1'),
('101', 'Levi Brown', 'L', '2003-09-30', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-B1'),
('102', 'Mason Cho', 'L', '2003-10-01', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-B1'),
('103', 'Elijah Watson', 'L', '2003-10-02', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-B1'),
('104', 'Wesley Gray', 'L', '2003-10-03', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-B1'),
('105', 'Wesley Sharma', 'L', '2003-10-04', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-B1'),
('106', 'Mateo Mendez', 'L', '2003-10-05', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-B2'),
('107', 'Jose Molina', 'L', '2003-10-06', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-B2'),
('108', 'Hunter Ortiz', 'L', '2003-10-07', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-B2'),
('109', 'Thomas Aguilar', 'L', '2003-10-08', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-B2'),
('110', 'Kai Chow', 'L', '2003-10-09', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-B2'),
('111', 'James Bui', 'L', '2003-10-10', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-B2'),
('112', 'Liam Grant', 'L', '2003-10-11', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-B2'),
('113', 'Owen Han', 'L', '2003-10-12', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-B2'),
('114', 'Leonardo Martin', 'L', '2003-10-13', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-B2'),
('115', 'Greyson Lam', 'L', '2003-10-14', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-B2'),
('116', 'Ezekiel Jordan', 'L', '2003-10-15', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '8-B2'),
('117', 'Luke Mai', 'L', '2003-10-16', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '8-B2'),
('118', 'Charles Diaz', 'L', '2003-10-17', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '8-B2'),
('119', 'Adam Espinoza', 'L', '2003-10-18', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '8-B2'),
('120', 'Jack Maldonado', 'L', '2003-10-19', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '8-B2'),
('121', 'Cooper Mitchell', 'L', '2003-10-20', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '9-A1'),
('122', 'Jack Edwards', 'L', '2003-10-21', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '9-A1'),
('123', 'John Vega', 'L', '2003-10-22', 'Deli Serdang', 5, 'pexels-pixabay-220453.jpg', '9-A1'),
('124', 'Luke Munoz', 'L', '2003-10-23', 'Deli Serdang', 1, 'pexels-pixabay-220453.jpg', '9-A1'),
('125', 'Henry Alvarez', 'L', '2003-10-24', 'Deli Serdang', 2, 'pexels-pixabay-220453.jpg', '9-A1'),
('126', 'Benjamin Delgado', 'L', '2003-10-25', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '9-A1'),
('127', 'Axel Chu', 'L', '2003-10-26', 'Deli Serdang', 3, 'pexels-pixabay-220453.jpg', '9-A1'),
('128', 'Cameron Evans', 'L', '2003-10-27', 'Deli Serdang', 4, 'pexels-pixabay-220453.jpg', '9-A1'),
('129', 'Cameron Powell', 'L', '2003-10-28', 'Binjai', 3, 'pexels-pixabay-220453.jpg', '9-A1'),
('130', 'Carter Reed', 'L', '2003-10-29', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-A1'),
('131', 'Charles Robinson', 'L', '2003-10-30', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-A1'),
('132', 'Landon Lopez', 'L', '2003-10-31', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-A1'),
('133', 'Miles Mehta', 'L', '2003-11-01', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-A1'),
('134', 'Ezra Simmons', 'L', '2003-11-02', 'Binjai', 3, 'pexels-pixabay-220453.jpg', '9-A1'),
('135', 'David Owens', 'L', '2003-11-03', 'Binjai', 3, 'pexels-pixabay-220453.jpg', '9-A1'),
('136', 'Xavier Park', 'L', '2003-11-04', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-A2'),
('137', 'Asher Morales', 'L', '2003-11-05', 'Binjai', 4, 'pexels-pixabay-220453.jpg', '9-A2'),
('138', 'Mason Cao', 'L', '2003-11-06', 'Binjai', 3, 'pexels-pixabay-220453.jpg', '9-A2'),
('139', 'Joshua Fong', 'L', '2003-11-07', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-A2'),
('140', 'Logan Bryant', 'L', '2003-11-08', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-A2'),
('141', 'Christopher Vega', 'L', '2003-11-09', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-A2'),
('142', 'Eli Han', 'L', '2003-11-10', 'Binjai', 2, 'pexels-pixabay-220453.jpg', '9-A2'),
('143', 'Connor Grant', 'L', '2003-11-11', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-A2'),
('144', 'Dominic Baker', 'L', '2003-11-12', 'Binjai', 4, 'pexels-pixabay-220453.jpg', '9-A2'),
('145', 'Adam Nelson', 'L', '2003-11-13', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-A2'),
('146', 'Robert Edwards', 'L', '2003-11-14', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-A2'),
('147', 'Roman Martinez', 'L', '2003-11-15', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-A2'),
('148', 'Connor Vang', 'L', '2003-11-16', 'Binjai', 3, 'pexels-pixabay-220453.jpg', '9-A2'),
('149', 'Dylan Padilla', 'L', '2003-11-17', 'Binjai', 4, 'pexels-pixabay-220453.jpg', '9-A2'),
('150', 'Nathan Pham', 'L', '2003-11-18', 'Binjai', 2, 'pexels-pixabay-220453.jpg', '9-A2'),
('151', 'Isaac Mitchell', 'L', '2003-11-19', 'Binjai', 2, 'pexels-pixabay-220453.jpg', '9-B1'),
('152', 'Jayden Jimenez', 'L', '2003-11-20', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-B1'),
('153', 'Jaxon Tran', 'L', '2003-11-21', 'Binjai', 2, 'pexels-pixabay-220453.jpg', '9-B1'),
('154', 'Connor Fong', 'L', '2003-11-22', 'Binjai', 2, 'pexels-pixabay-220453.jpg', '9-B1'),
('155', 'Landon Luu', 'L', '2003-11-23', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-B1'),
('156', 'Jonathan Patel', 'L', '2003-11-24', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-B1'),
('157', 'Cameron Young', 'L', '2003-11-25', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-B1'),
('158', 'Aiden Bryant', 'L', '2003-11-26', 'Binjai', 4, 'pexels-pixabay-220453.jpg', '9-B1'),
('159', 'Grayson Walker', 'L', '2003-11-27', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-B1'),
('160', 'Ezra Simmons', 'L', '2003-11-28', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-B1'),
('161', 'Luke Zheng', 'L', '2003-11-29', 'Binjai', 2, 'pexels-pixabay-220453.jpg', '9-B1'),
('162', 'Miles Evans', 'L', '2003-11-30', 'Binjai', 3, 'pexels-pixabay-220453.jpg', '9-B1'),
('163', 'Leo Owens', 'L', '2003-12-01', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-B1'),
('164', 'Jace Zhang', 'L', '2003-12-02', 'Binjai', 2, 'pexels-pixabay-220453.jpg', '9-B1'),
('165', 'Jordan Gomez', 'L', '2003-12-03', 'Binjai', 3, 'pexels-pixabay-220453.jpg', '9-B1'),
('166', 'Jacob Davis', 'L', '2003-12-04', 'Binjai', 1, 'pexels-pixabay-220453.jpg', '9-B2'),
('167', 'Eli Gupta', 'L', '2003-12-05', 'Binjai', 5, 'pexels-pixabay-220453.jpg', '9-B2'),
('168', 'Andrew Huynh', 'L', '2003-12-06', 'Binjai', 2, 'pexels-pixabay-220453.jpg', '9-B2'),
('169', 'Samuel Vega', 'L', '2003-12-07', 'Medan', 2, 'pexels-pixabay-220453.jpg', '9-B2'),
('170', 'Isaac Sanders', 'L', '2003-12-08', 'Medan', 1, 'pexels-pixabay-220453.jpg', '9-B2'),
('171', 'Lucas Ramos', 'L', '2003-12-09', 'Medan', 4, 'pexels-pixabay-220453.jpg', '9-B2'),
('172', 'Santiago f Gonzalez', 'L', '2003-12-10', 'Medan', 5, 'pexels-pixabay-220453.jpg', '9-B2'),
('173', 'Henry Zhu', 'L', '2003-12-11', 'Medan', 5, 'pexels-pixabay-220453.jpg', '9-B2'),
('174', 'Nathan Sun', 'L', '2003-12-12', 'Medan', 4, 'pexels-pixabay-220453.jpg', '9-B2'),
('175', 'Connor Walker', 'L', '2003-12-13', 'Medan', 5, 'pexels-pixabay-220453.jpg', '9-B2'),
('176', 'Ezekiel Fong', 'L', '2003-12-14', 'Medan', 4, 'pexels-pixabay-220453.jpg', '9-B2'),
('177', 'Dylan Thao', 'L', '2003-12-15', 'Medan', 2, 'pexels-pixabay-220453.jpg', '9-B2'),
('178', 'Daniel Perry', 'L', '2003-12-16', 'Medan', 2, 'pexels-pixabay-220453.jpg', '9-B2'),
('179', 'Ian Ngo', 'L', '2003-12-17', 'Medan', 2, 'pexels-pixabay-220453.jpg', '9-B2'),
('180', 'Joseph Vazquez', 'L', '2003-12-18', 'Medan', 1, 'pexels-pixabay-220453.jpg', '9-B2'),
('181', 'Emily Davis', 'P', '2003-02-01', 'Medan', 2, 'pexels-pixabay-220453.jpg', '7-A1'),
('182', 'Luna Sanders', 'P', '2003-02-02', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-A1'),
('183', 'Penelope Jordan', 'P', '2003-02-03', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-A1'),
('184', 'Ruby Barnes', 'P', '2003-02-04', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-A1'),
('185', 'Madeline Walker', 'P', '2003-02-05', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-A1'),
('186', 'Savannah Ali', 'P', '2003-02-06', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-A1'),
('187', 'Camila Rogers', 'P', '2003-02-07', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-A1'),
('188', 'Everleigh Ng', 'P', '2003-02-08', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A1'),
('189', 'Isabella Xi', 'P', '2003-02-09', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-A1'),
('190', 'Bella Powell', 'P', '2003-02-10', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A1'),
('191', 'Camila Silva', 'P', '2003-02-11', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-A1'),
('192', 'Eva Rivera', 'P', '2003-02-12', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A1'),
('193', 'Abigail Mejia', 'P', '2003-02-13', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-A1'),
('194', 'Caroline Jenkins', 'P', '2003-02-14', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-A1'),
('195', 'Nora Brown', 'P', '2003-02-15', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-A1'),
('196', 'Adeline Huang', 'P', '2003-02-16', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A2'),
('197', 'Riley Padilla', 'P', '2003-02-17', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A2'),
('198', 'Leah Pena', 'P', '2003-02-18', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-A2'),
('199', 'Kennedy Foster', 'P', '2003-02-19', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A2'),
('200', 'Sadie Washington', 'P', '2003-02-20', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-A2'),
('201', 'Eva Coleman', 'P', '2003-02-21', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A2'),
('202', 'Lucy Alexander', 'P', '2003-02-22', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A2'),
('203', 'Everleigh Washington', 'P', '2003-02-23', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-A2'),
('204', 'Leilani Butler', 'P', '2003-02-24', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A2'),
('205', 'Peyton Huang', 'P', '2003-02-25', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-A2'),
('206', 'Rylee Yu', 'P', '2003-02-26', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-A2'),
('207', 'Piper Lewis', 'P', '2003-02-27', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-A2'),
('208', 'Stella Alexander', 'P', '2003-02-28', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-A2'),
('209', 'Addison Do', 'P', '2003-03-01', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-A2'),
('210', 'Zoey Jackson', 'P', '2003-03-02', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-A2'),
('211', 'Ava Ayala', 'P', '2003-03-03', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-B1'),
('212', 'Natalia Salazar', 'P', '2003-03-04', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-B1'),
('213', 'Skylar Carrillo', 'P', '2003-03-05', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-B1'),
('214', 'Penelope Coleman', 'P', '2003-03-06', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-B1'),
('215', 'Piper Richardson', 'P', '2003-03-07', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-B1'),
('216', 'Everly Walker', 'P', '2003-03-08', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-B1'),
('217', 'Aurora Ali', 'P', '2003-03-09', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-B1'),
('218', 'Penelope Guerrero', 'P', '2003-03-10', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-B1'),
('219', 'Anna Mehta', 'P', '2003-03-11', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-B1'),
('220', 'Jade Rojas', 'P', '2003-03-12', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-B1'),
('221', 'Isla Espinoza', 'P', '2003-03-13', 'Medan', 2, 'fashionable-7198003_1920.jpg', '7-B1'),
('222', 'Mila Hong', 'P', '2003-03-14', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-B1'),
('223', 'Everleigh Fernandez', 'P', '2003-03-15', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-B1'),
('224', 'Willow Mai', 'P', '2003-03-16', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-B1'),
('225', 'Genesis Navarro', 'P', '2003-03-17', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-B1'),
('226', 'Eliza Hernandez', 'P', '2003-03-18', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-B2'),
('227', 'Everly Chow', 'P', '2003-03-19', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-B2'),
('228', 'Amelia Salazar', 'P', '2003-03-20', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-B2'),
('229', 'Mia Cheng', 'P', '2003-03-21', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-B2'),
('230', 'Rylee Yu', 'P', '2003-03-22', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-B2'),
('231', 'Zoe Romero', 'P', '2003-03-23', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-B2'),
('232', 'Nevaeh Jones', 'P', '2003-03-24', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-B2'),
('233', 'Samantha Adams', 'P', '2003-03-25', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-B2'),
('234', 'Madeline Shin', 'P', '2003-03-26', 'Medan', 1, 'fashionable-7198003_1920.jpg', '7-B2'),
('235', 'Leilani Chow', 'P', '2003-03-27', 'Medan', 5, 'fashionable-7198003_1920.jpg', '7-B2'),
('236', 'Ivy Soto', 'P', '2003-03-28', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-B2'),
('237', 'Aurora Simmons', 'P', '2003-03-29', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-B2'),
('238', 'Gabriella Gupta', 'P', '2003-03-30', 'Medan', 4, 'fashionable-7198003_1920.jpg', '7-B2'),
('239', 'Skylar Liu', 'P', '2003-03-31', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-B2'),
('240', 'Nova Coleman', 'P', '2003-04-01', 'Medan', 3, 'fashionable-7198003_1920.jpg', '7-B2'),
('241', 'Evelyn Dinh', 'P', '2003-04-02', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('242', 'Mia Lam', 'P', '2003-04-03', 'Medan', 3, 'fashionable-7198003_1920.jpg', '8-A1'),
('243', 'Scarlett Rodriguez', 'P', '2003-04-04', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('244', 'Cora Rivera', 'P', '2003-04-05', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('245', 'Sophia Huynh', 'P', '2003-04-06', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('246', 'Athena Carrillo', 'P', '2003-04-07', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-A1'),
('247', 'Vivian Lewis', 'P', '2003-04-08', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('248', 'Elena Vang', 'P', '2003-04-09', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A1'),
('249', 'Natalia Diaz', 'P', '2003-04-10', 'Medan', 3, 'fashionable-7198003_1920.jpg', '8-A1'),
('250', 'Mila Leung', 'P', '2003-04-11', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('251', 'Ava Nelson', 'P', '2003-04-12', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('252', 'Isla Lai', 'P', '2003-04-13', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-A1'),
('253', 'Everleigh Espinoza', 'P', '2003-04-14', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('254', 'Evelyn Jung', 'P', '2003-04-15', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A1'),
('255', 'Sophie Silva', 'P', '2003-04-16', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A1'),
('256', 'Kennedy Rahman', 'P', '2003-04-17', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A2'),
('257', 'Nevaeh Kang', 'P', '2003-04-18', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A2'),
('258', 'Hannah Nelson', 'P', '2003-04-19', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A2'),
('259', 'Paisley Kang', 'P', '2003-04-20', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-A2'),
('260', 'Genesis Perry', 'P', '2003-04-21', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-A2'),
('261', 'Lily Carter', 'P', '2003-04-22', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A2'),
('262', 'Avery Bailey', 'P', '2003-04-23', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-A2'),
('263', 'Piper Cheng', 'P', '2003-04-24', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-A2'),
('264', 'Skylar Watson', 'P', '2003-04-25', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A2'),
('265', 'Camila Watson', 'P', '2003-04-26', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-A2'),
('266', 'Skylar Doan', 'P', '2003-04-27', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A2'),
('267', 'Gianna Williams', 'P', '2003-04-28', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-A2'),
('268', 'Emma Brooks', 'P', '2003-04-29', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A2'),
('269', 'Isla Wong', 'P', '2003-04-30', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-A2'),
('270', 'Everly Walker', 'P', '2003-05-01', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-A2'),
('271', 'Mila Pena', 'P', '2003-05-02', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-B1'),
('272', 'Ava Garza', 'P', '2003-05-03', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-B1'),
('273', 'Maria Griffin', 'P', '2003-05-04', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-B1'),
('274', 'Maria Hong', 'P', '2003-05-05', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-B1'),
('275', 'Sophie Ali', 'P', '2003-05-06', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-B1'),
('276', 'Emma Hill', 'P', '2003-05-07', 'Medan', 3, 'fashionable-7198003_1920.jpg', '8-B1'),
('277', 'Leilani Yee', 'P', '2003-05-08', 'Medan', 3, 'fashionable-7198003_1920.jpg', '8-B1'),
('278', 'Charlotte Chu', 'P', '2003-05-09', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-B1'),
('279', 'Ayla Ng', 'P', '2003-05-10', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-B1'),
('280', 'Aubrey Romero', 'P', '2003-05-11', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-B1'),
('281', 'Luna Liu', 'P', '2003-05-12', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-B1'),
('282', 'Brooklyn Reyes', 'P', '2003-05-13', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-B1'),
('283', 'Hadley Parker', 'P', '2003-05-14', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-B1'),
('284', 'Sarah Ayala', 'P', '2003-05-15', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-B1'),
('285', 'Ella White', 'P', '2003-05-16', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-B1'),
('286', 'Nova Herrera', 'P', '2003-05-17', 'Medan', 3, 'fashionable-7198003_1920.jpg', '8-B2'),
('287', 'Luna Simmons', 'P', '2003-05-18', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-B2'),
('288', 'Samantha Barnes', 'P', '2003-05-19', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-B2'),
('289', 'Skylar Bell', 'P', '2003-05-20', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-B2'),
('290', 'Anna Zhu', 'P', '2003-05-21', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-B2'),
('291', 'Ella Hunter', 'P', '2003-05-22', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-B2'),
('292', 'Emery Hunter', 'P', '2003-05-23', 'Medan', 2, 'fashionable-7198003_1920.jpg', '8-B2'),
('293', 'Sofia Parker', 'P', '2003-05-24', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-B2'),
('294', 'Lucy Fong', 'P', '2003-05-25', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-B2'),
('295', 'Vivian Barnes', 'P', '2003-05-26', 'Medan', 3, 'fashionable-7198003_1920.jpg', '8-B2'),
('296', 'Melody Cooper', 'P', '2003-05-27', 'Medan', 3, 'fashionable-7198003_1920.jpg', '8-B2'),
('297', 'Kinsley Vega', 'P', '2003-05-28', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-B2'),
('298', 'Emilia Rivera', 'P', '2003-05-29', 'Medan', 4, 'fashionable-7198003_1920.jpg', '8-B2'),
('299', 'Penelope Johnson', 'P', '2003-05-30', 'Medan', 5, 'fashionable-7198003_1920.jpg', '8-B2'),
('300', 'Eva Figueroa', 'P', '2003-05-31', 'Medan', 1, 'fashionable-7198003_1920.jpg', '8-B2'),
('301', 'Cora Jiang', 'P', '2003-06-01', 'Medan', 3, 'fashionable-7198003_1920.jpg', '9-A1'),
('302', 'Layla Torres', 'P', '2003-06-02', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-A1'),
('303', 'Eleanor Chan', 'P', '2003-06-03', 'Medan', 5, 'fashionable-7198003_1920.jpg', '9-A1'),
('304', 'Aria Xi', 'P', '2003-06-04', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-A1'),
('305', 'Sarah Daniels', 'P', '2003-06-05', 'Medan', 4, 'fashionable-7198003_1920.jpg', '9-A1'),
('306', 'Aria Castro', 'P', '2003-06-06', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-A1'),
('307', 'Autumn Joseph', 'P', '2003-06-07', 'Medan', 4, 'fashionable-7198003_1920.jpg', '9-A1'),
('308', 'Evelyn Liang', 'P', '2003-06-08', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-A1'),
('309', 'Zoe Rodriguez', 'P', '2003-06-09', 'Medan', 3, 'fashionable-7198003_1920.jpg', '9-A1'),
('310', 'Isabella Soto', 'P', '2003-06-10', 'Medan', 5, 'fashionable-7198003_1920.jpg', '9-A1'),
('311', 'Eva Jenkins', 'P', '2003-06-11', 'Medan', 3, 'fashionable-7198003_1920.jpg', '9-A1'),
('312', 'Samantha Foster', 'P', '2003-06-12', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-A1'),
('313', 'Jade Li', 'P', '2003-06-13', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-A1'),
('314', 'Kinsley Acosta', 'P', '2003-06-14', 'Medan', 5, 'fashionable-7198003_1920.jpg', '9-A1'),
('315', 'Clara Kang', 'P', '2003-06-15', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-A1'),
('316', 'Harper Alexander', 'P', '2003-06-16', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-A2'),
('317', 'Charlotte Ruiz', 'P', '2003-06-17', 'Medan', 3, 'fashionable-7198003_1920.jpg', '9-A2'),
('318', 'Everleigh Jiang', 'P', '2003-06-18', 'Medan', 4, 'fashionable-7198003_1920.jpg', '9-A2'),
('319', 'Audrey Smith', 'P', '2003-06-19', 'Medan', 5, 'fashionable-7198003_1920.jpg', '9-A2'),
('320', 'Emery Acosta', 'P', '2003-06-20', 'Medan', 3, 'fashionable-7198003_1920.jpg', '9-A2'),
('321', 'Nora Santiago', 'P', '2003-06-21', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-A2'),
('322', 'Caroline Herrera', 'P', '2003-06-22', 'Medan', 4, 'fashionable-7198003_1920.jpg', '9-A2'),
('323', 'Avery Yee', 'P', '2003-06-23', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-A2'),
('324', 'Maria Chin', 'P', '2003-06-24', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-A2'),
('325', 'Eva Garcia', 'P', '2003-06-25', 'Medan', 4, 'fashionable-7198003_1920.jpg', '9-A2'),
('326', 'Anna Molina', 'P', '2003-06-26', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-A2'),
('327', 'Isla Han', 'P', '2003-06-27', 'Medan', 3, 'fashionable-7198003_1920.jpg', '9-A2'),
('328', 'Lillian Park', 'P', '2003-06-28', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-A2'),
('329', 'Kennedy Zhang', 'P', '2003-06-29', 'Medan', 4, 'fashionable-7198003_1920.jpg', '9-A2'),
('330', 'Julia Pham', 'P', '2003-06-30', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-A2'),
('331', 'Hailey Shin', 'P', '2003-07-01', 'Medan', 5, 'fashionable-7198003_1920.jpg', '9-B1'),
('332', 'Natalia Owens', 'P', '2003-07-02', 'Medan', 4, 'fashionable-7198003_1920.jpg', '9-B1'),
('333', 'Maria He', 'P', '2003-07-03', 'Medan', 5, 'fashionable-7198003_1920.jpg', '9-B1'),
('334', 'Jade Yi', 'P', '2003-07-04', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-B1'),
('335', 'Quinn Xiong', 'P', '2003-07-05', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-B1'),
('336', 'Autumn Reed', 'P', '2003-07-06', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-B1'),
('337', 'Eleanor Li', 'P', '2003-07-07', 'Medan', 5, 'fashionable-7198003_1920.jpg', '9-B1'),
('338', 'Ellie Chung', 'P', '2003-07-08', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-B1'),
('339', 'Violet Hall', 'P', '2003-07-09', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-B1'),
('340', 'Ayla Brown', 'P', '2003-07-10', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-B1'),
('341', 'Emery Mitchell', 'P', '2003-07-11', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-B1'),
('342', 'Sophia Ahmed', 'P', '2003-07-12', 'Medan', 2, 'fashionable-7198003_1920.jpg', '9-B1'),
('343', 'Sofia Dinh', 'P', '2003-07-13', 'Medan', 3, 'fashionable-7198003_1920.jpg', '9-B1'),
('344', 'Piper Patterson', 'P', '2003-07-14', 'Medan', 4, 'fashionable-7198003_1920.jpg', '9-B1'),
('345', 'Cora Evans', 'P', '2003-07-15', 'Medan', 1, 'fashionable-7198003_1920.jpg', '9-B1'),
('346', 'Melody Ho', 'P', '2003-07-16', 'Siantar', 5, 'fashionable-7198003_1920.jpg', '9-B2'),
('347', 'Scarlett Figueroa', 'P', '2003-07-17', 'Siantar', 3, 'fashionable-7198003_1920.jpg', '9-B2'),
('348', 'Madeline Hoang', 'P', '2003-07-18', 'Siantar', 3, 'fashionable-7198003_1920.jpg', '9-B2'),
('349', 'Ruby Medina', 'P', '2003-07-19', 'Siantar', 2, 'fashionable-7198003_1920.jpg', '9-B2'),
('350', 'Rylee Dinh', 'P', '2003-07-20', 'Siantar', 4, 'fashionable-7198003_1920.jpg', '9-B2'),
('351', 'Caroline Owens', 'P', '2003-07-21', 'Siantar', 1, 'fashionable-7198003_1920.jpg', '9-B2'),
('352', 'Kennedy Do', 'P', '2003-07-22', 'Siantar', 2, 'fashionable-7198003_1920.jpg', '9-B2'),
('353', 'Jade Acosta', 'P', '2003-07-23', 'Siantar', 3, 'fashionable-7198003_1920.jpg', '9-B2'),
('354', 'Mila Vasquez', 'P', '2003-07-24', 'Siantar', 4, 'fashionable-7198003_1920.jpg', '9-B2'),
('355', 'Allison Ayala', 'P', '2003-07-25', 'Siantar', 5, 'fashionable-7198003_1920.jpg', '9-B2'),
('356', 'Allison Medina', 'P', '2003-07-26', 'Siantar', 4, 'fashionable-7198003_1920.jpg', '9-B2'),
('357', 'Maria Wilson', 'P', '2003-07-27', 'Siantar', 2, 'fashionable-7198003_1920.jpg', '9-B2'),
('358', 'Everly Coleman', 'P', '2003-07-28', 'Siantar', 2, 'fashionable-7198003_1920.jpg', '9-B2'),
('359', 'Isla Chavez', 'P', '2003-07-29', 'Siantar', 1, 'fashionable-7198003_1920.jpg', '9-B2'),
('360', 'Hannah Gomez', 'P', '2003-07-30', 'Siantar', 5, 'fashionable-7198003_1920.jpg', '9-B2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun_akademik`
--

CREATE TABLE `tbl_tahun_akademik` (
  `id_tahun_akademik` int(11) NOT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_tahun_akademik`:
--

--
-- Dumping data for table `tbl_tahun_akademik`
--

INSERT INTO `tbl_tahun_akademik` (`id_tahun_akademik`, `tahun_akademik`, `is_aktif`, `semester`) VALUES
(1, '2018/2019', 'N', 'ganjil'),
(2, '2017/2018', 'N', 'genap'),
(5, '2019/2020', 'N', 'genap'),
(6, '2021/2022', 'N', ''),
(7, '2022/2023', 'Y', 'ganjil');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkatan_kelas`
--

CREATE TABLE `tbl_tingkatan_kelas` (
  `kd_tingkatan` varchar(5) NOT NULL,
  `nama_tingkatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_tingkatan_kelas`:
--

--
-- Dumping data for table `tbl_tingkatan_kelas`
--

INSERT INTO `tbl_tingkatan_kelas` (`kd_tingkatan`, `nama_tingkatan`) VALUES
('7', 'Tingkat Kelas 7 (VII)'),
('8', 'Tingkat Kelas 8 (VIII)'),
('9', 'Tingkat Kelas 9 (IX)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_user`:
--

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`) VALUES
(1, 'Angga Warjaya', 'angga', 'e10adc3949ba59abbe56e057f20f883e', 1, 'angga.png'),
(2, 'Ahmad Taufik Ramadhan', 'ahmad', 'e10adc3949ba59abbe56e057f20f883e', 1, 'ahmad.png'),
(3, 'Padli Husaini Pahutar', 'padli', 'e10adc3949ba59abbe56e057f20f883e', 1, 'padli.png'),
(4, 'Alfina Richi', 'alfina', 'e10adc3949ba59abbe56e057f20f883e', 4, 'alfina.png'),
(5, 'Vina Anggriani', 'vina', 'e10adc3949ba59abbe56e057f20f883e', 2, 'vina.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rule`
--

CREATE TABLE `tbl_user_rule` (
  `id_rule` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_user_rule`:
--

--
-- Dumping data for table `tbl_user_rule`
--

INSERT INTO `tbl_user_rule` (`id_rule`, `id_menu`, `id_level_user`) VALUES
(1, 16, 4),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 7, 1),
(8, 8, 1),
(9, 11, 1),
(10, 6, 1),
(11, 14, 1),
(12, 15, 1),
(13, 13, 1),
(14, 12, 1),
(15, 10, 1),
(16, 9, 1),
(17, 11, 3),
(19, 17, 3),
(20, 18, 3),
(21, 12, 3),
(22, 17, 4),
(24, 2, 4),
(29, 12, 4),
(30, 10, 4),
(31, 9, 4),
(32, 8, 4),
(33, 7, 4),
(34, 6, 4),
(35, 5, 4),
(36, 4, 4),
(37, 3, 4),
(38, 12, 2),
(39, 2, 2),
(40, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walikelas`
--

CREATE TABLE `tbl_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `tbl_walikelas`:
--

--
-- Dumping data for table `tbl_walikelas`
--

INSERT INTO `tbl_walikelas` (`id_walikelas`, `id_guru`, `id_tahun_akademik`, `kd_kelas`) VALUES
(25, 2, 7, '7-A1'),
(26, 18, 7, '7-A2'),
(27, 3, 7, '7-B1'),
(28, 4, 7, '7-B2'),
(29, 12, 7, '8-A1'),
(30, 13, 7, '8-A2'),
(31, 14, 7, '8-B1'),
(32, 15, 7, '8-B2'),
(33, 20, 7, '9-A1'),
(34, 21, 7, '9-A2'),
(35, 22, 7, '9-B1'),
(36, 23, 7, '9-B2');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_kelas`
-- (See below for the actual view)
--
CREATE TABLE `view_kelas` (
`kd_kelas` varchar(5)
,`nama_kelas` varchar(30)
,`kd_tingkatan` varchar(5)
,`kd_jurusan` varchar(5)
,`nama_tingkatan` varchar(30)
,`nama_jurusan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user`
-- (See below for the actual view)
--
CREATE TABLE `view_user` (
`id_user` int(11)
,`nama_lengkap` varchar(40)
,`username` varchar(30)
,`password` varchar(40)
,`id_level_user` int(11)
,`foto` text
,`nama_level` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_walikelas`
-- (See below for the actual view)
--
CREATE TABLE `view_walikelas` (
`nama_guru` varchar(40)
,`nama_kelas` varchar(30)
,`id_walikelas` int(11)
,`id_tahun_akademik` int(11)
,`nama_jurusan` varchar(30)
,`nama_tingkatan` varchar(30)
,`tahun_akademik` varchar(10)
);

-- --------------------------------------------------------

--
-- Structure for view `view_kelas` exported as a table
--
DROP TABLE IF EXISTS `view_kelas`;
CREATE TABLE`view_kelas`(
    `kd_kelas` varchar(5) COLLATE latin1_swedish_ci NOT NULL,
    `nama_kelas` varchar(30) COLLATE latin1_swedish_ci NOT NULL,
    `kd_tingkatan` varchar(5) COLLATE latin1_swedish_ci NOT NULL,
    `kd_jurusan` varchar(5) COLLATE latin1_swedish_ci NOT NULL,
    `nama_tingkatan` varchar(30) COLLATE latin1_swedish_ci NOT NULL,
    `nama_jurusan` varchar(30) COLLATE latin1_swedish_ci NOT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `view_user` exported as a table
--
DROP TABLE IF EXISTS `view_user`;
CREATE TABLE`view_user`(
    `id_user` int(11) NOT NULL DEFAULT '0',
    `nama_lengkap` varchar(40) COLLATE latin1_swedish_ci NOT NULL,
    `username` varchar(30) COLLATE latin1_swedish_ci NOT NULL,
    `password` varchar(40) COLLATE latin1_swedish_ci NOT NULL,
    `id_level_user` int(11) NOT NULL,
    `foto` text COLLATE latin1_swedish_ci NOT NULL,
    `nama_level` varchar(30) COLLATE latin1_swedish_ci NOT NULL
);

-- --------------------------------------------------------

--
-- Structure for view `view_walikelas` exported as a table
--
DROP TABLE IF EXISTS `view_walikelas`;
CREATE TABLE`view_walikelas`(
    `nama_guru` varchar(40) COLLATE latin1_swedish_ci NOT NULL,
    `nama_kelas` varchar(30) COLLATE latin1_swedish_ci NOT NULL,
    `id_walikelas` int(11) NOT NULL DEFAULT '0',
    `id_tahun_akademik` int(11) NOT NULL,
    `nama_jurusan` varchar(30) COLLATE latin1_swedish_ci NOT NULL,
    `nama_tingkatan` varchar(30) COLLATE latin1_swedish_ci NOT NULL,
    `tahun_akademik` varchar(10) COLLATE latin1_swedish_ci NOT NULL
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`kd_agama`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indexes for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  ADD PRIMARY KEY (`id_kurikulum_detail`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `tbl_riwayat_kelas`
--
ALTER TABLE `tbl_riwayat_kelas`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`kd_ruangan`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indexes for table `tbl_tingkatan_kelas`
--
ALTER TABLE `tbl_tingkatan_kelas`
  ADD PRIMARY KEY (`kd_tingkatan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  MODIFY `id_kurikulum_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  MODIFY `id_level_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_riwayat_kelas`
--
ALTER TABLE `tbl_riwayat_kelas`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  MODIFY `id_tahun_akademik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
