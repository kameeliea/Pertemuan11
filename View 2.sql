use CoffeeShop4;

CREATE VIEW ViewGajiPegawai AS
SELECT Nama, Honor
FROM dbo.Pegawai
WHERE Honor > 2000000;

SELECT * FROM ViewGajiPegawai;