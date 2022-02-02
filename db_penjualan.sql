-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2022 pada 07.27
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pelanggan`
--

CREATE TABLE `m_pelanggan` (
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kirim` text NOT NULL,
  `lokasi` varchar(150) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `top` int(11) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_produk`
--

CREATE TABLE `m_produk` (
  `id` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `no_customer` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `ukuran` varchar(200) NOT NULL,
  `ukuran_sheet` varchar(200) DEFAULT NULL,
  `material` varchar(200) NOT NULL DEFAULT '0',
  `flute` varchar(100) NOT NULL,
  `sambungan` varchar(100) DEFAULT NULL,
  `tipe` varchar(100) DEFAULT NULL,
  `wall` varchar(100) DEFAULT NULL,
  `l_panjang` varchar(100) DEFAULT NULL,
  `l_lebar` varchar(100) DEFAULT NULL,
  `berat_bersih` varchar(100) DEFAULT NULL,
  `luas_bersih` varchar(100) DEFAULT NULL,
  `no_design` varchar(100) DEFAULT NULL,
  `jml_ikat` varchar(100) DEFAULT NULL,
  `jml_palet` varchar(100) DEFAULT NULL,
  `jml_paku` varchar(100) DEFAULT NULL,
  `no_pisau` varchar(100) DEFAULT NULL,
  `no_karet` varchar(100) DEFAULT NULL,
  `COA` varchar(100) DEFAULT NULL,
  `design` varchar(100) DEFAULT NULL,
  `spesial_req` varchar(100) DEFAULT NULL,
  `toleransi_kirim` varchar(100) DEFAULT NULL,
  `creasing` varchar(100) DEFAULT NULL,
  `warna` varchar(100) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `tipe_box` varchar(100) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_setting`
--

