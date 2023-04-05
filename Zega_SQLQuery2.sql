use finansial

create table bayar(kd_bayar char(5) primary key, tgl_bayar date, nomor varchar(6), j_angsuran int, bunga int)

select * from pelanggan

alter table bayar add foreign key (nomor) references pelanggan(nokontrak)

insert into bayar values('B0001', '09/13/2022', '0003', 250000, 15000)
insert into bayar values('B0002', '09/14/2022', '0002', 210000, 12000)
insert into bayar values('B0003', '09/16/2022', '0001', 215000, 10000)
insert into bayar values('B0004', '09/18/2022', '0004', 125000, 13500)

update bayar set tgl_bayar = '07/10/2022' where kd_bayar = 'B0004'

select * from bayar

create view daftar1 as select bayar.kd_bayar, pelanggan.nama, bayar.tgl_bayar, bayar.j_angsuran, 
pelanggan.hutang-bayar.j_angsuran as Sisahutang from bayar, pelanggan where bayar.nomor=pelanggan.nokontrak

alter view daftar1 as select bayar.kd_bayar, pelanggan.nama, bayar.tgl_bayar, bayar.j_angsuran, 
pelanggan.hutang-bayar.j_angsuran as Sisahutang from bayar, pelanggan where bayar.nomor=pelanggan.nokontrak

create view view2 as select nama,hutang, case Jkelamin 
when 'L' then 'Laki-Laki' 
when 'P' then 'Perempuan'
end as Jenis from pelanggan

select * from daftar

select * from view2

select * from daftar1

