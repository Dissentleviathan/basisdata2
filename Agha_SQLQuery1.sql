create database dbPeserta

use dbPeserta

create table tbPsrt_pelatihan (No int, Nama_Peserta varchar(20), Kode_Paket varchar(20), Tgl_Daftar date, Tgl_Masuk date)

select * from tbPsrt_pelatihan

insert into tbPsrt_pelatihan values(1, 'Yuliani', '243/A/B/A2', '09/12/2022', '10/15/2022')
insert into tbPsrt_pelatihan values(2, 'Mathilda', '245/B/A/B1', '09/14/2022', '10/18/2022')
insert into tbPsrt_pelatihan values(3, 'Johan', '244/C/B/C2', '09/14/2022', '10/17/2022')
insert into tbPsrt_pelatihan values(4, 'Ramses', '245/B/A/B1', '09/16/2022', '10/18/2022')
insert into tbPsrt_pelatihan values(5, 'Brontolaras', '243/A/B/A2', '09/18/2022', '10/15/2022')

alter table tbPsrt_pelatihan add Angkatan int,Paket varchar(20), Biaya int, Tgl_Akhir date 

alter table tbPsrt_pelatihan add Lama_Kursus int

update tbPsrt_pelatihan set Angkatan = substring(Kode_Paket, 1, 3)

update tbPsrt_pelatihan set Paket = case
when substring(Kode_Paket, 5, 1) = 'A' then 'Microsoft Word'
when substring(Kode_Paket, 5, 1) = 'B' then 'Microsoft Excel' 
else 'Microsoft PowerPoint'
end

update tbPsrt_pelatihan set Paket = case
when substring(Kode_Paket, 5, 1) = 'A' then 250000
when substring(Kode_Paket, 5, 1) = 'B' then 300000 
else 250000
end

update tbPsrt_pelatihan set Biaya = case
when substring(Kode_Paket, 5, 1) = 'A' then 250000*2
when substring(Kode_Paket, 5, 1) = 'B' then 300000*2
else 250000*1
end

update tbPsrt_pelatihan set Lama_Kursus = case
when substring(Kode_Paket, 5, 1) = 'A' then 2
when substring(Kode_Paket, 5, 1) = 'B' then 2 
else 1
end

update tbPsrt_pelatihan set Tgl_Akhir = dateadd(month,Lama_Kursus,Tgl_Masuk)