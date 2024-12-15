USE CoffeeShop4;

CREATE VIEW ViewTotalHargaProdukPerSupplier AS
SELECT 
    s.Supplier_ID,
    s.Nama_Supplier,
    SUM(p.Harga) AS TotalHargaProduk
FROM 
    Supplier s
JOIN 
    Produk p ON s.Supplier_ID = p.Supplier_ID
GROUP BY 
    s.Supplier_ID, s.Nama_Supplier;

SELECT * FROM ViewTotalHargaProdukPerSupplier;

