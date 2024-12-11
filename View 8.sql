use CoffeShop2;

CREATE VIEW ViewPegawaiTanggalJabatanHonor AS
SELECT 
    P.Nama AS NamaPegawai,
    P.Tanggal_Diterima,
    J.Nama_Jabatan,
    SUM(P.Honor) AS TotalHonor
FROM 
    Pegawai P
JOIN 
    Jabatan J ON P.Jabatan_ID = J.Jabatan_ID
GROUP BY 
    P.Nama, P.Tanggal_Diterima, J.Nama_Jabatan;

EXEC sp_help 'Pegawai';

ALTER TABLE Pegawai
ALTER COLUMN Honor INT;

SELECT * FROM ViewPegawaiTanggalJabatanHonor;

