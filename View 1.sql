use CoffeeShop4;

CREATE VIEW ViewTotalPenjualan AS
SELECT Harga, Kuantitas_Penjualan, Total_Biaya_Per_Produk
FROM dbo.Rincian_Penjualan
WHERE Harga > 40000;

SELECT * FROM ViewTotalPenjualan;