CREATE TABLE `m_setting` (
  `nm_aplikasi` varchar(100) DEFAULT NULL,
  `singkatan` varchar(50) DEFAULT NULL,
  `diskon_member` int(5) DEFAULT NULL,
  `nm_toko` varchar(255) DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(20) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_setting`
--

INSERT INTO `m_setting` (`nm_aplikasi`, `singkatan`, `diskon_member`, `nm_toko`, `alamat`, `no_telp`, `logo`) VALUES
('Sistem Penjualan', 'SI Penjualan', 10, 'PPI', 'WONOGIRI', '-', 'logo.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(3) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nm_user` varchar(99) COLLATE latin1_general_ci DEFAULT NULL,
  `level` enum('Admin','User','Marketing','Penjualan') COLLATE latin1_general_ci NOT NULL DEFAULT 'User'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nm_user`, `level`) VALUES
(1, 'developer', 'cHJpbWFwYXBlcjIwMjA=', 'developer', 'Admin'),
(2, 'ppismg', 'cHBpc21n', 'ppismg', 'Marketing'),
(3, 'ppiwng', 'cHBpd25n', 'ppiwng', 'Penjualan'),
(4, 'user', 'dXNlcg==', 'user', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trs_po`
--

CREATE TABLE `trs_po` (
  `id` int(11) NOT NULL,
  `no_po` varchar(25) NOT NULL,
  `tgl_po` date NOT NULL,
  `kode_po` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `total_qty` int(11) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kirim` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `top` int(11) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trs_po_detail`
--

CREATE TABLE `trs_po_detail` (
  `id` int(11) NOT NULL,
  `no_po` varchar(25) NOT NULL,
  `tgl_po` date NOT NULL,
  `kode_po` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `qty` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `ukuran` varchar(200) NOT NULL,
  `harga` decimal(10,2) NOT NULL DEFAULT '0.00',
  `material` varchar(200) NOT NULL DEFAULT '0',
  `flute` varchar(100) NOT NULL,
  `creasing` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `tipe_box` varchar(100) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kirim` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `top` int(11) NOT NULL,
  `ppn` varchar(50) DEFAULT NULL,
  `price_inc` decimal(10,2) DEFAULT NULL,
  `price_exc` decimal(10,2) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trs_so_detail`
--

CREATE TABLE `trs_so_detail` (
  `id` int(11) NOT NULL,
  `no_so` varchar(25) NOT NULL,
  `tgl_so` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `salesman` varchar(150) NOT NULL,
  `no_po` varchar(25) NOT NULL,
  `tgl_po` date NOT NULL,
  `kode_po` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `ukuran` varchar(200) NOT NULL,
  `harga` decimal(10,2) NOT NULL DEFAULT '0.00',
  `material` varchar(200) NOT NULL DEFAULT '0',
  `flute` varchar(100) NOT NULL,
  `creasing` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `tipe_box` varchar(100) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kirim` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `top` int(11) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trs_surat_jalan`
--

CREATE TABLE `trs_surat_jalan` (
  `id` int(11) NOT NULL,
  `no_surat_jalan` varchar(25) NOT NULL,
  `tgl_surat_jalan` date NOT NULL,
  `no_pkb` varchar(100) NOT NULL,
  `no_kendaraan` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `no_wo` varchar(25) NOT NULL,
  `tgl_wo` date NOT NULL,
  `no_so` varchar(25) NOT NULL,
  `tgl_so` date NOT NULL,
  `no_po` varchar(25) NOT NULL,
  `kode_po` varbinary(50) NOT NULL,
  `tgl_po` date NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `flute` varchar(200) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trs_wo`
--

CREATE TABLE `trs_wo` (
  `id` int(11) NOT NULL,
  `no_wo` varchar(25) NOT NULL,
  `tgl_wo` date NOT NULL,
  `line` varchar(100) NOT NULL,
  `no_artikel` varchar(100) NOT NULL,
  `batchno` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `no_so` varchar(25) NOT NULL,
  `tgl_so` date NOT NULL,
  `no_po` varchar(25) NOT NULL,
  `kode_po` varchar(50) NOT NULL,
  `tgl_po` date NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `ukuran` varchar(200) NOT NULL,
  `harga` decimal(10,2) NOT NULL DEFAULT '0.00',
  `warna` varchar(100) NOT NULL,
  `flute` varchar(100) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `tipe_box` varchar(100) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trs_wo_detail`
--

CREATE TABLE `trs_wo_detail` (
  `id` int(11) NOT NULL,
  `no_wo` varchar(25) NOT NULL,
  `tgl_wo` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `tgl_crg` date DEFAULT NULL,
  `hasil_crg` varchar(100) DEFAULT NULL,
  `rusak_crg` varchar(100) DEFAULT NULL,
  `baik_crg` varchar(100) DEFAULT NULL,
  `ket_crg` varchar(100) DEFAULT NULL,
  `tgl_flx` date DEFAULT NULL,
  `hasil_flx` varchar(100) DEFAULT NULL,
  `rusak_flx` varchar(100) DEFAULT NULL,
  `baik_flx` varchar(100) DEFAULT NULL,
  `ket_flx` varchar(100) DEFAULT NULL,
  `tgl_glu` date DEFAULT NULL,
  `hasil_glu` varchar(100) DEFAULT NULL,
  `rusak_glu` varchar(100) DEFAULT NULL,
  `baik_glu` varchar(100) DEFAULT NULL,
  `ket_glu` varchar(100) DEFAULT NULL,
  `tgl_stc` date DEFAULT NULL,
  `hasil_stc` varchar(100) DEFAULT NULL,
  `rusak_stc` varchar(100) DEFAULT NULL,
  `baik_stc` varchar(100) DEFAULT NULL,
  `ket_stc` varchar(100) DEFAULT NULL,
  `tgl_dic` date DEFAULT NULL,
  `hasil_dic` varchar(100) DEFAULT NULL,
  `rusak_dic` varchar(100) DEFAULT NULL,
  `baik_dic` varchar(100) DEFAULT NULL,
  `ket_dic` varchar(100) DEFAULT NULL,
  `tgl_gdg` date DEFAULT NULL,
  `hasil_gdg` varchar(100) DEFAULT NULL,
  `rusak_gdg` varchar(100) DEFAULT NULL,
  `baik_gdg` varchar(100) DEFAULT NULL,
  `ket_gdg` varchar(100) DEFAULT NULL,
  `tgl_exp` date DEFAULT NULL,
  `hasil_exp` varchar(100) DEFAULT NULL,
  `rusak_exp` varchar(100) DEFAULT NULL,
  `baik_exp` varchar(100) DEFAULT NULL,
  `ket_exp` varchar(100) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_pelanggan`
--
ALTER TABLE `m_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `m_produk`
--
ALTER TABLE `m_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `trs_po`
--
ALTER TABLE `trs_po`
  ADD PRIMARY KEY (`no_po`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indeks untuk tabel `trs_po_detail`
--
ALTER TABLE `trs_po_detail`
  ADD PRIMARY KEY (`no_po`,`kode_mc`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indeks untuk tabel `trs_so_detail`
--
ALTER TABLE `trs_so_detail`
  ADD PRIMARY KEY (`no_so`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indeks untuk tabel `trs_surat_jalan`
--
ALTER TABLE `trs_surat_jalan`
  ADD PRIMARY KEY (`no_surat_jalan`,`no_po`,`kode_mc`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indeks untuk tabel `trs_wo`
--
ALTER TABLE `trs_wo`
  ADD PRIMARY KEY (`no_wo`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indeks untuk tabel `trs_wo_detail`
--
ALTER TABLE `trs_wo_detail`
  ADD PRIMARY KEY (`no_wo`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_produk`
--
ALTER TABLE `m_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `trs_po`
--
ALTER TABLE `trs_po`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trs_po_detail`
--
ALTER TABLE `trs_po_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trs_so_detail`
--
ALTER TABLE `trs_so_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trs_surat_jalan`
--
ALTER TABLE `trs_surat_jalan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trs_wo`
--
ALTER TABLE `trs_wo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trs_wo_detail`
--
ALTER TABLE `trs_wo_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
