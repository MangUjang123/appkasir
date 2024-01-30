
-- Database Backup --
-- Ver. : 1.0.1
-- Host : Server Host
-- Generating Time : Jan 29, 2024 at 22:40:35:PM


CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL AUTO_INCREMENT,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  PRIMARY KEY (`DetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO detailpenjualan VALUES
("1","1","1","5","3000.00"),
("2","2","4","3","6000.00"),
("3","3","10","5","2900.00"),
("4","4","18","2","10800.00"),
("5","5","5","2","7000.00"),
("6","6","21","1","330000.00"),
("7","7","1","1","3000.00");

CREATE TABLE `keranjang` (
  `KeranjangID` int(10) NOT NULL AUTO_INCREMENT,
  `ProdukID` int(10) NOT NULL,
  `Jumlah` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`KeranjangID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL,
  PRIMARY KEY (`PelangganID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO pelanggan VALUES
("1","Umum","Umum","0000000"),
("2","Williams","Pesona Dalung Permai IV no 13","081917913625"),
("3","Bezaliel Cahya Yehuda","Denpasar ","085738055323"),
("4","Tusena","Kuta ","089661718111"),
("5","Ferel","Denpasar ","099661718111"),
("6","bjirik","Kubu Gunung","085738107613");

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL AUTO_INCREMENT,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL,
  PRIMARY KEY (`PenjualanID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO penjualan VALUES
("1","2024-01-18","15000.00","2"),
("2","2024-01-18","18000.00","3"),
("3","2024-01-18","14500.00","4"),
("4","2024-01-18","21600.00","5"),
("5","2024-01-18","14000.00","6"),
("6","2024-01-23","330000.00","6"),
("7","2024-01-29","3000.00","1");

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(25) NOT NULL,
  `NamaProduk` varchar(225) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  PRIMARY KEY (`ProdukID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO produk VALUES
("1","8886008101091 ","AQUA BTL 600ML","3000.00","5"),
("2","8999999002503 ","BANGO KECAP MANIS BTL 275mL","32000.00","3"),
("3","8990800100012 "," MENTOS CANDY MINT ROL 37g","4600.00","10"),
("4","8992752119104 ","MIZONE MINUMAN BERNUTRISI LYCHEE LEM BTL 500mL","6000.00","20"),
("5","8992388101023 ","NU GREEN TEA HONEY BTL 500mL","7000.00","50"),
("6","8998866602549 ","NUVO FAMILY BIRU BAR 80GR","2800.00","100"),
("7","8993113031059 ","OBH COMBI OBAT BATUK PLUS FLU MENTHOL BTL 100mL","23100.00","20"),
("8","8999999706081 ","PEPSODENT WHITE 75g","7000.00","50"),
("9","8997035563544 "," POCARI SWEAT MINUMAN ISOTONIKBTL 350mL","6900.00","100"),
("10","8998866200301 ","SEDAAP MIE GORENG 90g","2900.00","200"),
("11","8991001780126 ","SELAMAT WAFER CHOCOLATE PCK 60g","2500.00","20"),
("12","8996196002954 ","PIATTOS RUMPUT LAUT 85GR","7000.00","20"),
("13","89686611670 ","QTELA SINGKONG BALADO 60G","6600.00","20"),
("14","53314502210 ","KUSUKA BARBEQUE 60G","6300.00","20"),
("15","89686596564 ","LAYS BBQ 75G","10000.00","10"),
("16","8992772585026 ","ADEM SARI CK BTL 350mL","6900.00","30"),
("17","8998899001470","BAYGON SPRAY LAVENDER KLG","54000.00","30"),
("18","8999999034160 "," BLUE BAND CUP 250g","10800.00","10"),
("19","8998009020223 ","BUAVITA APPLE TPK 250mL","9000.00","10"),
("20","8994755030264 ","GOOD TIME BROWNIES 76G","12000.00","10"),
("21","8999999009281 ","MOLTO YELLOW 300ML","330000.00","20");

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO user VALUES
("1","williams","williams","admin","1"),
("2","Arya Adi Tusena","sena","sena","2");