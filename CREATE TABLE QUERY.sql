--IMPORTING CSV FILES HAS BEEN DONE DIRECTLY BY IMPORT MENU IN POSTGRESQL--
CREATE TABLE pelanggan (
	id_customer VARCHAR,
	levels VARCHAR,
	nama VARCHAR,
	id_cabang_sales VARCHAR,
	cabang_sales VARCHAR,
	id_group VARCHAR,
	group_ak VARCHAR
);

ALTER TABLE pelanggan
ADD PRIMARY KEY (id_customer);


CREATE TABLE barang (
	kode_barang VARCHAR,
	sektor CHAR,
	nama_barang VARCHAR,
	tipe VARCHAR,
	nama_tipe VARCHAR,
	kode_lini INT,
	lini VARCHAR,
	kemasan VARCHAR
);

ALTER TABLE barang
ADD PRIMARY KEY (kode_barang);


CREATE TABLE penjualan (
	id_distributor VARCHAR,
	id_cabang VARCHAR,
	id_invoice VARCHAR,
	tanggal DATE,
	id_customer VARCHAR,
	id_barang VARCHAR,
	jumlah_barang INT,
	unit VARCHAR,
	harga INT,
	mata_uang VARCHAR,
	brand_id VARCHAR,
	lini VARCHAR
);
ALTER TABLE penjualan
ADD PRIMARY KEY (id_invoice);

ALTER TABLE penjualan
ADD FOREIGN KEY (id_customer) REFERENCES pelanggan(id_customer),
ADD FOREIGN KEY (id_barang) REFERENCES barang(kode_barang);