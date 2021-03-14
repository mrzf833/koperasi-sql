-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2021 at 02:22 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggotas`
--

CREATE TABLE `anggotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggotas`
--

INSERT INTO `anggotas` (`id`, `nama`, `pangkat`, `created_at`, `updated_at`) VALUES
(1, 'kurniawan', 'sersan', '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2, 'budi', 'sersan', '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(3, 'hasan', 'sersan', '2021-03-13 05:57:18', '2021-03-13 05:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 = Toko; 1 = Sandang',
  `harga` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `barcode`, `kategori_id`, `unit_id`, `nama`, `tipe`, `harga`, `created_at`, `updated_at`) VALUES
(1, '00092836734', 1, 1, 'indomie', '0', 5000, '2021-03-13 06:30:21', '2021-03-13 06:30:21'),
(2, '00092836735', 1, 1, 'mahal', '0', 107698300, '2021-03-13 07:28:53', '2021-03-13 07:28:53'),
(3, '00092836736', 1, 1, 'mahal lagi', '0', 270000000, '2021-03-13 08:02:12', '2021-03-13 08:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurnals`
--

CREATE TABLE `jurnals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penamaan_kode_debet_id` bigint(20) UNSIGNED NOT NULL,
  `penamaan_kode_kredit_id` bigint(20) UNSIGNED NOT NULL,
  `saldo` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnals`
--

INSERT INTO `jurnals` (`id`, `description`, `penamaan_kode_debet_id`, `penamaan_kode_kredit_id`, `saldo`, `created_at`, `updated_at`) VALUES
(1, NULL, 1020, 4000, 224590500, '2021-03-11 17:00:00', '2021-03-13 07:36:39'),
(2, NULL, 5000, 1504, 29308076, '2021-03-10 17:00:00', '2021-03-13 08:04:27'),
(3, NULL, 1033, 8009, 117277864, '2021-03-12 17:00:00', '2021-03-13 08:20:09'),
(4, NULL, 8009, 1033, 147019258, '2021-03-12 17:00:00', '2021-03-13 08:22:30'),
(5, NULL, 1021, 4003, 39691300, '2021-03-12 17:00:00', '2021-03-13 08:42:44'),
(6, NULL, 1022, 7006, 113530050, '2021-03-13 17:00:00', '2021-03-13 10:14:21'),
(7, NULL, 7005, 3003, 660618.69, '2021-03-13 17:00:00', '2021-03-13 10:46:42'),
(9, NULL, 3003, 7005, 2751817.5, '2021-03-13 17:00:00', '2021-03-13 11:04:50'),
(10, NULL, 1213, 7007, 2467446.1, '2021-03-13 17:00:00', '2021-03-13 11:28:32'),
(11, NULL, 1010, 7009, 5810743, '2021-03-13 17:00:00', '2021-03-13 11:08:11'),
(12, NULL, 7042, 3005, 1135300, '2021-03-13 17:00:00', '2021-03-13 11:37:18'),
(13, NULL, 8013, 1010, 1320484, '2021-03-13 17:00:00', '2021-03-13 11:39:51'),
(14, NULL, 8002, 1311, 2991128, '2021-03-06 17:00:00', '2021-03-13 11:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_kas_pemasukans`
--

CREATE TABLE `jurnal_kas_pemasukans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pemasukan_id` bigint(20) UNSIGNED NOT NULL,
  `penamaan_kode_debet_id` bigint(20) UNSIGNED NOT NULL,
  `penamaan_kode_kredit_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnal_kas_pemasukans`
--

