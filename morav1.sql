-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2022 pada 03.23
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `morav1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `parent_id`, `sort_order`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'Profil', 0, 1, '#', '2022-11-22 20:46:46', '2022-12-05 21:37:50', NULL),
(9, 'Berita', 0, 2, '/post/all', '2022-11-22 20:46:51', '2022-12-06 18:47:09', NULL),
(10, 'Zona Integritas', 0, 4, '#', '2022-11-22 20:46:56', '2022-12-06 18:19:56', NULL),
(11, 'Sejarah', 8, 1, '/page/detail/sejarah-kantor-kementerian-agama-kabupaten-lampung-barat', '2022-11-22 20:47:02', '2022-12-06 18:38:28', NULL),
(12, 'Visi dan Misi', 8, 2, '#', '2022-11-22 20:47:09', '2022-12-06 18:31:34', NULL),
(15, 'PPID', 0, 5, '#', '2022-12-05 20:54:41', '2022-12-06 18:19:56', NULL),
(16, 'Tugas dan Funsi', 8, 3, '#', '2022-12-06 18:17:47', '2022-12-06 18:31:34', NULL),
(17, 'Struktur Organisasi', 8, 4, '#', '2022-12-06 18:18:51', '2022-12-06 18:31:34', NULL),
(18, 'Daftar Pejabat', 8, 5, '#', '2022-12-06 18:19:12', '2022-12-06 18:31:34', NULL),
(19, 'Data dan Informasi', 0, 3, '#', '2022-12-06 18:19:46', '2022-12-06 18:19:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ministry_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `configs`
--

INSERT INTO `configs` (`id`, `logo`, `footer_text`, `ministry_name`, `phone`, `email`, `address`, `long`, `lat`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'thumbnail/1670300237_kemenag lambar.png', 'Sosial Media :', 'Kantor Kementerian Agama Kabupaten Lampung Barat', '0728 21062', 'kablampungbarat@kemenag.go.id', 'Jln. Mawar No.7 Way Mengkau-Liwa Lampung Barat 34811', '-', '-', 'Copyright@2022 Kemenag Lampung Barat | All Right Reserved', NULL, '2022-12-05 21:17:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `user_id`, `title`, `file_name`, `created_at`, `updated_at`) VALUES
(6, 1, 'kuis', 'file/1667881154_LCKH FORMAT.pdf', '2022-11-07 21:15:51', '2022-11-07 21:19:14'),
(7, 1, 'logo', 'file/1668300407_logo.png', '2022-11-12 17:46:47', '2022-11-12 17:46:47'),
(8, 6, 'peraturan BKN NO. 7 Tahun 2021', 'file/1670308696_peraturan BKN NO. 7 Tahun 2021.pdf', '2022-12-05 23:38:16', '2022-12-05 23:38:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `infographics`
--

CREATE TABLE `infographics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `infographics`
--

