use kursus

update ajar set angkatan=left(kode, 3)
update ajar set angkatan=substring(kode,1,3)

update ajar set paket=iif(substring(kode,5,1)='A', 'Ms.Word', iif(substring(kode,5,1)='B', 'Ms. Excel', 'Ms. Powerpoint'))

select * from ajar

update ajar set lama=iif(substring(kode,5,1)='A' or substring(kode,5,1)='B',2,1)

alter table ajar add tgl_mulai int, hari_belajar varchar(20), jam_belajar varchar(25), tgl_selesai date, ttl_biaya int

update ajar set tgl_mulai=iif(substring(kode,5,1)='A', '03/20/2023', iif(substring(kode,5,1)='B', '03/21/2023', '03/27/2023'))
update ajar set hari_belajar=iif(substring(kode,9,1)='A', 'Senis-Kamis', iif(substring(kode,9,1)='B', 'Selasa-Jumat', 'Rabu-Sabtu'))
update ajar set jam_belajar=iif(substring(kode,10,1)='1', '08.00-10.00', iif(substring(kode,10,1)='2', '10.00-12.00', '13.00-15.00'))

update ajar set tgl_selesai = dateadd(month, lama, tgl_mulai)

update ajar set ttl_biaya = lama*biaya

alter table ajar add biaya int

update ajar set biaya = iif(paket='Ms. Word' or paket='Ms. Excel', 350000, 300000)

update ajar set ruang=iif(substring(kode,7,1)='A', '1', iif(substring(kode,7,1)='B', '2', '3'))