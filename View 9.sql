CREATE VIEW ViewTotalJumlahOO AS
SELECT Sumber_Produk, Nama_Produk
FROM dbo.Produk
WHERE Nama_Produk LIKE '%O';

SELECT * FROM ViewTotalJumlahOO;