INSERT INTO `jurnal_kas_pemasukans` (`id`, `pemasukan_id`, `penamaan_kode_debet_id`, `penamaan_kode_kredit_id`, `created_at`, `updated_at`) VALUES
(9, 14, 1000, 7005, '2021-03-13 05:57:20', '2021-03-13 10:59:01'),
(10, 10, 1000, 1023, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(11, 11, 1000, 1023, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(12, 12, 1000, 1010, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(13, 13, 1000, 2019, '2021-03-13 05:57:20', '2021-03-13 05:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_kas_pengeluarans`
--

CREATE TABLE `jurnal_kas_pengeluarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengeluaran_id` bigint(20) UNSIGNED NOT NULL,
  `penamaan_kode_debet_id` bigint(20) UNSIGNED NOT NULL,
  `penamaan_kode_kredit_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnal_kas_pengeluarans`
--

INSERT INTO `jurnal_kas_pengeluarans` (`id`, `pengeluaran_id`, `penamaan_kode_debet_id`, `penamaan_kode_kredit_id`, `created_at`, `updated_at`) VALUES
(5, 5, 1010, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(6, 6, 1023, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(7, 7, 3000, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(8, 8, 3001, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(9, 9, 3002, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(10, 10, 3003, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(11, 11, 2022, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(12, 12, 2023, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(13, 13, 8000, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(14, 14, 2020, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(15, 15, 2021, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(16, 16, 8011, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(17, 17, 7046, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(18, 18, 8012, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(19, 19, 7011, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(20, 20, 7047, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(21, 21, 3008, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(22, 22, 7045, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(23, 23, 7010, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(24, 24, 7040, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(25, 25, 1302, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(26, 26, 7014, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(27, 27, 7043, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(28, 28, 7041, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(29, 29, 1211, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(30, 30, 1212, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(31, 31, 2019, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(32, 32, 7042, 1000, '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(33, 33, 2025, 1000, '2021-03-13 05:57:20', '2021-03-13 06:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 = Toko; 1 = Sandang',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 'makanan', '0', '2021-03-13 06:29:41', '2021-03-13 06:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `laba_rugis`
--

CREATE TABLE `laba_rugis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penamaan_kode_id` bigint(20) UNSIGNED NOT NULL,
  `kategori` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 : pendapatan lain-lain; 1 : beban operasional',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laba_rugis`
--

INSERT INTO `laba_rugis` (`id`, `penamaan_kode_id`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 7006, '0', '2021-03-13 16:36:16', '2021-03-13 16:36:16'),
(2, 7005, '0', '2021-03-13 16:36:16', '2021-03-13 16:36:16'),
(3, 7007, '0', '2021-03-13 16:38:30', '2021-03-13 16:38:30'),
(4, 7009, '0', '2021-03-13 16:38:30', '2021-03-13 16:38:30'),
(5, 7011, '1', '2021-03-13 18:48:45', '2021-03-13 18:48:45'),
(6, 7040, '1', '2021-03-13 18:48:45', '2021-03-13 18:48:45'),
(7, 7041, '1', '2021-03-13 18:49:53', '2021-03-13 18:49:53'),
(8, 7042, '1', '2021-03-13 18:49:53', '2021-03-13 18:49:53'),
(9, 8000, '1', '2021-03-13 18:49:53', '2021-03-13 18:49:53'),
(10, 8003, '1', '2021-03-13 18:49:53', '2021-03-13 18:49:53'),
(11, 8013, '1', '2021-03-13 18:49:53', '2021-03-13 18:49:53'),
(12, 8002, '1', '2021-03-13 18:49:53', '2021-03-13 18:49:53'),
(13, 8012, '1', '2021-03-13 18:49:53', '2021-03-13 18:49:53'),
(14, 7010, '1', '2021-03-13 18:49:53', '2021-03-13 18:49:53');

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
(4, '2021_02_03_123755_create_roles_table', 1),
(5, '2021_02_04_105600_create_barangs_table', 1),
(6, '2021_02_04_105623_create_kategoris_table', 1),
(7, '2021_02_04_105658_create_stoks_table', 1),
(8, '2021_02_04_112703_create_units_table', 1),
(9, '2021_02_05_000447_create_transaksis_table', 1),
(10, '2021_02_05_000458_create_transaksi_details_table', 1),
(11, '2021_02_05_000905_create_anggotas_table', 1),
(12, '2021_02_10_033856_create_sisa_piutangs_table', 1),
(13, '2021_02_12_031025_create_tabungans_table', 1),
(14, '2021_02_12_032354_create_simpanans_table', 1),
(15, '2021_02_15_115155_create_pemasukans_table', 1),
(16, '2021_02_15_125349_create_saldo_pemasukans_table', 1),
(17, '2021_02_16_024403_create_pengeluarans_table', 1),
(18, '2021_02_16_024426_create_saldo_pengeluarans_table', 1),
(19, '2021_02_16_103610_create_tabungan_pokoks_table', 1),
(20, '2021_02_16_132915_relation_all_table', 1),
(21, '2021_02_17_124910_add_column_stoks_table', 1),
(22, '2021_02_18_004633_create_return_stoks_table', 1),
(23, '2021_02_19_132259_edit_column_pemasukan_table', 1),
(24, '2021_02_20_233705_create_tagihans_table', 1),
(25, '2021_02_20_233756_create_pembayaran_tagihans_table', 1),
(26, '2021_02_21_014427_relation_tagihans_and_pembayaran_tagihans_table', 1),
(27, '2021_02_25_131452_relation_return_stoks_table', 1),
(28, '2021_03_08_022215_add_column_bunga_tagihans_table', 1),
(29, '2021_03_08_045029_change_column_jumlah_pembayaran_pembayaran_tagihans_table', 1),
(30, '2021_03_09_020509_edit_column_keterangan_return_stoks_table', 1),
(31, '2021_03_12_061340_create_penamaan_kodes_table', 1),
(32, '2021_03_12_061633_create_jurnals_table', 1),
(33, '2021_03_12_094514_create_jurnal_kas_pemasukans_table', 1),
(34, '2021_03_12_094555_create_jurnal_kas_pengeluarans_table', 1),
(35, '2021_03_12_141931_edit_penamaan_kodes_table', 1),
(37, '2021_03_13_125153_create_laba_rugis_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemasukans`
--

CREATE TABLE `pemasukans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemasukans`
--

INSERT INTO `pemasukans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'kas', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(10, 'piutang komando', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(11, 'piutang usipa anggota tidak lancar', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(12, 'Terima Penarikan dari Bank', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(13, 'Terima Uang Titipan Staf', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(14, 'Pendapatan Lain-Lain', '2021-03-13 05:57:19', '2021-03-13 05:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_tagihans`
--

CREATE TABLE `pembayaran_tagihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tagihan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_pembayaran` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penamaan_kodes`
--

CREATE TABLE `penamaan_kodes` (
  `kode` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldo_awal` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penamaan_kodes`
--

INSERT INTO `penamaan_kodes` (`kode`, `nama`, `saldo_awal`, `created_at`, `updated_at`) VALUES
(1000, 'Kas', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1010, 'Bank', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1020, 'Piutang Barang Niaga', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1021, 'Piutang Barang Sekunder', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1022, 'Piutang Uang Usipa', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1023, 'Piutang Komando', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1033, 'Persediaan Brg Niaga ', 147019258, '2021-03-13 05:57:18', '2021-03-13 07:45:44'),
(1034, 'Persediaan Brg Sekunder', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1210, 'Simpanan Pokok Puskopad', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1211, 'Simpanan Wajib Tetap Puskopad', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1212, 'Simpanan Wajib Khusus Puskopad', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1213, 'Simpanan Wajib Jasa Puskopad', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1214, 'Simp jasa pembelian puskopad', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1302, 'Inventaris Kantor', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1311, 'Akum Pnystan Inventaris Kantor ', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1501, 'Piutang Anggota Tidak Lancar', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1502, 'Piutang Anggota Pindah Satuan', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1503, 'Piutang Anggota Disersi', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1504, 'Mark Up Stock data fiktif', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1505, 'Barang Kadaluarsa', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(1506, 'Kerugian Brg Hilang', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2000, 'Hutang Barang Niaga', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2001, 'Hutang Barang Sekunder ', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2002, 'Hutang Uang', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2003, 'Hutang Wajib Belanja Anggota ', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2004, 'Hutang barang titipan', 0, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2019, 'Dana Titipan ', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2020, 'Dana Pengurus', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2021, 'Dana Karyawan / Pegawai', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2022, 'Dana Sosial', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2023, 'Dana Pendidikan', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2024, 'Dana Pembangunan daerah kerja', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2025, 'Jasa Pembelian anggota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2100, 'Bantuan Modal KASAD', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2101, 'Bantuan Modal Pangdam Jaya', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2102, 'Bantuan Modal Satuan', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2103, 'Bantuan Modal Inkopad', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2104, 'Bantuan Modal Bupati', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2105, 'Bantuan Modal Walikota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(2106, 'Bantuan Modal Kabidkam SG 97', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3000, 'Simpanan Pokok Anggota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3001, 'Simpanan Wajib Tetap Anggota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3002, 'Simpanan Wajib Khusus Anggota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3003, 'Simpanan Wajib Jasa Anggota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3004, 'Cadangan Pajak Deviden', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3005, 'Cadangan Pajak Koperasi', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3008, 'Cadangan Biaya Rat', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3009, 'Cadangan Koperasi', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3010, 'Nilai Tambah Bantuan Mdl Kasad', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(3011, 'Cadangan Pajak', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(4000, 'Penjualan Barang Niaga', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(4001, 'Return Penjualan barang niaga', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(4002, 'Penjualan kupon wajib belanja anggota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(4003, 'Penjualan Barang Sekunder', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(4004, 'Return Pembelian barang sekunder', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(4401, 'Pendapatan jasa barang', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(4402, 'Jasa Rekanan', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(5000, 'Pembelian Barang Niaga', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(5001, 'Rerurn Pembelian Barang niaga', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(6000, 'Pembelian Barang Sekunder', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(6001, 'Return Pembelian Brg Sekunder', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7005, 'Pendapatan Lain-lain', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7006, 'Pendapatan Usipa', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7007, 'Pendapatan SHU Puskopad', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7009, 'Pendapatan Bunga Bank', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7010, 'Biaya Insentif Pengurus', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7011, 'Biaya Transport ', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7014, 'Biaya Har Inventaris kantor', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7040, 'Biaya Telp, Rekening Listrik', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7041, 'Biaya Lembur', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7042, 'Biaya Pajak Koperasi', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7043, 'Biaya Sewa Tenda Bazar', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7044, 'Cadangan RAT', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7045, 'Biaya Pembelian penjualan', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7046, 'Biaya Perlengkapan Toko', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7047, 'Biaya Pembinaan', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8000, 'Biaya Pemeliharaan Bangunan', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8001, 'Biaya Pemeliharaan Kantor', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8002, 'Biaya Pnysutan Aktiva Tetap', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8003, 'Biaya Kerugian barang inventaris', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8004, 'Pajak Jasa Simpanan Anggota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8005, 'Pajak Jasa Pembelian Anggota', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8006, 'Pajak Pengurus ', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8007, 'Pajak Karyawan', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8008, 'Pajak Bank', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8009, 'Ikhtisar R/L Barang Niaga Akhir', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8010, 'Ikhtisar R/L Barang Sekunder Akhir', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8011, 'Cadangan Bingkisan Lebaran', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8012, 'Biaya ATK', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8013, 'Biaya Adm Bank', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(9000, 'SHU Per 31 Desember 2019', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(9001, 'SHU Per 31 Desember 2020', 0, '2021-03-13 05:57:19', '2021-03-13 05:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluarans`
--

CREATE TABLE `pengeluarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluarans`
--

INSERT INTO `pengeluarans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(5, 'setor bank', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(6, 'Penyaluran Piutang Komando', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(7, 'Pembayaran simpanan Wjb pokok anggota', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(8, 'Pembayaran simpanan Wjb tetap anggota', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(9, 'Pembayaran simpanan Wjb khusus anggota', '2021-03-13 05:57:19', '2021-03-13 05:57:19'),
(10, 'Pembayaran simpanan Wjb jasa anggota', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(11, 'Pembayaran dana sosial', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(12, 'Pengeluaran dana pendidikan', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(13, 'Biaya Harbang', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(14, 'Pembayaran dana pengurus', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(15, 'Pembayaran dana karyawan', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(16, 'Pembayaran bingkisan lebaran dibayar dimuka', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(17, 'Biaya perlengkapan toko', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(18, 'Biaya ATK', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(19, 'Biaya Transport', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(20, 'Biaya pembinaan', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(21, 'Biaya RAT Tahun 2019', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(22, 'Biaya pembelian penjualan', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(23, 'Biaya Insentif pengurus', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(24, 'Biaya telepon, Rek listrik', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(25, 'Inventaris Kantor', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(26, 'Biaya pemeliharaan inventaris kantor', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(27, 'Biaya Sewa Tenda Bazar', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(28, 'Biaya lembur', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(29, 'Pembayaran simpanan Wjb Tetap puskopad', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(30, 'Pembayaran simpanan Wjb khusus puskopad', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(31, 'Pengembalian uang titipan', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(32, 'Pembayaran Pajak', '2021-03-13 05:57:20', '2021-03-13 05:57:20'),
(33, 'Jasa Pembelian', '2021-03-13 05:57:20', '2021-03-13 05:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `return_stoks`
--

CREATE TABLE `return_stoks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `stok` bigint(20) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kadaluarsa` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_stoks`
--

INSERT INTO `return_stoks` (`id`, `barang_id`, `stok`, `harga`, `keterangan`, `kadaluarsa`, `created_at`, `updated_at`) VALUES
(1, 1, 808, 2423288, 'kadaluarsa', '2021-03-09', '2021-03-13 06:49:15', '2021-03-13 06:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2, 'kasir', '2021-03-13 05:57:18', '2021-03-13 05:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `saldo_pemasukans`
--

CREATE TABLE `saldo_pemasukans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pemasukan_id` bigint(20) UNSIGNED NOT NULL,
  `saldo` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saldo_pemasukans`
--

INSERT INTO `saldo_pemasukans` (`id`, `pemasukan_id`, `saldo`, `created_at`, `updated_at`) VALUES
(1, 14, 10812955, '2021-03-13 10:50:02', '2021-03-13 10:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `saldo_pengeluarans`
--

CREATE TABLE `saldo_pengeluarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengeluaran_id` bigint(20) UNSIGNED NOT NULL,
  `saldo` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saldo_pengeluarans`
--

INSERT INTO `saldo_pengeluarans` (`id`, `pengeluaran_id`, `saldo`, `created_at`, `updated_at`) VALUES
(1, 19, 3769000, '2021-03-13 11:34:46', '2021-03-13 11:34:46'),
(2, 24, 664000, '2021-03-13 11:35:24', '2021-03-13 11:35:24'),
(3, 28, 370500, '2021-03-13 11:36:04', '2021-03-13 11:36:04'),
(4, 13, 1425000, '2021-03-13 11:38:39', '2021-03-13 11:38:39'),
(5, 18, 336000, '2021-03-13 11:41:36', '2021-03-13 11:41:36'),
(6, 23, 8400000, '2021-03-13 11:42:14', '2021-03-13 11:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `simpanans`
--

CREATE TABLE `simpanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pokok` bigint(20) NOT NULL DEFAULT '0',
  `tetap` bigint(20) NOT NULL DEFAULT '0',
  `khusus` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simpanans`
--

INSERT INTO `simpanans` (`id`, `nama`, `pokok`, `tetap`, `khusus`, `created_at`, `updated_at`) VALUES
(1, 'pamen', 25000, 750, 100000, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2, 'pama', 25000, 500, 100000, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(3, 'ba', 25000, 300, 100000, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(4, 'ta', 25000, 200, 100000, '2021-03-13 05:57:18', '2021-03-13 05:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `sisa_piutangs`
--

CREATE TABLE `sisa_piutangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `sandang` bigint(20) NOT NULL DEFAULT '0',
  `sekunder` bigint(20) NOT NULL DEFAULT '0',
  `usipa` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stoks`
--

CREATE TABLE `stoks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED NOT NULL,
  `stok` bigint(20) NOT NULL,
  `kadaluarsa` date DEFAULT NULL,
  `harga` bigint(20) NOT NULL,
  `harga_masuk` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stoks`
--

INSERT INTO `stoks` (`id`, `barang_id`, `stok`, `kadaluarsa`, `harga`, `harga_masuk`, `created_at`, `updated_at`) VALUES
(1, 1, 89, '2021-11-24', 267000, 300000, '2019-09-18 06:30:51', '2021-03-13 06:31:35'),
(2, 1, 0, '2021-03-09', 0, 2423288, '2019-08-21 06:43:52', '2021-03-13 06:49:15'),
(4, 2, 0, '2021-10-15', 0, 107688300, '2019-07-17 07:29:33', '2021-03-13 07:30:20'),
(5, 3, 1, '2021-03-19', 265233298, 265233298, '2021-03-13 08:02:43', '2021-03-13 08:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `tabungans`
--

CREATE TABLE `tabungans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `simpanan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tetap` bigint(20) NOT NULL DEFAULT '0',
  `khusus` bigint(20) NOT NULL DEFAULT '0',
  `jasa` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabungan_pokoks`
--

CREATE TABLE `tabungan_pokoks` (
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `pokok` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagihans`
--

CREATE TABLE `tagihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_tagihan` enum('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 : toko; 1 : sandang; 2 : sekunder; 3 : usipa;',
  `jumlah_tagihan` bigint(20) NOT NULL,
  `jumlah_melakukan_pembayaran` int(11) NOT NULL,
  `bunga` double UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tagihans`
--

INSERT INTO `tagihans` (`id`, `anggota_id`, `kategori_tagihan`, `jumlah_tagihan`, `jumlah_melakukan_pembayaran`, `bunga`, `created_at`, `updated_at`) VALUES
(1, 2, '2', 39678000, 1, 2, '2021-03-13 08:51:47', '2021-03-13 08:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utang` bigint(20) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `anggota_id`, `invoice`, `utang`, `created_at`, `updated_at`) VALUES
(1, 1, '0000000001', 0, '2021-03-13 06:31:35', '2021-03-13 06:31:35'),
(2, 2, '0000000002', 0, '2021-03-13 07:30:20', '2021-03-13 07:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` bigint(20) UNSIGNED DEFAULT NULL,
  `harga_jual_pembeli` bigint(20) NOT NULL,
  `harga_beli_barang` bigint(20) NOT NULL,
  `stok_dibeli` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `barang_id`, `harga_jual_pembeli`, `harga_beli_barang`, `stok_dibeli`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5000, 3000, 11, '2021-03-13 06:31:35', '2021-03-13 06:31:35'),
(2, 2, 2, 107698300, 107688300, 1, '2021-03-13 07:30:20', '2021-03-13 07:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 = Toko; 1 = Sandang',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `nama`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 'pack', '0', '2021-03-13 06:29:51', '2021-03-13 06:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@app.com', NULL, '$2y$10$SM1f6qnm8nNamXZhaPj6quHSeB1yrqW4Ofbj8Qbpm2DzBcRUHaEE6', NULL, '2021-03-13 05:57:18', '2021-03-13 05:57:18'),
(2, 2, 'kasir', 'kasir@app.com', NULL, '$2y$10$lANzPi0ltlNGZ97wgXdkEeyZKaOQWF4mCTSHFdiHKvZEw57IGwF1y', NULL, '2021-03-13 05:57:18', '2021-03-13 05:57:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barangs_barcode_unique` (`barcode`),
  ADD KEY `barangs_kategori_id_foreign` (`kategori_id`),
  ADD KEY `barangs_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jurnals`
--
ALTER TABLE `jurnals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnals_penamaan_kode_debet_id_foreign` (`penamaan_kode_debet_id`),
  ADD KEY `jurnals_penamaan_kode_kredit_id_foreign` (`penamaan_kode_kredit_id`);

--
-- Indexes for table `jurnal_kas_pemasukans`
--
ALTER TABLE `jurnal_kas_pemasukans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurnal_kas_pemasukans_pemasukan_id_unique` (`pemasukan_id`),
  ADD KEY `jurnal_kas_pemasukans_penamaan_kode_debet_id_foreign` (`penamaan_kode_debet_id`),
  ADD KEY `jurnal_kas_pemasukans_penamaan_kode_kredit_id_foreign` (`penamaan_kode_kredit_id`);

--
-- Indexes for table `jurnal_kas_pengeluarans`
--
ALTER TABLE `jurnal_kas_pengeluarans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurnal_kas_pengeluarans_pengeluaran_id_unique` (`pengeluaran_id`),
  ADD KEY `jurnal_kas_pengeluarans_penamaan_kode_debet_id_foreign` (`penamaan_kode_debet_id`),
  ADD KEY `jurnal_kas_pengeluarans_penamaan_kode_kredit_id_foreign` (`penamaan_kode_kredit_id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laba_rugis`
--
ALTER TABLE `laba_rugis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laba_rugis_penamaan_kode_id_unique` (`penamaan_kode_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pemasukans_nama_unique` (`nama`);

--
-- Indexes for table `pembayaran_tagihans`
--
ALTER TABLE `pembayaran_tagihans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_tagihans_tagihan_id_foreign` (`tagihan_id`);

--
-- Indexes for table `penamaan_kodes`
--
ALTER TABLE `penamaan_kodes`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_stoks`
--
ALTER TABLE `return_stoks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_stoks_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saldo_pemasukans`
--
ALTER TABLE `saldo_pemasukans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saldo_pemasukans_pemasukan_id_foreign` (`pemasukan_id`);

--
-- Indexes for table `saldo_pengeluarans`
--
ALTER TABLE `saldo_pengeluarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saldo_pengeluarans_pengeluaran_id_foreign` (`pengeluaran_id`);

--
-- Indexes for table `simpanans`
--
ALTER TABLE `simpanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sisa_piutangs`
--
ALTER TABLE `sisa_piutangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sisa_piutangs_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `stoks`
--
ALTER TABLE `stoks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stoks_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `tabungans`
--
ALTER TABLE `tabungans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tabungans_anggota_id_foreign` (`anggota_id`),
  ADD KEY `tabungans_simpanan_id_foreign` (`simpanan_id`);

--
-- Indexes for table `tabungan_pokoks`
--
ALTER TABLE `tabungan_pokoks`
  ADD UNIQUE KEY `tabungan_pokoks_anggota_id_unique` (`anggota_id`);

--
-- Indexes for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagihans_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_invoice_unique` (`invoice`),
  ADD KEY `transaksis_anggota_id_foreign` (`anggota_id`);

--
-- Indexes for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurnals`
--
ALTER TABLE `jurnals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jurnal_kas_pemasukans`
--
ALTER TABLE `jurnal_kas_pemasukans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jurnal_kas_pengeluarans`
--
ALTER TABLE `jurnal_kas_pengeluarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laba_rugis`
--
ALTER TABLE `laba_rugis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pemasukans`
--
ALTER TABLE `pemasukans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pembayaran_tagihans`
--
ALTER TABLE `pembayaran_tagihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluarans`
--
ALTER TABLE `pengeluarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `return_stoks`
--
ALTER TABLE `return_stoks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `saldo_pemasukans`
--
ALTER TABLE `saldo_pemasukans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saldo_pengeluarans`
--
ALTER TABLE `saldo_pengeluarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `simpanans`
--
ALTER TABLE `simpanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sisa_piutangs`
--
ALTER TABLE `sisa_piutangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stoks`
--
ALTER TABLE `stoks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tabungans`
--
ALTER TABLE `tabungans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tagihans`
--
ALTER TABLE `tagihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barangs_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jurnals`
--
ALTER TABLE `jurnals`
  ADD CONSTRAINT `jurnals_penamaan_kode_debet_id_foreign` FOREIGN KEY (`penamaan_kode_debet_id`) REFERENCES `penamaan_kodes` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jurnals_penamaan_kode_kredit_id_foreign` FOREIGN KEY (`penamaan_kode_kredit_id`) REFERENCES `penamaan_kodes` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jurnal_kas_pemasukans`
--
ALTER TABLE `jurnal_kas_pemasukans`
  ADD CONSTRAINT `jurnal_kas_pemasukans_pemasukan_id_foreign` FOREIGN KEY (`pemasukan_id`) REFERENCES `pemasukans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jurnal_kas_pemasukans_penamaan_kode_debet_id_foreign` FOREIGN KEY (`penamaan_kode_debet_id`) REFERENCES `penamaan_kodes` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jurnal_kas_pemasukans_penamaan_kode_kredit_id_foreign` FOREIGN KEY (`penamaan_kode_kredit_id`) REFERENCES `penamaan_kodes` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jurnal_kas_pengeluarans`
--
ALTER TABLE `jurnal_kas_pengeluarans`
  ADD CONSTRAINT `jurnal_kas_pengeluarans_penamaan_kode_debet_id_foreign` FOREIGN KEY (`penamaan_kode_debet_id`) REFERENCES `penamaan_kodes` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jurnal_kas_pengeluarans_penamaan_kode_kredit_id_foreign` FOREIGN KEY (`penamaan_kode_kredit_id`) REFERENCES `penamaan_kodes` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jurnal_kas_pengeluarans_pengeluaran_id_foreign` FOREIGN KEY (`pengeluaran_id`) REFERENCES `pengeluarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laba_rugis`
--
ALTER TABLE `laba_rugis`
  ADD CONSTRAINT `laba_rugis_penamaan_kode_id_foreign` FOREIGN KEY (`penamaan_kode_id`) REFERENCES `penamaan_kodes` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran_tagihans`
--
ALTER TABLE `pembayaran_tagihans`
  ADD CONSTRAINT `pembayaran_tagihans_tagihan_id_foreign` FOREIGN KEY (`tagihan_id`) REFERENCES `tagihans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `return_stoks`
--
ALTER TABLE `return_stoks`
  ADD CONSTRAINT `return_stoks_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saldo_pemasukans`
--
ALTER TABLE `saldo_pemasukans`
  ADD CONSTRAINT `saldo_pemasukans_pemasukan_id_foreign` FOREIGN KEY (`pemasukan_id`) REFERENCES `pemasukans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saldo_pengeluarans`
--
ALTER TABLE `saldo_pengeluarans`
  ADD CONSTRAINT `saldo_pengeluarans_pengeluaran_id_foreign` FOREIGN KEY (`pengeluaran_id`) REFERENCES `pengeluarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sisa_piutangs`
--
ALTER TABLE `sisa_piutangs`
  ADD CONSTRAINT `sisa_piutangs_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggotas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stoks`
--
ALTER TABLE `stoks`
  ADD CONSTRAINT `stoks_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tabungans`
--
ALTER TABLE `tabungans`
  ADD CONSTRAINT `tabungans_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggotas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabungans_simpanan_id_foreign` FOREIGN KEY (`simpanan_id`) REFERENCES `simpanans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tabungan_pokoks`
--
ALTER TABLE `tabungan_pokoks`
  ADD CONSTRAINT `tabungan_pokoks_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggotas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tagihans`
--
ALTER TABLE `tagihans`
  ADD CONSTRAINT `tagihans_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggotas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggotas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
