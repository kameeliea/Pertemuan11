use CoffeShop2;

CREATE VIEW ViewTotalProduk AS 
SELECT Harga,Nama_Produk,Sumber_Produk
FROM dbo.Produk
WHERE Harga > 27000;

SELECT * FROM ViewTotalProduk;
