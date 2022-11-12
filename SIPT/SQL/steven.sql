-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 06:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `steven`
--

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `kode_khs` int(11) NOT NULL,
  `StudentID` varchar(12) NOT NULL,
  `kode_term` varchar(4) NOT NULL,
  `keterangan` text NOT NULL,
  `kode_krs` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`kode_khs`, `StudentID`, `kode_term`, `keterangan`, `kode_krs`) VALUES
(1, '03081200017', '1214', '', '100000005');

-- --------------------------------------------------------

--
-- Table structure for table `khs_detail`
--

CREATE TABLE `khs_detail` (
  `kode_khs` int(11) DEFAULT NULL,
  `kode_khs_detail` int(11) NOT NULL,
  `kode_krs_detail` varchar(15) DEFAULT NULL,
  `NilaiHuruf` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khs_detail`
--

INSERT INTO `khs_detail` (`kode_khs`, `kode_khs_detail`, `kode_krs_detail`, `NilaiHuruf`) VALUES
(1, 1000001, '10000000403', 'A'),
(2, 1000002, '10000000404', 'A'),
(3, 1000003, '10000000405', 'A'),
(4, 1000004, '10000000406', 'A'),
(5, 1000005, '10000000407', 'A'),
(6, 1000006, '10000000408', 'A');

-- --------------------------------------------------------

--
-- Stand-in structure for view `khs_detail_view`
-- (See below for the actual view)
--
CREATE TABLE `khs_detail_view` (
`StudentID` varchar(12)
,`nama` varchar(50)
,`kode_matkul` varchar(6)
,`nama_matkul` varchar(50)
,`sks` int(11)
,`huruf` varchar(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `kode_krs` varchar(15) NOT NULL,
  `StudentID` varchar(12) DEFAULT NULL,
  `kode_term` varchar(4) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`kode_krs`, `StudentID`, `kode_term`, `keterangan`) VALUES
('100000001', '100000001', '1212', ''),
('100000002', '100000001', '1213', ''),
('100000003', '100000002', '1212', ''),
('100000004', '100000002', '1213', ''),
('100000005', '03081200017', '1214', '');

-- --------------------------------------------------------

--
-- Table structure for table `krs_detail`
--

CREATE TABLE `krs_detail` (
  `kode_krsdetail` varchar(15) NOT NULL,
  `kode_krs` varchar(15) NOT NULL,
  `kode_matakuliah` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs_detail`
--

INSERT INTO `krs_detail` (`kode_krsdetail`, `kode_krs`, `kode_matakuliah`) VALUES
('10000000101', '100000001', 'MK0001'),
('10000000102', '100000001', 'MK0003'),
('10000000201', '100000002', 'MK0002'),
('10000000202', '100000002', 'MK0001'),
('10000000301', '100000003', 'MK0002'),
('10000000302', '100000003', 'MK0001'),
('10000000401', '100000004', 'MK0002'),
('10000000402', '100000004', 'MK0001'),
('10000000403', '100000005', 'MK0004'),
('10000000404', '100000005', 'MK0005'),
('10000000405', '100000005', 'MK0006'),
('10000000406', '100000005', 'MK0007'),
('10000000407', '100000005', 'MK0001'),
('10000000408', '100000005', 'MK0002');

-- --------------------------------------------------------

--
-- Stand-in structure for view `krs_mahasiswa`
-- (See below for the actual view)
--
CREATE TABLE `krs_mahasiswa` (
`kode` varchar(6)
,`Nama` varchar(50)
,`jumlah_mahasiswa` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `StudentID` varchar(12) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jurusan` varchar(30) NOT NULL,
  `Tahun_masuk` varchar(4) NOT NULL,
  `JenisKelamin` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`StudentID`, `Nama`, `Jurusan`, `Tahun_masuk`, `JenisKelamin`) VALUES
('03081200017', 'STEVEN SUTANTOH', 'SISTEM INFORMASI', '2020', 'L'),
('100000001', 'BUDI', 'SISTEM INFORMASI', '2017', 'L'),
('100000002', 'SUSI', 'SISTEM INFORMASI', '2017', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matakuliah` varchar(6) NOT NULL,
  `nama_matakuliah` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matakuliah`, `nama_matakuliah`, `sks`) VALUES
('MK0001', 'BUSINESS APPLICATION PROGRAMMING', 4),
('MK0002', 'AUDIT DAN KONTROL SISTEM INFROMASI', 4),
('MK003', 'PEMROGRAMAN BERORIENTASI OBJEK', 4),
('MK0004', 'DASAR MANAJEMEN KEUANGAN', 3),
('MK0005', 'MANAJEMEN STRATEGIS PERUSAHAAN', 3),
('MK0006', 'ENTREPRISE INFORMATION SYSTEMS', 3),
('MK0007', 'DIGITAL MARKETING', 3);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_data`
-- (See below for the actual view)
--
CREATE TABLE `student_data` (
`student_id` varchar(12)
,`nama` varchar(50)
,`term` varchar(4)
,`total_sks` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_detail_major`
-- (See below for the actual view)
--
CREATE TABLE `student_detail_major` (
`student_id` varchar(12)
,`kode` varchar(6)
,`name` varchar(50)
,`sks` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `kode_term` varchar(4) NOT NULL,
  `tahun_ajar` varchar(4) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`kode_term`, `tahun_ajar`, `semester`, `keterangan`) VALUES
('1212', '2020', 'GANJIL', ''),
('1213', '2020', 'GENAP', ''),
('1214', '2022', 'GANJIL', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmhskrs`
-- (See below for the actual view)
--
CREATE TABLE `vmhskrs` (
`StudentID` varchar(12)
,`Nama` varchar(50)
,`kode_krs` varchar(15)
,`kode_term` varchar(4)
,`kode_matakuliah` varchar(6)
,`nama_matakuliah` varchar(50)
,`sks` int(11)
,`total_sks` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Structure for view `khs_detail_view`
--
DROP TABLE IF EXISTS `khs_detail_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `khs_detail_view`  AS SELECT `siswa`.`StudentID` AS `StudentID`, `siswa`.`Nama` AS `nama`, `kuliah`.`kode_matakuliah` AS `kode_matkul`, `kuliah`.`nama_matakuliah` AS `nama_matkul`, `kuliah`.`sks` AS `sks`, `khd`.`NilaiHuruf` AS `huruf` FROM ((((`mahasiswa` `siswa` left join `krs` on(`siswa`.`StudentID` = `krs`.`StudentID`)) left join `krs_detail` `kd` on(`krs`.`kode_krs` = `kd`.`kode_krs`)) left join `matakuliah` `kuliah` on(`kd`.`kode_matakuliah` = `kuliah`.`kode_matakuliah`)) left join `khs_detail` `khd` on(`kd`.`kode_krsdetail` = `khd`.`kode_krs_detail`)) WHERE `siswa`.`StudentID` = '03081200017' AND `krs`.`kode_term` = '1214' ;

-- --------------------------------------------------------

--
-- Structure for view `krs_mahasiswa`
--
DROP TABLE IF EXISTS `krs_mahasiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`bap22`@`%` SQL SECURITY DEFINER VIEW `krs_mahasiswa`  AS SELECT `matakuliah`.`kode_matakuliah` AS `kode`, `matakuliah`.`nama_matakuliah` AS `Nama`, count(distinct `mahasiswa`.`StudentID`) AS `jumlah_mahasiswa` FROM (((`matakuliah` left join `krs_detail` on(`matakuliah`.`kode_matakuliah` = `krs_detail`.`kode_matakuliah`)) left join `krs` on(`krs_detail`.`kode_krs` = `krs`.`kode_krs`)) left join `mahasiswa` on(`krs`.`StudentID` = `mahasiswa`.`StudentID`)) GROUP BY `matakuliah`.`kode_matakuliah`, `matakuliah`.`nama_matakuliah` ;

-- --------------------------------------------------------

--
-- Structure for view `student_data`
--
DROP TABLE IF EXISTS `student_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`bap22`@`%` SQL SECURITY DEFINER VIEW `student_data`  AS SELECT `siswa`.`StudentID` AS `student_id`, `siswa`.`Nama` AS `nama`, `krs`.`kode_term` AS `term`, sum(coalesce(`m`.`sks`,0)) AS `total_sks` FROM (((`mahasiswa` `siswa` left join `krs` on(`siswa`.`StudentID` = `krs`.`StudentID`)) left join `krs_detail` `kd` on(`krs`.`kode_krs` = `kd`.`kode_krs`)) left join `matakuliah` `m` on(`kd`.`kode_matakuliah` = `m`.`kode_matakuliah`)) GROUP BY `siswa`.`StudentID`, `siswa`.`Nama`, `krs`.`kode_term` ;

-- --------------------------------------------------------

--
-- Structure for view `student_detail_major`
--
DROP TABLE IF EXISTS `student_detail_major`;

CREATE ALGORITHM=UNDEFINED DEFINER=`bap22`@`%` SQL SECURITY DEFINER VIEW `student_detail_major`  AS SELECT `siswa`.`StudentID` AS `student_id`, `m`.`kode_matakuliah` AS `kode`, `m`.`nama_matakuliah` AS `name`, `m`.`sks` AS `sks` FROM (((`mahasiswa` `siswa` left join `krs` on(`siswa`.`StudentID` = `krs`.`StudentID`)) left join `krs_detail` `kd` on(`krs`.`kode_krs` = `kd`.`kode_krs`)) left join `matakuliah` `m` on(`kd`.`kode_matakuliah` = `m`.`kode_matakuliah`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vmhskrs`
--
DROP TABLE IF EXISTS `vmhskrs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmhskrs`  AS SELECT `mhs`.`StudentID` AS `StudentID`, `mhs`.`Nama` AS `Nama`, `krs`.`kode_krs` AS `kode_krs`, `krs`.`kode_term` AS `kode_term`, `mtk`.`kode_matakuliah` AS `kode_matakuliah`, `mtk`.`nama_matakuliah` AS `nama_matakuliah`, `mtk`.`sks` AS `sks`, `b`.`total_sks` AS `total_sks` FROM ((((`mahasiswa` `mhs` join `krs` on(`mhs`.`StudentID` = `krs`.`StudentID`)) join `krs_detail` `krd` on(`krd`.`kode_krs` = `krs`.`kode_krs`)) join `matakuliah` `mtk` on(`mtk`.`kode_matakuliah` = `krd`.`kode_matakuliah`)) join (select `krs`.`kode_krs` AS `kode_krs`,sum(`mtk`.`sks`) AS `total_sks` from (((`mahasiswa` `mhs` join `krs` on(`mhs`.`StudentID` = `krs`.`StudentID`)) join `krs_detail` `krd` on(`krd`.`kode_krs` = `krs`.`kode_krs`)) join `matakuliah` `mtk` on(`mtk`.`kode_matakuliah` = `krd`.`kode_matakuliah`)) group by `krs`.`kode_krs`) `b` on(`b`.`kode_krs` = `krs`.`kode_krs`)) WHERE `mhs`.`StudentID` = '03081200017' AND `krs`.`kode_term` = '1214' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `khs_detail`
--
ALTER TABLE `khs_detail`
  ADD PRIMARY KEY (`kode_khs_detail`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`kode_krs`);

--
-- Indexes for table `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD PRIMARY KEY (`kode_krsdetail`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
