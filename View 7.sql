use CoffeShop2;

CREATE VIEW ViewTotalJenisPembayaran AS 
SELECT Total_Pembayaran,Jenis_Pembayaran
FROM dbo.Penjualan
WHERE Jenis_Pembayaran LIKE '%Tunai%';

SELECT * FROM ViewTotalJenisPembayaran;