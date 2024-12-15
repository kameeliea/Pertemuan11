use CoffeShop2;

CREATE VIEW View_Penjualan_Produk AS
SELECT 
    p.No_Transaksi, 
    p.Tanggal_Transaksi, 
    p.Total_Pembayaran,
    p.Jenis_Pembayaran, 
    p.Pegawai_ID,
    pr.Produk_ID, 
    pr.Nama_Produk, 
    pr.Harga, 
    SUM(p.Total_Pembayaran) AS Total_Penjualan
FROM 
    Penjualan p
JOIN 
    Produk pr ON p.No_Transaksi = pr.Produk_ID
GROUP BY 
    p.No_Transaksi, 
    p.Tanggal_Transaksi, 
    p.Total_Pembayaran,
    p.Jenis_Pembayaran, 
    p.Pegawai_ID, 
    pr.Produk_ID, 
    pr.Nama_Produk, 
    pr.Harga;

	SELECT * FROM View_Penjualan_Produk;