INSERT INTO `infographics` (`id`, `user_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(3, 1, 'lorem vite', 'thumbnail/1668353542_microsoft-edge-LXjbmtqn6lg-unsplash.jpg', '2022-10-20 21:07:49', '2022-11-13 08:32:22'),
(8, 1, 'infografis 2', 'thumbnail/1668353578_unsplash-NuFUbftUu_s-unsplash.jpg', '2022-11-13 08:32:58', '2022-11-13 08:32:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `infos`
--

INSERT INTO `infos` (`id`, `user_id`, `title`, `link`, `created_at`, `updated_at`) VALUES
(2, 1, 'Hasil Uji Publik Pendataan Non ASN Kementerian Agama', '#', '2022-11-08 00:08:44', '2022-11-13 08:27:40'),
(4, 1, 'Pengumuman Rekrutmen PPPK di Lingkungan Kementerian Agama', '#', '2022-11-13 08:28:10', '2022-11-13 08:28:10'),
(5, 6, 'Peraturan BKN no 7 tahun 2021', 'http://127.0.0.1:8080/storage/file/1670308696_peraturan BKN NO. 7 Tahun 2021.pdf', '2022-12-05 23:39:46', '2022-12-05 23:39:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`menu_id`, `name`, `parent_id`, `url`, `sort_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'menu 1', 0, NULL, 1, '2022-11-16 23:23:22', '2022-11-22 00:37:41', NULL),
(6, 'Menu 2', 0, NULL, 1, '2022-11-16 23:23:29', '2022-11-22 00:57:05', NULL),
(7, 'sub menu 1', 5, NULL, 0, '2022-11-16 23:23:38', '2022-11-16 23:23:38', NULL),
(8, 'sub menu 2', 6, NULL, 0, '2022-11-16 23:46:20', '2022-11-16 23:46:20', NULL),
(9, 'Menu 3', 5, NULL, 1, '2022-11-17 01:18:18', '2022-11-22 00:37:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_18_161325_create_categories_table', 1),
(6, '2022_10_18_162510_add_level_to_users_table', 2),
(7, '2022_10_21_020558_create_infographics_table', 3),
(8, '2022_10_21_043339_create_posts_table', 4),
(9, '2022_10_28_032125_create_configs_table', 5),
(10, '2022_11_08_013222_create_files_table', 6),
(11, '2022_11_08_063719_create_infos_table', 7),
(12, '2022_11_09_014709_create_sliders_table', 8),
(13, '2022_11_09_022536_create_sliders_table', 9),
(14, '2022_11_09_031228_create_pages_table', 10),
(15, '2022_11_10_141821_create_posts_table', 11),
(16, '2022_11_17_042431_create_menus_table', 12),
(17, '2022_11_23_024856_create_categories_table', 13),
(18, '2022_11_27_000252_create_videos_table', 14),
(19, '2022_11_27_025415_create_services_table', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `title`, `slug`, `body`, `image`, `created_at`, `updated_at`) VALUES
(2, 1, 'page one', 'page-one', '<p>hello</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/Kementerian_Agama_new_logo.png\" style=\"height:599px; width:668px\" /></p>', 'thumbnail/1668059040_WhatsApp Image 2022-11-02 at 06.54.19.jpeg', '2022-11-09 22:44:00', '2022-11-09 22:44:00'),
(3, 1, 'aaa', 'aaa', '<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/Kementerian_Agama_new_logo.png\" style=\"height:90px; width:100px\" /></p>', 'thumbnail/1668061821_WhatsApp Image 2022-11-02 at 06.54.19.jpeg', '2022-11-09 23:30:21', '2022-11-09 23:30:21'),
(4, 6, 'Sejarah Kantor Kementerian Agama Kabupaten Lampung Barat', 'sejarah-kantor-kementerian-agama-kabupaten-lampung-barat', '<p><strong>Kabupaten Lampung Barat</strong> adalah salah satu kabupaten di Provinsi Lampung, dengan ibukota Liwa. Kabupaten Lampung Barat dibentuk berdasarkan Undang-Undang Nomor 6 Tahun 1991 tanggal 16 Agustus 1991 yang merupakan hasil pemekaran dari Kabupaten Lampung Utara. Saat ini Bupati Kabupaten Lampung Barat adalah Parosil Mabsus, S.Pd dan Wakil Bupati Drs. H. Mad Hasnurin. Kabupaten ini dominan dengan perbukitan. Daerah pegunungan yang merupakan punggung Bukit Barisan, ditempati oleh fulkanik quarter dari beberapa formasi. Daerah ini berada pada ketinggian 50-&gt;1000 mdpl. Daerah ini dilalui oleh sesar Semangka, dengan lebar zona sebesar lebih kurang 20 Km. Pada beberapa tempat dijumpai beberapa aktifitas vulkanik dan pemunculan panas bumi.</p>\r\n\r\n<p>Dengan luas wilayah lebih kurang 3.368,14 KM2, setelah pemekaran Kabupaten Pesisir Barat atau 10,6 % dari luas wilayah Provinsi Lampung dan mempunyai garis pantai sepanjang 260 KM Lampung Barat terletak pada koordinat 4O, 47&rsquo;, 16&rdquo; - 5o, 56&rsquo;, 42&rdquo; lintang selatan dan 103o, 35&rsquo;,08&rdquo; &ndash; 104o, 33&rsquo;, 51&rdquo; Bujur Timur.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Wilayah Kabupaten Lampung Barat pada saat berdirinya berbatasan dengan :</p>\r\n\r\n<ul>\r\n	<li>Sebelah Utara &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Kabupaten Kaur (Provinsi Bengkulu)</li>\r\n	<li>Sebelah Selatan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Samudera Hindia dan Teluk Semangka</li>\r\n	<li>Sebelah Barat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Samudera Hindia</li>\r\n	<li>Sebelah Timur &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Kabupaten Lampung Utara, Kabupaten Way Kanan dan &nbsp;&nbsp;Kabupaten Tanggamus.</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Gambaran Umum Kantor Kementerian Agama Kabupaten Lampung Barat</strong></li>\r\n</ol>\r\n\r\n<p>Kementerian Agama Lampung barat yang selanjutnya disebut Kemenag dibentuk pada tahun 1992 Dimana Lampung Barat mulai berdiri sebagai Kabupaten setelah terpisah dari Lampung Utara, berdasarkan Keputusan Menteri Agama Republik Indonesia : Nomor 267 Tahun 1992 tentang Pembentukan Kantor Kementerian/Departemen Agama Kabupaten Lampung Barat</p>\r\n\r\n<p>Kantor Kementerian Agama Kabupaten Lampung Barat menjalankan tugasnya setelah ditunjuknya pelaksana tugas penjabat Kepala Kantor Kemenag Lampung Barat pada Tahun 1992. Penjabat Kepala Kemenag dari mulai berdiri sampai sekarang telah berganti beberapa periode, sebagai berikut:</p>\r\n\r\n<p>1. Drs. Zainuddin Adlan (1992-1993)<br />\r\n2. Drs. H. Asy &aacute;ri Ali (1993-1996)<br />\r\n3. Drs. H. A. Tarmizi Osman (1996-2001)<br />\r\n4. Drs. H. A. Ainullah Firdaus (2001-2004)<br />\r\n5. H. Chudri Rozali, BA (2004-2006)<br />\r\n6. Drs. H.M. Ardani A.Hadi,MM, M.Ag (2006-2010)<br />\r\n7. Drs. H. Khobiran Syah, M.Pd.I (2010-2106)</p>\r\n\r\n<p>8. Drs. H. Mohammad Suhanda, M.Pd.I (2016-2020)</p>\r\n\r\n<p>9. Maryan Hasan, S.Ag. M.Pd.I&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2021-Sekarang)</p>\r\n\r\n<p>Awal mula pelaksanaan proses pelayanan Kantor Kementerian Agama Lampung Barat berpusat di KUA Kecamatan Balik Bukit pada Tahun 1992-1996, kemudian pada Tahun 1996 Kantor Kemenag mendapatkan lahan tanah seluas 2.791,4 M2 dan pada tahun itu juga mendapat dana APBN untuk pembangunan gedung seluas 428,55 M2 melalui Kementerian Agama. Sehingga pada tahun tersebut secara definitif Kantor kementerian agama resmi berkantor di Komplek Pemerintah Daerah Kabupaten Lampung Barat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan selesainya pembangunan Kantor Kementerian Agama Kabupaten Lampung Barat maka pada tanggal 29 Juli 1996 M / 13 Rabiul Awal 1417 H Kantor Kementerian Agama Kabupaten Lampung Barat diresmikan oleh Kepala Kanwil Departemen Agama Provinsi Lampung Bapak Drs. Hi. Sjamsuddin Thohir dengan alamat: Jl. Mawar No.5 Kelurahan Way Mengaku Kecamatan Balik Bukit Kabupaten Lampung Barat.</p>\r\n\r\n<p>Struktur Kantor Kementerian Agama Kabupaten Lampung Barat memiliki Tipologi IIT berdasarkan Keputusan Menteri Agama Republik Indonesia Nomor 373 Tahun 2002, dan berdasarkan Peraturan Menteri Agama Republik Indonesia Nomor 13 Tahun 2012 Kantor Kementerian Agama Kabupaten Lampung Barat terdiri dari :</p>\r\n\r\n<ul>\r\n	<li>1 (satu) Eselon IIIa yaitu Kepala Kantor Kementerian Agama.</li>\r\n	<li>5 (lima) Eselon IVa terdiri dari Kepala Sub Bagian Tata Usaha, Kepala Seksi Bimbingan Masyarakat Islam, Kepala Seksi Pendidikan Madrasah, Kepala Seksi Pendidikan Agama dan Keagamaan Islam dan Kepala Seksi Penyelenggaraan Haji dan Umroh.</li>\r\n	<li>2 (dua) Eselon IVb yaitu Penyelenggara Zakat Wakaf dan Penyelenggara Bimbingan Masyarakat Hindu.</li>\r\n</ul>', 'thumbnail/1670376665_LOGO KEMENAG PNG-1-1-min.png', '2022-12-06 18:31:06', '2022-12-06 18:31:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `slug`, `body`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 'post satuu', 'post-satuu', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque reiciendis, eligendi eveniet numquam quae officiis exercitationem vero hic vitae deserunt sed blanditiis deleniti minus cumque veritatis quos dolorem molestiae incidunt.</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam molestiae, accusantium dicta voluptate doloribus neque explicabo soluta iure? Consequatur modi distinctio id illum? Dolore ex odio tenetur molestiae totam! Tempora?</p>', 'thumbnail/1668381308_bg_banner1 (FILEminimizer).jpg', NULL, '2022-11-12 08:49:35', '2022-11-13 16:15:09'),
(6, 1, 1, 'Post 2', 'post-2', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque reiciendis, eligendi eveniet numquam quae officiis exercitationem vero hic vitae deserunt sed blanditiis deleniti minus cumque veritatis quos dolorem molestiae incidunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam molestiae, accusantium dicta voluptate doloribus neque explicabo soluta iure? Consequatur modi distinctio id illum? Dolore ex odio tenetur molestiae totam! Tempora?</p>', 'thumbnail/1668354979_unsplash-NuFUbftUu_s-unsplash.jpg', NULL, '2022-11-13 08:56:19', '2022-11-13 08:56:19'),
(7, 1, 1, 'post 3', 'post-3', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque reiciendis, eligendi eveniet numquam quae officiis exercitationem vero hic vitae deserunt sed blanditiis deleniti minus cumque veritatis quos dolorem molestiae incidunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam molestiae, accusantium dicta voluptate doloribus neque explicabo soluta iure? Consequatur modi distinctio id illum? Dolore ex odio tenetur molestiae totam! Tempora?</p>', 'thumbnail/1668355018_microsoft-edge-LXjbmtqn6lg-unsplash.jpg', NULL, '2022-11-13 08:56:58', '2022-11-13 08:56:58'),
(8, 1, 1, 'post 4', 'post-4', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque reiciendis, eligendi eveniet numquam quae officiis exercitationem vero hic vitae deserunt sed blanditiis deleniti minus cumque veritatis quos dolorem molestiae incidunt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam molestiae, accusantium dicta voluptate doloribus neque explicabo soluta iure? Consequatur modi distinctio id illum? Dolore ex odio tenetur molestiae totam! Tempora?</p>', 'thumbnail/1668355061_xps-yNvVnPcurD8-unsplash.jpg', NULL, '2022-11-13 08:57:41', '2022-11-13 08:57:41'),
(9, 1, 2, 'Post KUA 1', 'post-kua-1', '<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/Kementerian_Agama_new_logo.png\" style=\"height:135px; width:150px\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt quis optio adipisci nam assumenda illum provident vitae tempora. Debitis aliquid voluptatibus enim neque voluptates recusandae odio eos accusamus. Doloribus voluptas repudiandae dolor perspiciatis eligendi perferendis praesentium ex quam facere necessitatibus molestias consequuntur et deleniti nostrum hic laudantium mollitia labore itaque, accusamus quod, debitis, eum pariatur! Provident dolorum deserunt facilis voluptates fuga excepturi id placeat debitis, recusandae ipsam, aperiam officia cumque eum est incidunt tempora, eligendi ea consequatur? Quaerat animi qui adipisci a quas dicta doloremque est fuga. Quaerat laborum aut facere eum laboriosam fugit cupiditate. Dignissimos error sapiente temporibus numquam aspernatur enim unde ea. Dolorem quibusdam vitae deleniti velit. Aperiam totam harum excepturi cumque omnis explicabo id beatae quas minus vitae molestias enim in delectus, maxime tempore fugiat ratione necessitatibus obcaecati laborum? Fugiat aliquid, magnam provident laborum assumenda fuga quos cum doloremque nemo quod eos architecto ab, itaque sit minima voluptatem deserunt autem officia voluptatibus mollitia et! Dignissimos, harum qui. Molestias neque eligendi similique quam, dicta ratione in excepturi ipsum odit repellat. Eligendi officiis fuga aspernatur mollitia assumenda sequi molestiae quam est reprehenderit quas. Beatae ipsum ex natus quis corporis in error, sed voluptatem? Itaque unde debitis necessitatibus amet molestias.</p>', 'thumbnail/1668355482_project2 (FILEminimizer).jpg', NULL, '2022-11-13 09:04:42', '2022-11-13 09:04:42'),
(10, 1, 2, 'Post KUA 2', 'post-kua-2', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt quis optio adipisci nam assumenda illum provident vitae tempora. Debitis aliquid voluptatibus enim neque voluptates recusandae odio eos accusamus. Doloribus voluptas repudiandae dolor perspiciatis eligendi perferendis praesentium ex quam facere necessitatibus molestias consequuntur et deleniti nostrum hic laudantium mollitia labore itaque, accusamus quod, debitis, eum pariatur! Provident dolorum deserunt facilis voluptates fuga excepturi id placeat debitis, recusandae ipsam, aperiam officia cumque eum est incidunt tempora, eligendi ea consequatur? Quaerat animi qui adipisci a quas dicta doloremque est fuga. Quaerat laborum aut facere eum laboriosam fugit cupiditate. Dignissimos error sapiente temporibus numquam aspernatur enim unde ea. Dolorem quibusdam vitae deleniti velit. Aperiam totam harum excepturi cumque omnis explicabo id beatae quas minus vitae molestias enim in delectus, maxime tempore fugiat ratione necessitatibus obcaecati laborum? Fugiat aliquid, magnam provident laborum assumenda fuga quos cum doloremque nemo quod eos architecto ab, itaque sit minima voluptatem deserunt autem officia voluptatibus mollitia et! Dignissimos, harum qui. Molestias neque eligendi similique quam, dicta ratione in excepturi ipsum odit repellat. Eligendi officiis fuga aspernatur mollitia assumenda sequi molestiae quam est reprehenderit quas. Beatae ipsum ex natus quis corporis in error, sed voluptatem? Itaque unde debitis necessitatibus amet molestias.</p>', 'thumbnail/1668355552_project5 (FILEminimizer).jpg', NULL, '2022-11-13 09:05:52', '2022-11-13 09:05:52'),
(11, 1, 2, 'Post KUA 3', 'post-kua-3', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt quis optio adipisci nam assumenda illum provident vitae tempora. Debitis aliquid voluptatibus enim neque voluptates recusandae odio eos accusamus. Doloribus voluptas repudiandae dolor perspiciatis eligendi perferendis praesentium ex quam facere necessitatibus molestias consequuntur et deleniti nostrum hic laudantium mollitia labore itaque, accusamus quod, debitis, eum pariatur! Provident dolorum deserunt facilis voluptates fuga excepturi id placeat debitis, recusandae ipsam, aperiam officia cumque eum est incidunt tempora, eligendi ea consequatur? Quaerat animi qui adipisci a quas dicta doloremque est fuga. Quaerat laborum aut facere eum laboriosam fugit cupiditate. Dignissimos error sapiente temporibus numquam aspernatur enim unde ea. Dolorem quibusdam vitae deleniti velit. Aperiam totam harum excepturi cumque omnis explicabo id beatae quas minus vitae molestias enim in delectus, maxime tempore fugiat ratione necessitatibus obcaecati laborum? Fugiat aliquid, magnam provident laborum assumenda fuga quos cum doloremque nemo quod eos architecto ab, itaque sit minima voluptatem deserunt autem officia voluptatibus mollitia et! Dignissimos, harum qui. Molestias neque eligendi similique quam, dicta ratione in excepturi ipsum odit repellat. Eligendi officiis fuga aspernatur mollitia assumenda sequi molestiae quam est reprehenderit quas. Beatae ipsum ex natus quis corporis in error, sed voluptatem? Itaque unde debitis necessitatibus amet molestias.</p>', 'thumbnail/1668355580_project4 (FILEminimizer).jpg', NULL, '2022-11-13 09:06:20', '2022-11-13 09:06:20'),
(12, 1, 2, 'Post KUA 4', 'post-kua-4', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt quis optio adipisci nam assumenda illum provident vitae tempora. Debitis aliquid voluptatibus enim neque voluptates recusandae odio eos accusamus. Doloribus voluptas repudiandae dolor perspiciatis eligendi perferendis praesentium ex quam facere necessitatibus molestias consequuntur et deleniti nostrum hic laudantium mollitia labore itaque, accusamus quod, debitis, eum pariatur! Provident dolorum deserunt facilis voluptates fuga excepturi id placeat debitis, recusandae ipsam, aperiam officia cumque eum est incidunt tempora, eligendi ea consequatur? Quaerat animi qui adipisci a quas dicta doloremque est fuga. Quaerat laborum aut facere eum laboriosam fugit cupiditate. Dignissimos error sapiente temporibus numquam aspernatur enim unde ea. Dolorem quibusdam vitae deleniti velit. Aperiam totam harum excepturi cumque omnis explicabo id beatae quas minus vitae molestias enim in delectus, maxime tempore fugiat ratione necessitatibus obcaecati laborum? Fugiat aliquid, magnam provident laborum assumenda fuga quos cum doloremque nemo quod eos architecto ab, itaque sit minima voluptatem deserunt autem officia voluptatibus mollitia et! Dignissimos, harum qui. Molestias neque eligendi similique quam, dicta ratione in excepturi ipsum odit repellat. Eligendi officiis fuga aspernatur mollitia assumenda sequi molestiae quam est reprehenderit quas. Beatae ipsum ex natus quis corporis in error, sed voluptatem? Itaque unde debitis necessitatibus amet molestias.</p>', 'thumbnail/1668355623_project3 (FILEminimizer).jpg', NULL, '2022-11-14 09:07:03', '2022-11-13 09:07:03'),
(13, 1, 3, 'Post Madrasah 1', 'post-madrasah-1', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro odio rem, possimus dolore quaerat sed aut eaque nisi perspiciatis fugiat sint laudantium, nesciunt quidem, fugit laboriosam iusto animi reiciendis asperiores magni. Incidunt dicta reprehenderit harum minima eius, unde a autem repudiandae nam? Asperiores autem dignissimos iusto vitae sequi incidunt alias non eligendi ut perferendis mollitia voluptates, perspiciatis nesciunt molestias? Sapiente consequuntur quos magnam ullam. Laboriosam quisquam, praesentium et soluta, optio commodi vel tenetur in, architecto cupiditate esse ipsam dolorem perspiciatis? Laudantium recusandae, quis quibusdam, eveniet nesciunt numquam autem sit repellendus reprehenderit consequuntur ad ratione dolore quod nam distinctio exercitationem ducimus. Ipsum quos molestias eum tempore. Fugit ea quod animi amet enim voluptatum! Corrupti nesciunt blanditiis, nostrum delectus aperiam dolorem nulla minima! Sint reiciendis dolorum ab exercitationem, quaerat eveniet! Ipsum iure dolorem mollitia ea quo! Iste asperiores magnam deserunt ipsa consectetur nihil ducimus natus qui doloremque, nam quo sunt quia quas.</p>', 'thumbnail/1668355742_bg_banner1 (FILEminimizer).jpg', NULL, '2022-11-13 09:09:02', '2022-11-13 09:09:02'),
(14, 1, 3, 'Post Madrasah 2', 'post-madrasah-2', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro odio rem, possimus dolore quaerat sed aut eaque nisi perspiciatis fugiat sint laudantium, nesciunt quidem, fugit laboriosam iusto animi reiciendis asperiores magni. Incidunt dicta reprehenderit harum minima eius, unde a autem repudiandae nam? Asperiores autem dignissimos iusto vitae sequi incidunt alias non eligendi ut perferendis mollitia voluptates, perspiciatis nesciunt molestias? Sapiente consequuntur quos magnam ullam. Laboriosam quisquam, praesentium et soluta, optio commodi vel tenetur in, architecto cupiditate esse ipsam dolorem perspiciatis? Laudantium recusandae, quis quibusdam, eveniet nesciunt numquam autem sit repellendus reprehenderit consequuntur ad ratione dolore quod nam distinctio exercitationem ducimus. Ipsum quos molestias eum tempore. Fugit ea quod animi amet enim voluptatum! Corrupti nesciunt blanditiis, nostrum delectus aperiam dolorem nulla minima! Sint reiciendis dolorum ab exercitationem, quaerat eveniet! Ipsum iure dolorem mollitia ea quo! Iste asperiores magnam deserunt ipsa consectetur nihil ducimus natus qui doloremque, nam quo sunt quia quas.</p>', 'thumbnail/1668356031_bg_banner2 (FILEminimizer).jpg', NULL, '2022-11-13 09:09:36', '2022-11-13 09:13:51'),
(15, 1, 3, 'Post Madrasah 3', 'post-madrasah-3', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro odio rem, possimus dolore quaerat sed aut eaque nisi perspiciatis fugiat sint laudantium, nesciunt quidem, fugit laboriosam iusto animi reiciendis asperiores magni. Incidunt dicta reprehenderit harum minima eius, unde a autem repudiandae nam? Asperiores autem dignissimos iusto vitae sequi incidunt alias non eligendi ut perferendis mollitia voluptates, perspiciatis nesciunt molestias? Sapiente consequuntur quos magnam ullam. Laboriosam quisquam, praesentium et soluta, optio commodi vel tenetur in, architecto cupiditate esse ipsam dolorem perspiciatis? Laudantium recusandae, quis quibusdam, eveniet nesciunt numquam autem sit repellendus reprehenderit consequuntur ad ratione dolore quod nam distinctio exercitationem ducimus. Ipsum quos molestias eum tempore. Fugit ea quod animi amet enim voluptatum! Corrupti nesciunt blanditiis, nostrum delectus aperiam dolorem nulla minima! Sint reiciendis dolorum ab exercitationem, quaerat eveniet! Ipsum iure dolorem mollitia ea quo! Iste asperiores magnam deserunt ipsa consectetur nihil ducimus natus qui doloremque, nam quo sunt quia quas.</p>', 'thumbnail/1668355805_microsoft-edge-LXjbmtqn6lg-unsplash.jpg', NULL, '2022-11-13 09:10:05', '2022-11-13 09:10:05'),
(16, 1, 3, 'Post Madrasah 4', 'post-madrasah-4', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro odio rem, possimus dolore quaerat sed aut eaque nisi perspiciatis fugiat sint laudantium, nesciunt quidem, fugit laboriosam iusto animi reiciendis asperiores magni. Incidunt dicta reprehenderit harum minima eius, unde a autem repudiandae nam? Asperiores autem dignissimos iusto vitae sequi incidunt alias non eligendi ut perferendis mollitia voluptates, perspiciatis nesciunt molestias? Sapiente consequuntur quos magnam ullam. Laboriosam quisquam, praesentium et soluta, optio commodi vel tenetur in, architecto cupiditate esse ipsam dolorem perspiciatis? Laudantium recusandae, quis quibusdam, eveniet nesciunt numquam autem sit repellendus reprehenderit consequuntur ad ratione dolore quod nam distinctio exercitationem ducimus. Ipsum quos molestias eum tempore. Fugit ea quod animi amet enim voluptatum! Corrupti nesciunt blanditiis, nostrum delectus aperiam dolorem nulla minima! Sint reiciendis dolorum ab exercitationem, quaerat eveniet! Ipsum iure dolorem mollitia ea quo! Iste asperiores magnam deserunt ipsa consectetur nihil ducimus natus qui doloremque, nam quo sunt quia quas.</p>', 'thumbnail/1668355835_unsplash-NuFUbftUu_s-unsplash.jpg', NULL, '2022-11-13 09:10:35', '2022-11-13 09:10:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `caption`, `image`, `link`, `created_at`, `updated_at`) VALUES
(3, 1, 'Layanan 1', 'caption layanan 1', '', 'https://youtube.com', '2022-11-26 20:55:51', '2022-11-26 20:55:51'),
(4, 1, 'Layanan 2', 'Caption Layanan 2', '', 'https://youtube.com', '2022-11-26 20:56:10', '2022-11-26 20:56:10'),
(5, 1, 'Layanan 3', 'caption layanan 3', '', '#', '2022-11-26 20:57:03', '2022-11-26 20:57:03'),
(6, 1, 'Layanan 4', 'caption layanan 4', '', '#', '2022-11-26 20:57:25', '2022-11-26 20:57:25'),
(7, 1, 'Layanan 5', 'Caption Layanan 5', '', '#', '2022-11-26 20:57:47', '2022-11-26 20:57:47'),
(8, 1, 'Layanan 6', 'Caption Layanan 6', '', NULL, '2022-11-26 20:58:03', '2022-11-26 20:58:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `user_id`, `title`, `caption`, `image`, `link`, `created_at`, `updated_at`) VALUES
(2, 1, 'slide 2', 'subtitle 2', 'slider/1670301375_kepala lambar.png', NULL, '2022-11-08 19:47:04', '2022-12-05 21:36:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Feri Setiadi', 'verisetiadi@gmail.com', NULL, '$2y$10$lmLnwtu.GFEojVN33EdfeOwX1IaB6xtpgrHKM3q4bphuRtOUPQ27O', 'admin', NULL, '2022-10-18 09:24:09', '2022-10-18 09:24:09'),
(6, 'Hariska Paunsyah', 'Hariska.paunsyah20@gmail.com', NULL, '$2y$10$Uxu/iezS5xdJdlT2MNHPi.BpYfco.ZLuk/gGk0k4lDL2K8pNOq4Am', 'admin', NULL, '2022-12-05 20:52:17', '2022-12-05 20:52:17'),
(7, 'solihin', 'sholihin@gmail.com', NULL, '$2y$10$7J4Yp4Eg15Jc2Rt/13VxouHla.e0HXZqrVEvcPgJDbD9wBmV9cxjC', 'kua', NULL, '2022-12-05 23:23:33', '2022-12-05 23:23:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `title`, `caption`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'Upacara HAB Kemenag', 'caption hab', 'video/1669508208_kim-becker-EoCwQ5PerAs-unsplash.jpg', 'https://youtube.com', '2022-11-26 17:16:48', '2022-11-26 17:16:48'),
(2, 1, 'video 2', 'lorem ipsum', 'video/1669520353_undraw_Photo_session_re_c0cp.png', 'https://youtube.com', '2022-11-26 20:39:13', '2022-11-26 20:39:13'),
(3, 1, 'video 3', 'caption video 3', 'video/1669520376_undraw_product_photography_91i2.png', 'https://youtube.com', '2022-11-26 20:39:36', '2022-11-26 20:39:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `infographics`
--
ALTER TABLE `infographics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `infographics`
--
ALTER TABLE `infographics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
