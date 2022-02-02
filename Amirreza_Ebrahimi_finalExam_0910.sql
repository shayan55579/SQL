create database exam1
create table sandoghKar(
	name nvarchar(40),
	namePedar nvarchar(40),
	shomreMoshtari int,
	tarikh nvarchar(40),
	shomareHamrah varchar(30),
	shomareTamas varchar(30),
	salTavalod varchar(30),
	tedadSeporde int,
	majMandeSeporde int,
	minMojdiSeporde int,
	primary key(shomreMoshtari)
	);


insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('samin','Dilta',98373,'1396/12/21','09170000','54220000','1371',0,35009860,7001972);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('Mahdi','Disiti',570212,'1391/11/21','09170060','54220010','1343',0,32380740,3238074);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('Zahra','Ali',468066,'1391/03/30','0','54220020','1344',0,22651260,2265126);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('Ali','Hetma',25077,'1393/07/28','0','5437','79',0,21596790,4319358);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('AA','Kulim',11243,'1390/10/29','091887824','54220040','1339',0,19428940,9714470);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('Kazvin','Ali',537812,'1394/01/19','09174972','5444','44',0,15945310,3189062);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('Kadin','Kaman',106053,'1391/11/16','0917180773','54220011','1332',0,15561580,1556158);
insert into sandoghKar(shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values(308700,'1392/11/02',0,'54','16',0,14168350,1416835);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('Ali','Ahmad',16194,'1389/02/13','021','54220013','1340',0,13096574,6548287);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('Ali','Almas',11259,'1390/10/29','21171183','5422001','64',0,13063208,6531604);
insert into sandoghKar(shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values(109602,'1391/11/04','04371150','54220015','1358',0,999000,333000);
insert into sandoghKar(name,namePedar,shomreMoshtari,tarikh,shomareHamrah,shomareTamas,salTavalod,tedadSeporde,majMandeSeporde,minMojdiSeporde)
values('Alice','Zofran',113137,'1391/11/28','043731608','5422001','1321',0,11319106,5659553);

create table meliatMoshtarian(
	rotbe int not null,
	codeShobe int not null,
	shomareMoshtari int not null,
	meliat nvarchar(40) not null,
	typeMoshatri nvarchar(40) not null,
	jensiyat nvarchar(40) not null,
	tahol nvarchar(40) not null,
	primary key(shomareMoshtari),
	foreign key(shomareMoshtari) references sandoghKar(shomreMoshtari)
	);
	
insert into meliatMoshtarian(rotbe,codeShobe,shomareMoshtari,meliat,typeMoshatri,jensiyat,tahol)
values(1,661,570212,N'ايراني',N'حقيقي',N'مرد',N'نامشخص'),
(2,601,109602,N'ايراني',N'حقيقي',N'مرد',N'مجرد'),
(3,661,25077,N'ايراني',N'حقيقي',N'مرد',N'متاهل'),
(4,601,468066,N'ايراني',N'حقوقي',N'زن',N'نامشخص'),
(5,601,11243,N'ايراني',N'حقيقي',N'مرد',N'متاهل'),
(6,606,537812,N'ايراني',N'حقيقي',N'مرد',N'متاهل'),
(7,601,106053,N'ايراني',N'حقيقي',N'مرد',N'متاهل'),
(8,606,308700,N'ايراني',N'حقيقي',N'نامشخص',N'متاهل'),
(9,601,16194,N'ايراني',N'حقيقي',N'نامشخص',N'متاهل'),
(10,661,11259,N'ايراني',N'حقيقي',N'مرد',N'مجرد'),
(11,661,98373,N'ايراني',N'حقيقي',N'زن',N'متاهل'),
(12,601,113137,N'ايراني',N'حقيقي',N'مرد',N'نامشخص');
update sandoghKar
set name = 'shayan',namePedar = 'ali'
where name is null and tarikh = '1392/11/02'--choon do ta null darim update kardam

update sandoghKar
set name = 'Sina',namePedar = 'mojtaba'
where name is null --choon do ta null darim update kardam

--الف)
select minMojdiSeporde from sandoghKar
---ب)
-----ب) همراه
update sandoghKar 
set shomareHamrah = '09390093612'
where shomareHamrah   not like '^%9[0-9]{9}$%'--regx

--- ب)  تلفن
update sandoghKar
set shomareTamas = '54000'
where shomareTamas not like '54__%'

--ب) تاريخ تولد
update sandoghKar
set salTavalod = '1350'
where salTavalod not like'13%__'

--min top 3   پ)
select * from (select top 3 * from sandoghKar order by minMojdiSeporde asc) as firstThree

select top (3) minMojdiSeporde from sandoghKar
order by minMojdiSeporde asc
--and update
update sandoghKar
set minMojdiSeporde = minMojdiSeporde-100
where minMojdiSeporde = (select top (3) minMojdiSeporde from sandoghKar
order by minMojdiSeporde asc) 
--ت)
update sandoghKar
set majMandeSeporde = majMandeSeporde +1000
where name = 'samin'
--ث)
select * from sandoghKar where majMandeSeporde < 1000000--g1 
select * from sandoghKar where majMandeSeporde between 11999999 and 19999999--g2 
select * from sandoghKar where majMandeSeporde > 20000000--g3 
--join g1 and g2
SELECT tarikh, majMandeSeporde,minMojdiSeporde
FROM sandoghKar
INNER JOIN meliatMoshtarian ON sandoghKar.shomreMoshtari=meliatMoshtarian.shomareMoshtari
--ج)
update meliatMoshtarian
set jensiyat = N'مرد'
where jensiyat = N'نامشخص'
--چ)
select * from  sandoghKar where  tedadSeporde in(select jensiyat from meliatMoshtarian where jensiyat = N'زن' and tahol = N'مجرد')
--ح)
select sum(minMojdiSeporde)from sandoghKar where shomreMoshtari in (select * from meliatMoshtarian where jensiyat =N'مرد' and tahol = N'مجرد')

UPDATE sandoghKar
SET    tedadSeporde = abs(checksum(NewId()) % 10000)--update tedad parvande
WHERE  tedadSeporde = 0

create table alice(
	name nvarchar(40),
	Product nvarchar(40),
	Qtr1 nvarchar(40),
	Qtr2 nvarchar(40),
	Qtr3 nvarchar(40),
	Qtr4 nvarchar(40)
	);

insert into alice(name,Product,Qtr1,Qtr2,Qtr3,Qtr4)
values('Alice','ANTON','-','702.00','-','-'),
('Alice','BERGS','312.00','-','-','-'),
('Alice','ANTON','-','-','-','1170.00'),
('Aliece','BERGS','1170.00','-','-','-'),
('Aliece','ANTON','1123.20','-','-','2670.15'),
('Aliece','GODOS','-','280.80','-','-'),
('Aliece','HUNGC','62.40','-','-','-'),
('Aliece','ANTON','-','1560.00','936.00','-'),
('Aliece','GODOS','-','-','-','741.00'),
('Aliece','BERGS','-','-','3900.00','789.75');
select * from alice

--change first row for better in ANTON
update alice
set Qtr2 = '-',Qtr4 = '702.00'
where Product = 'ANTON'and Qtr1 = '-' and Qtr3 = '-'
--change second row for better in BERGES
update alice
set Qtr1 = '-',Qtr2 = '312.00'
where Product = 'BERGES' and Qtr3 = '-' and Qtr4 = '-'

update alice
set Qtr1 = '280.80',Qtr2 = '-'
where Product = 'GODOS' and Qtr3 = '-' and Qtr4 = '-'

