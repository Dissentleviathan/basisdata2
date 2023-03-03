use dbmahasiswa

select * from tbmhs

select * from tbmk

insert into tbmhs(npm,nama,tgl_lahir,kd_jenis) values('2125240392', 'Panji', '09/02/1999', 'L')
insert into tbmhs(npm,nama,tgl_lahir,kd_jenis) values('2024241192', 'Lusia', '02/11/2000', 'P')

insert into tbmk values('if002', 'Basis Data II',4)
insert into tbmk values('if011', 'Kalkulus II',2)
insert into tbmk values('if010', 'Algoritma',2)
insert into tbmk values('if008', 'Matematika Diskrit',4)
insert into tbmk values('if002', 'Bahasa Inggris',4)

insert into tbtrans values('A0122', '2024241192', 'IF010', 'B')
insert into tbtrans values('A0123', '2125240392', 'IF010', 'A')
insert into tbtrans values('A0124', '2024241192', 'IF008', 'B')
insert into tbtrans values('A0125', '2126240002', 'IF008', 'B')
insert into tbtrans values('A0126', '2026250022', 'IF010', 'B')

select * from tbtrans

select npm,nama,tgl_lahir, case when kd_jenis='P' then 'Perempuan' else 'Laki-Laki' end as jenis from tbmhs where not kd_jenis='L'

select * from tbmhs where not kd_jenis='L'

select npm,nama,tgl_lahir, case when kd_jenis='P' then 'Perempuan' else 'Laki-Laki' end as jenis from tbmhs where not kd_jenis='L' and nama like 'J%'