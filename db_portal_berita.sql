-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2018 at 01:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portal_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `tanggal_posting` date NOT NULL,
  `isi_berita` text NOT NULL,
  `penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `foto`, `judul_berita`, `tanggal_posting`, `isi_berita`, `penulis`) VALUES
(1, 'kopi_1.jpg', 'Kopi Arabika', '2018-11-25', 'Kopi nomor satu ini menguasai sekitar 70% pasar dunia. Kopi arabika berasal dari Brasil dan Ethiopia. </br></br>\r\nVarietasnya banyak, tergantung tempat ditanamya kopi ini. Di Indonesia sendiri, kopi Toraja dan Mandailing adalah jenis kopi arabika. \r\n</br></br>\r\nCiri-ciri utamanya adalah hidup di daerah sejuk, memiliki rasa asam, serta relatif lebih kental dibanding robusta.\r\n', 'Yuza Mulia'),
(2, 'kopi_2.jpg', 'Kopi Robusta', '2018-11-26', 'Kopi robusta memegang 30% pasar dunia. Bisa ditanamnya jenis biji kopi ini di daerah yang lebih rendah,\r\n</br></br>\r\nsehingga bisa ditanam dengan persebaran lebih luas, menjadikannya lebih murah daripada kopi arabika. \r\n</br></br>\r\nRasanya lebih pahit, dengan tekstur lebih kasar.\r\n', 'DEWI AGRENIAWATI'),
(3, 'kopi_4.jpg', 'Kopi Luwak', '2018-11-27', 'Pastinya kita semua familiar dengan kopi luwak. Kopi inilah yang berasal dari Indonesia.\r\n</br></br>\r\nKopi luwak diolah dengan mengambil bagian yang tidak dicerna oleh luwak dan keluar bersama kotorannya setelah memakan biji kopi (arabika/robusta). \r\n</br></br>\r\n Luwak hanya memakan biji kopi dengan kualitas tinggi, yang dapat dirasakannya dengan indra penciumannya. \r\n</br></br>\r\nOleh karena itu, cita rasa dari kopi luwak pun sangat tinggi, yang menjadikannya kopi dengan harga tertinggi di dunia,</br></br>\r\ndengan perbandingan berkali-kali lipat dari jenis biji arabika dan robusta biasa.', 'Adhe Makayasa\r\n'),
(4, 'kopi_3.jpg', 'Kopi Liberika', '2001-10-28', 'Jenis kopi ini berasal dari afrika. Ketiganya sekarang mulai dikenal oleh banyak orang, namun masih dalam berbagai tahap pengembangan.</br></br>\r\nJenis kopi ini memiliki biji yang relatif besar. Kita tunggu saja beberapa saat lagi akan seperti apa variasinya.', 'Bolya Rizma'),
(5, 'kopi_5.jpg', 'Kopi Flores', '2018-11-29', 'Kopi Flores adalah kopi Arabika yang sudah dibudidayakan turun temurun di Ngada, Nusa Tenggara Timur. Secara spesifik, kopi ini ditanam di sebuah dataran tinggi di kecamatan Bajawa. Di Bajawa, hampir seluruh penduduknya menanam kopi.</br></br>\r\nHal itu didukung oleh letak geografis Bajawa yang berada disekitar 1000-1500 mdpl dengan suhuh rata-rata 15-25 derajat celcius.</br></br>\r\nSelain di Bajawa, penghasil kopi flores yang adalah adalah di daerah Manggarai sehingga lazim disebut dengan kopi Flores Manggarai.', 'Lamosea'),
(6, 'kopi_6.jpg', 'Kopi Priangan atau Kopi Preanger', '2018-11-30', 'Kopi Priangan pada awalnya berasal dari proyek penjajah Belanda untuk semekin memperkuat pasar perdagangan mereka. Komoditas kopi merupakan sumber penghasilan utama Belanda pada waktu itu.</br></br>\r\nBibit kopi Priangan adalah biji kopi Arabika yang dibawa dari daerah India Selatan dan dikembangkan di kawasan Priangan. Pada awalnya bibit kopi ditanam di kawasan pegunungan Malabar, jawa Barat.</br></br>\r\nPada tahun 1706, kopi Priangan pernah dibawa ke Belanda dan diteliti dari segi kualitas serta cita rasanya. Hasilnya diluar diguaan, kopi Priangan ternyata mempunyai kualitas di atas rata-rata. Kawasan perkebunan kopi Priangan tercatat sebagai perkebunan kopi tertua ke dua di dunia.', 'Aldika Rizki'),
(7, 'kopi_7.jpg', 'Kopi Merapi', '2018-12-01', 'Kopi Merapi adalah kopi yang berasal dari tanaman kopi yang dibudidayakan di tanah vulkanik lereng gunung Merapi. Kopi yang ditanam di lereng gunung Merapi berupa 300 hektar Robusta dan 50 hektar Arabika.</br></br>\r\nSebelum terjadi erupsi besar tahun 2010, lahan perkebunan lereng gunung Merapi mencapai 500 hektar.</br></br>\r\nDi daerah lereng gunung Merapi terdapat sebuah warung yang menyediakan kopi Merapi. Kedai kopi yang awalnya bernama kopi Petung ini kemudian lebih populer dengan nama kopi Merapi. Menurut info, dalam satu bulan kedai kopi Merapi bisa dikunjungi hingga 10 ribu orang.', 'Andri Aulia R'),
(8, 'kopi_8.jpg', 'Kopi Kintanamai', '2018-12-02', 'Kopi Arabika Kintamani ditanam di dataran tinggi Kintamani, Bali, dengan ketinggian derah sekitar 900 mdpl. Pohon kopi di Kintamani ditanam beriringan dengan tanaman lain dan dikelola secara organik.</br></br>\r\nKopi Bali Kintamani memiliki cita rasa yang khas. Yaitu tingkat keasaman yang rendah, body sedang, dengan rasa jeruk yang dominan. Yang menambah kenikmatan kopi Kintamani adalah rasanya yang tidak terlalu pahit dan tidak terlalu sepat.', 'Ibnu Nur Faza'),
(9, 'kopi_9.jpg', 'Kopi Lampung', '2018-12-03', 'Kopi Bali Kintamani memiliki cita rasa yang khas. Yaitu tingkat keasaman yang rendah, body sedang, dengan rasa jeruk yang dominan. Yang menambah kenikmatan kopi Kintamani adalah rasanya yang tidak terlalu pahit dan tidak terlalu sepat.</br></br>\r\nKopi Robusta Lampung memiliki ciri khas tekstur yang lembut, rasa yang pahit, dan juga mengandung kafein yang sangat tinggi. Kalau anda sedang berjalan-jalan atau berdinas ke Lampung, wajib mencoba kopi ini.', 'Tomy Fauzan'),
(10, 'kopi_10.jpg', 'Kopi Sidikalang', '2018-12-04', 'Kopi Sidikalang adalah salah satu kopi terbaik dari Sumatera. Kopi Sidikalang berasal dari kopi Robusta yang memiliki aroma dan cita rasa yang khas.</br></br>\r\nKopi Sidikalang memiliki rasa pahit mirip cokelat dan sedikit manis, namun wang ayng dihasilkan tidak terlalu tajam. Selain itu, tingkat keasaman yang dimiliki tergolong rendah, sehingga cocok bagi penikmat kopi yang memiliki masalah lambung.', 'Diva Dwi Anggraini');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
