-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 07:07 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd_15_with_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_ta` varchar(5) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `id_wali_kelas` varchar(5) NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `hadir` int(3) NOT NULL,
  `sakit` int(3) NOT NULL,
  `izin` int(3) NOT NULL,
  `alfa` int(3) NOT NULL,
  `tinggi` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `penglihatan` varchar(25) NOT NULL,
  `pendengaran` varchar(25) NOT NULL,
  `gigi` varchar(25) NOT NULL,
  `penyakit_lainnya` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_kelas`, `id_ta`, `semester`, `id_wali_kelas`, `id_siswa`, `hadir`, `sakit`, `izin`, `alfa`, `tinggi`, `berat`, `penglihatan`, `pendengaran`, `gigi`, `penyakit_lainnya`) VALUES
(1, '1', '1', '1', '', '1', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(2, '1', '1', '1', '', '2', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(3, '2', '1', '1', '', '3', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(4, '2', '1', '1', '', '4', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(5, '3', '1', '1', '', '5', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(6, '3', '1', '1', '', '6', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(7, '4', '1', '1', '', '7', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(8, '4', '1', '1', '', '8', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(9, '5', '1', '1', '', '9', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(10, '5', '1', '1', '', '10', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(11, '6', '1', '1', '', '11', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(12, '6', '1', '1', '', '12', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(13, '1', '1', '2', '', '1', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(14, '1', '1', '2', '', '2', 0, 1, 1, 1, 0, 0, '', '', '', ''),
(15, '1', '2', '1', '', '14', 0, 0, 0, 0, 0, 0, '', '', '', ''),
(16, '1', '2', '1', '', '13', 0, 0, 0, 0, 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` text NOT NULL,
  `level` varchar(15) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `username`, `password`, `level`, `foto`) VALUES
(6, 'Adit', '111', '111', 'Admin', ''),
(7, 'Unknown', '22', '22', 'Master', '');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(25) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `tmpl` varchar(25) NOT NULL,
  `tgll` date NOT NULL,
  `nip` varchar(25) NOT NULL,
  `gol` varchar(25) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `tmt` date NOT NULL,
  `mulai_masuk` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `ijazah_tahun` varchar(25) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `jk`, `tmpl`, `tgll`, `nip`, `gol`, `jabatan`, `tmt`, `mulai_masuk`, `alamat`, `nohp`, `ijazah_tahun`, `foto`) VALUES
(1, 'Rohani, S.Pd', 'P', 'Padang', '1966-08-21', '19660821 199005 2001', 'KEPALA SEKOLAH', 'PEMBINA TK.I IV/B', '2016-04-01', '', 'KOMP.PERUM BSD 1 BLOK R PASIA NAN TIGO ', '-', 'S1 UNP-2003	', ''),
(2, 'Yunidar, S.Pd', 'P', 'Padang', '1967-06-25', '19630625 199303 2001', ' GURU KELAS	', 'PEMBINA IV/B', '2014-09-01', '2020', 'PERUM BARINGIN INDAH 1 6/7', '-', 'S1 UT-2004	', ''),
(5, 'Yulianti, S.Pd ,SD', 'P', 'Padang ', '1970-10-05', '19701005 199303 2001', 'GURU KELAS', 'PEMBINA IV/B', '2015-09-01', '', 'KOMP GRIYA BLOK C1/14', '00000999', 'S1 UT-2011	', ''),
(6, 'Linda, S.Pd', 'P', 'Padang', '1969-04-16', '19690416 200802 2003', 'GURU KELAS', 'PEMBINA III/A', '2016-04-01', '', 'KOMP JABAL RAHMAH ', '-', 'S1 UT-20013	', ''),
(7, 'Riska Prima Putri, S.Pd', 'P', 'Solok', '1984-11-12', '-', 'GURU KELAS', '-', '0001-01-01', '', 'JLN.AMPANG RT IV/07 19A', '-', 'S1 UBH-2011	', ''),
(8, 'Vivit Triani', 'P', 'Padang ', '1984-02-28', '-', 'OPERATOR', '', '0001-01-01', '', 'JLN.ANDALAS TIMUR II 133', '-', 'D1 DUTA KOM-2004	', ''),
(9, 'Fitra Suryani, S.Pd,I', 'P', 'Sungai Landin', '1988-10-10', '-', 'GURU KELAS', '-', '0001-01-01', '', 'JLN.BANDU PARAK GORONG', '-', 'S1 IAIN -2012	', ''),
(10, 'Melisa, S.Pd.I', 'P', 'Padang', '1991-05-06', '-', 'GURU PAI', '-', '0001-01-01', '', 'JLN.GAJAH MADA No 32', '-', 'S1 IAIN -2014	', ''),
(11, 'Erlina Marlini, S.E', 'P', 'Padang', '1987-03-09', '-', 'PUSTAKA', '-', '0001-01-01', '', 'JLN.BANUARAN', '-', 'S1 TAMSIS -2015	', ''),
(12, 'Yessi Permata Sari, S.Pd', 'P', 'Padang', '1993-12-31', '-', 'GURU KELAS', '-', '0001-01-01', '', 'PERUM PPI BLOK 5.2 PASIR KANDANG', '-', 'S1 UBH-2015	', '');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(3) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL,
  `tingkat` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `tingkat`) VALUES
(1, '1A', '1'),
(2, '2A', '2'),
(3, '3A', '3'),
(4, '4A', '4'),
(5, '5A', '5'),
(6, '6A', '6');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id_ks` int(11) NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_wali_kelas` varchar(5) NOT NULL,
  `id_ta` varchar(5) NOT NULL,
  `id_next_kelas` varchar(5) NOT NULL,
  `id_ta_next` varchar(5) NOT NULL,
  `status_ks` varchar(15) NOT NULL,
  `catatan_wali_kelas_semester_1` text NOT NULL,
  `catatan_wali_kelas_semester_2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id_ks`, `id_siswa`, `id_kelas`, `id_wali_kelas`, `id_ta`, `id_next_kelas`, `id_ta_next`, `status_ks`, `catatan_wali_kelas_semester_1`, `catatan_wali_kelas_semester_2`) VALUES
(14, '14', '1', '9', '2', '2', '3', 'Lanjut', '', 'giat belajar lagi yah'),
(15, '13', '1', '9', '2', '2', '3', 'Lanjut', '', 'goood job'),
(16, '14', '2', '10', '3', '3', '4', 'Lanjut', '', 'goood'),
(17, '13', '2', '10', '3', '3', '4', 'Lanjut', '', 'goood'),
(18, '14', '3', '3', '4', '4', '5', 'Lanjut', '', ''),
(19, '13', '3', '3', '4', '4', '5', 'Lanjut', '', ''),
(20, '14', '4', '4', '5', '5', '6', 'Lanjut', '', ''),
(21, '13', '4', '4', '5', '5', '6', 'Lanjut', '', ''),
(22, '14', '5', '5', '6', '6', '7', 'Lanjut', '', ''),
(23, '13', '5', '5', '6', '6', '7', 'Lanjut', '', ''),
(24, '14', '6', '6', '7', '', '', 'Lulus', '', ''),
(25, '13', '6', '6', '7', '', '', 'Lulus', '', ''),
(26, '15', '1', '9', '8', '', '', 'Aktif', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(4) NOT NULL,
  `tingkat` varchar(5) NOT NULL,
  `nama_mapel` text NOT NULL,
  `kkm` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `tingkat`, `nama_mapel`, `kkm`) VALUES
(1, '1', 'Agama', 50),
(2, '1', 'PPKN', 50),
(3, '1', 'Bahasa Indonesia', 50),
(4, '1', 'Matematika', 50),
(5, '1', 'Seni Budaya', 50),
(6, '1', 'Olahraga', 50),
(7, '1', 'BTA', 50),
(8, '2', 'Agama', 50),
(9, '2', 'PPKN', 50),
(10, '2', 'Bahasa Indonesia', 50),
(11, '2', 'Matematika', 50),
(12, '2', 'Seni Budaya', 50),
(13, '2', 'Olahraga', 50),
(14, '2', 'BTA', 50),
(15, '3', 'Agama', 50),
(16, '3', 'PPKN', 50),
(17, '3', 'Bahasa Indonesia', 50),
(18, '3', 'Matematika', 50),
(19, '3', 'Seni Budaya', 50),
(20, '3', 'Olahraga', 50),
(21, '3', 'BTA', 50),
(22, '4', 'Agama', 50),
(23, '4', 'Bahasa Indonesia', 50),
(24, '4', 'Matematika', 50),
(25, '4', 'Olahraga', 50),
(26, '5', 'Bahasa Indonesia', 50),
(27, '5', 'Agama', 50),
(28, '5', 'Matematika', 50),
(29, '5', 'Olahraga', 50),
(30, '6', 'Matematika', 50),
(31, '6', 'Bahasa Indonesia', 50),
(32, '6', 'Agama', 50),
(33, '6', 'Olahraga', 50);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `id_ta` varchar(5) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `id_wali_kelas` varchar(5) NOT NULL,
  `id_mapel` varchar(5) NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_kelas`, `id_ta`, `semester`, `id_wali_kelas`, `id_mapel`, `id_siswa`, `nilai`) VALUES
(85, '1', '2', '1', '8', '1', '14', 90),
(86, '1', '2', '1', '8', '2', '14', 90),
(87, '1', '2', '1', '8', '3', '14', 90),
(88, '1', '2', '1', '8', '4', '14', 80),
(89, '1', '2', '1', '8', '5', '14', 70),
(90, '1', '2', '1', '8', '6', '14', 70),
(91, '1', '2', '1', '8', '7', '14', 80),
(92, '1', '2', '1', '8', '1', '13', 80),
(93, '1', '2', '1', '8', '2', '13', 90),
(94, '1', '2', '1', '8', '3', '13', 90),
(95, '1', '2', '1', '8', '4', '13', 90),
(96, '1', '2', '1', '8', '5', '13', 90),
(97, '1', '2', '1', '8', '6', '13', 70),
(98, '1', '2', '1', '8', '7', '13', 80),
(99, '1', '2', '2', '8', '1', '14', 90),
(100, '1', '2', '2', '8', '2', '14', 90),
(101, '1', '2', '2', '8', '3', '14', 90),
(102, '1', '2', '2', '8', '4', '14', 80),
(103, '1', '2', '2', '8', '5', '14', 80),
(104, '1', '2', '2', '8', '6', '14', 80),
(105, '1', '2', '2', '8', '7', '14', 70),
(106, '1', '2', '2', '8', '1', '13', 90),
(107, '1', '2', '2', '8', '2', '13', 90),
(108, '1', '2', '2', '8', '3', '13', 90),
(109, '1', '2', '2', '8', '4', '13', 70),
(110, '1', '2', '2', '8', '5', '13', 70),
(111, '1', '2', '2', '8', '6', '13', 80),
(112, '1', '2', '2', '8', '7', '13', 70),
(113, '2', '3', '1', '11', '8', '14', 80),
(114, '2', '3', '1', '11', '9', '14', 80),
(115, '2', '3', '1', '11', '10', '14', 80),
(116, '2', '3', '1', '11', '11', '14', 90),
(117, '2', '3', '1', '11', '12', '14', 90),
(118, '2', '3', '1', '11', '13', '14', 90),
(119, '2', '3', '1', '11', '14', '14', 80),
(120, '2', '3', '1', '11', '8', '13', 90),
(121, '2', '3', '1', '11', '9', '13', 90),
(122, '2', '3', '1', '11', '10', '13', 90),
(123, '2', '3', '1', '11', '11', '13', 90),
(124, '2', '3', '1', '11', '12', '13', 90),
(125, '2', '3', '1', '11', '13', '13', 80),
(126, '2', '3', '1', '11', '14', '13', 70),
(127, '2', '3', '2', '11', '8', '14', 80),
(128, '2', '3', '2', '11', '9', '14', 90),
(129, '2', '3', '2', '11', '10', '14', 90),
(130, '2', '3', '2', '11', '11', '14', 90),
(131, '2', '3', '2', '11', '12', '14', 90),
(132, '2', '3', '2', '11', '13', '14', 90),
(133, '2', '3', '2', '11', '14', '14', 80),
(134, '2', '3', '2', '11', '8', '13', 70),
(135, '2', '3', '2', '11', '9', '13', 90),
(136, '2', '3', '2', '11', '10', '13', 90),
(137, '2', '3', '2', '11', '11', '13', 90),
(138, '2', '3', '2', '11', '12', '13', 90),
(139, '2', '3', '2', '11', '13', '13', 90),
(140, '2', '3', '2', '11', '14', '13', 80),
(141, '3', '4', '1', '6', '15', '14', 90),
(142, '3', '4', '1', '6', '16', '14', 80),
(143, '3', '4', '1', '6', '17', '14', 80),
(144, '3', '4', '1', '6', '18', '14', 80),
(145, '3', '4', '1', '6', '19', '14', 80),
(146, '3', '4', '1', '6', '20', '14', 90),
(147, '3', '4', '1', '6', '21', '14', 70),
(148, '3', '4', '1', '6', '15', '13', 90),
(149, '3', '4', '1', '6', '16', '13', 90),
(150, '3', '4', '1', '6', '17', '13', 90),
(151, '3', '4', '1', '6', '18', '13', 80),
(152, '3', '4', '1', '6', '19', '13', 80),
(153, '3', '4', '1', '6', '20', '13', 80),
(154, '3', '4', '1', '6', '21', '13', 80),
(155, '3', '4', '2', '6', '15', '14', 90),
(156, '3', '4', '2', '6', '16', '14', 90),
(157, '3', '4', '2', '6', '17', '14', 90),
(158, '3', '4', '2', '6', '18', '14', 90),
(159, '3', '4', '2', '6', '19', '14', 90),
(160, '3', '4', '2', '6', '20', '14', 90),
(161, '3', '4', '2', '6', '21', '14', 70),
(162, '3', '4', '2', '6', '15', '13', 80),
(163, '3', '4', '2', '6', '16', '13', 80),
(164, '3', '4', '2', '6', '17', '13', 80),
(165, '3', '4', '2', '6', '18', '13', 90),
(166, '3', '4', '2', '6', '19', '13', 90),
(167, '3', '4', '2', '6', '20', '13', 90),
(168, '3', '4', '2', '6', '21', '13', 90),
(169, '4', '5', '1', '9', '22', '14', 70),
(170, '4', '5', '1', '9', '23', '14', 90),
(171, '4', '5', '1', '9', '24', '14', 90),
(172, '4', '5', '1', '9', '25', '14', 90),
(173, '4', '5', '1', '9', '22', '13', 80),
(174, '4', '5', '1', '9', '23', '13', 90),
(175, '4', '5', '1', '9', '24', '13', 80),
(176, '4', '5', '1', '9', '25', '13', 70),
(177, '4', '5', '2', '9', '22', '14', 90),
(178, '4', '5', '2', '9', '23', '14', 90),
(179, '4', '5', '2', '9', '24', '14', 70),
(180, '4', '5', '2', '9', '25', '14', 70),
(181, '4', '5', '2', '9', '22', '13', 90),
(182, '4', '5', '2', '9', '23', '13', 90),
(183, '4', '5', '2', '9', '24', '13', 90),
(184, '4', '5', '2', '9', '25', '13', 90),
(185, '5', '6', '1', '2', '26', '14', 90),
(186, '5', '6', '1', '2', '27', '14', 90),
(187, '5', '6', '1', '2', '28', '14', 90),
(188, '5', '6', '1', '2', '29', '14', 90),
(189, '5', '6', '1', '2', '26', '13', 90),
(190, '5', '6', '1', '2', '27', '13', 90),
(191, '5', '6', '1', '2', '28', '13', 90),
(192, '5', '6', '1', '2', '29', '13', 90),
(193, '5', '6', '2', '2', '26', '14', 80),
(194, '5', '6', '2', '2', '27', '14', 80),
(195, '5', '6', '2', '2', '28', '14', 80),
(196, '5', '6', '2', '2', '29', '14', 90),
(197, '5', '6', '2', '2', '26', '13', 80),
(198, '5', '6', '2', '2', '27', '13', 90),
(199, '5', '6', '2', '2', '28', '13', 90),
(200, '5', '6', '2', '2', '29', '13', 90),
(201, '6', '7', '1', '5', '30', '14', 90),
(202, '6', '7', '1', '5', '31', '14', 90),
(203, '6', '7', '1', '5', '32', '14', 90),
(204, '6', '7', '1', '5', '33', '14', 80),
(205, '6', '7', '1', '5', '30', '13', 90),
(206, '6', '7', '1', '5', '31', '13', 90),
(207, '6', '7', '1', '5', '32', '13', 90),
(208, '6', '7', '1', '5', '33', '13', 88),
(209, '6', '7', '2', '5', '30', '14', 80),
(210, '6', '7', '2', '5', '31', '14', 90),
(211, '6', '7', '2', '5', '32', '14', 90),
(212, '6', '7', '2', '5', '33', '14', 70),
(213, '6', '7', '2', '5', '30', '13', 90),
(214, '6', '7', '2', '5', '31', '13', 88),
(215, '6', '7', '2', '5', '32', '13', 79),
(216, '6', '7', '2', '5', '33', '13', 96),
(217, '1', '8', '1', '8', '1', '15', 90),
(218, '1', '8', '1', '8', '2', '15', 99),
(219, '1', '8', '1', '8', '3', '15', 99),
(220, '1', '8', '1', '8', '4', '15', 98),
(221, '1', '8', '1', '8', '5', '15', 88),
(222, '1', '8', '1', '8', '6', '15', 70),
(223, '1', '8', '1', '8', '7', '15', 99);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_siswa` varchar(5) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_siswa`, `tanggal_bayar`, `keterangan`, `jumlah`) VALUES
(1, '2', '2021-09-06', 'DO', 45900);

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan`
--

CREATE TABLE `pengambilan` (
  `id_pengambilan` int(11) NOT NULL,
  `id_siswa` varchar(5) NOT NULL,
  `barang` varchar(25) NOT NULL,
  `biaya` int(16) NOT NULL,
  `waktu_pengambilan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengambilan`
--

INSERT INTO `pengambilan` (`id_pengambilan`, `id_siswa`, `barang`, `biaya`, `waktu_pengambilan`) VALUES
(1, '2', 'Baju Olahraga 1 Stel', 150000, '2021-09-06'),
(2, '2', 'Dasi Merah', 70000, '2021-09-06'),
(3, '2', 'Baju Olahraga 1 Stel', 150000, '2021-09-06'),
(4, '2', 'Dasi Merah', 70000, '2021-09-06');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `nama_pengumuman` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_input` date NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `nama_pengumuman`, `keterangan`, `tgl_input`, `file`) VALUES
(8, 'Libur Kemerdekaan Indonesia', '<h2 style=\"font-style:italic;\">Berhubungan besog adalah tanggal 17 Agustus yang bertepatan dengan kemerdekaan Republik Indonesia , Maka Sekolah akan diliburkan selama 2 hari.</h2>\r\n', '2021-08-16', '011827Libur Hari Raya Kemerdekaan Indonesia.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(18) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `prestasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nis`, `nama`, `prestasi`) VALUES
(2, '6767', 'Diana', 'Pemenang Olimpiade Kimia Organik');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(150) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `nisn` varchar(120) NOT NULL,
  `tmpl` varchar(25) NOT NULL,
  `tgll` date NOT NULL,
  `jk` varchar(1) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `pendidikan_sebelumnya` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `nama_ayah` varchar(25) NOT NULL,
  `nama_ibu` varchar(25) NOT NULL,
  `kerja_ayah` varchar(25) NOT NULL,
  `kerja_ibu` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `foto` text NOT NULL,
  `status_siswa` varchar(25) NOT NULL,
  `daftar_via` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `kelas_awal` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nis`, `nisn`, `tmpl`, `tgll`, `jk`, `agama`, `pendidikan_sebelumnya`, `alamat`, `no_telp`, `nama_ayah`, `nama_ibu`, `kerja_ayah`, `kerja_ibu`, `password`, `foto`, `status_siswa`, `daftar_via`, `keterangan`, `kelas_awal`) VALUES
(14, 'Indah', '0898', '', 'Amahai', '2014-01-21', 'P', 'Kristen', 'TK', 'Amaci', '082345464748', 'Rudi', 'Lala', 'PNS', 'Ibu rumah tangga', '123', '230527013218FB_IMG_15190100664886938.jpg', 'Selesai', 'Offline', '', '2'),
(15, 'Diana', '6767', '', 'SBB', '2017-05-27', 'L', 'Islam', 'tidak ', 'Waiheru', '098765432', 'Adi', 'Aya', 'PNS', 'PNS', '123', '230527021514FB_IMG_15190100664886938.jpg', 'Aktif', 'Offline', '', '2'),
(13, 'Abdurahman', '2734', '', 'Ambon', '2015-06-27', 'L', 'Islam', 'TK', 'Batu gajah', '082198989898', 'Wahid', 'Aisyah', 'Karyawan swasta', 'PNS', '123', '230527013128FB_IMG_15190100664886938.jpg', 'Selesai', 'Offline', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `no` int(11) NOT NULL,
  `id_ta` varchar(5) NOT NULL,
  `nama_ta` varchar(25) NOT NULL,
  `semester` int(2) NOT NULL,
  `status_ta` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`no`, `id_ta`, `nama_ta`, `semester`, `status_ta`) VALUES
(3, '2', '2020', 1, 'Selesai'),
(4, '2', '2020', 2, 'Selesai'),
(5, '3', '2021', 1, 'Selesai'),
(6, '3', '2021', 2, 'Selesai'),
(7, '4', '2022', 1, 'Selesai'),
(8, '4', '2022', 2, 'Selesai'),
(9, '5', '2023', 1, 'Selesai'),
(10, '5', '2023', 2, 'Selesai'),
(11, '6', '2024', 1, 'Selesai'),
(12, '6', '2024', 2, 'Selesai'),
(13, '7', '2025', 1, 'Selesai'),
(14, '7', '2025', 2, 'Selesai'),
(25, '8', '2026', 1, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` varchar(5) NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status_wali_kelas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_walikelas`, `id_guru`, `id_kelas`, `username`, `password`, `status_wali_kelas`) VALUES
(1, '12', '1', '12', '123', '0'),
(2, '7', '2', '13', '123', '0'),
(3, '6', '3', '14', '123', '1'),
(4, '9', '4', '15', '123', '1'),
(5, '2', '5', '16', '123', '1'),
(6, '5', '6', '17', '123', '1'),
(9, '8', '1', '18', '123', '1'),
(10, '11', '2', '20', '123', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id_ks`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pengambilan`
--
ALTER TABLE `pengambilan`
  ADD PRIMARY KEY (`id_pengambilan`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengambilan`
--
ALTER TABLE `pengambilan`
  MODIFY `id_pengambilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
