SELECT 	nama, 
		group_ak,
		tanggal,
		cabang_sales, 
		nama_barang,
		jumlah_barang,
		id_invoice,
		SUM (jumlah_barang * harga) AS pendapatan,
		lini
FROM ( 
	SELECT 	plg.id_customer, plg.nama, plg.group_ak, plg.cabang_sales, brg.kode_barang, brg.nama_barang, pnj.id_customer, pnj.id_barang, 
			pnj.jumlah_barang, pnj.harga, pnj.lini, pnj.tanggal, pnj.id_invoice
	FROM penjualan AS pnj
	JOIN pelanggan AS plg
	ON pnj.id_customer = plg.id_customer
	JOIN barang AS brg
	ON pnj.id_barang = brg.kode_barang
	) AS tmp
GROUP BY 1,2,3,4,5,6,7,9

