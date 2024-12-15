USE CoffeeShop4;

CREATE VIEW ViewTotalHonorPerJabatan AS
SELECT 
    j.Nama_Jabatan,
    SUM(p.Honor) AS TotalHonor
FROM 
    Pegawai p
JOIN 
    Jabatan j ON p.Jabatan_ID = j.Jabatan_ID
GROUP BY 
    j.Nama_Jabatan;

EXEC sp_help 'Pegawai';

ALTER TABLE Pegawai
ALTER COLUMN Honor INT;

SELECT * FROM ViewTotalHonorPerJabatan;







