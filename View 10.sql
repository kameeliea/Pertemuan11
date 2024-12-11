CREATE VIEW ViewProdukSupplier AS
SELECT p.Harga, s.No_Kontak, SUM(p.Harga) AS Total_Harga
FROM Produk p
JOIN Supplier s ON p.Supplier_ID = s.Supplier_ID
GROUP BY p.Harga, s.No_Kontak;

SELECT * FROM ViewProdukSupplier;

