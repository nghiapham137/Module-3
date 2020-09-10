create database InternManagement;
use InternManagement;

create table Khoa (
	makhoa char(10) primary key,
    tenkhoa char(30) not null,
    dienthoai char(10)
);

create table Giangvien (
	magv int primary key,
    hotengv char(30) not null,
    luong decimal(5,2),
    makhoa char(10) not null,
    foreign key (makhoa) references Khoa(makhoa)
);

create table Sinhvien (
	masv int primary key,
    hotensv char(30) not null,
    makhoa char(10) not null,
    namsinh int,
    quequan char(30),
	foreign key (makhoa) references Khoa(makhoa)
);

create table Detai(
	madt char(10) primary key,
    tendt char(39) not null,
    kinhphi int,
    Noithuctap char(30)
);

create table Huongdan(
	masv int,
    madt char(10),
    magv int,
    ketqua decimal(5,2),
    foreign key (masv) references Sinhvien(masv),
    foreign key (madt) references Detai(madt),
    foreign key (magv) references Giangvien(magv)
);

INSERT INTO Khoa VALUES
('Geo','Dia ly va QLTN',3855413),
('Math','Toan',3855411),
('Bio','Cong nghe Sinh hoc',3855412);
INSERT INTO GiangVien VALUES
(11,'Thanh Binh',700,'Geo'),    
(12,'Thu Huong',500,'Math'),
(13,'Chu Vinh',650,'Geo'),
(14,'Le Thi Ly',500,'Bio'),
(15,'Tran Son',900,'Math');
INSERT INTO SinhVien VALUES
(1,'Le Van Son','Bio',1990,'Nghe An'),
(2,'Nguyen Thi Mai','Geo',1990,'Thanh Hoa'),
(3,'Bui Xuan Duc','Math',1992,'Ha Noi'),
(4,'Nguyen Van Tung','Bio',null,'Ha Tinh'),
(5,'Le Khanh Linh','Bio',1989,'Ha Nam'),
(6,'Tran Khac Trong','Geo',1991,'Thanh Hoa'),
(7,'Le Thi Van','Math',null,'null'),
(8,'Hoang Van Duc','Bio',1992,'Nghe An');
INSERT INTO Detai VALUES
('Dt01','GIS',100,'Nghe An'),
('Dt02','ARC GIS',500,'Nam Dinh'),
('Dt03','Spatial DB',100, 'Ha Tinh'),
('Dt04','MAP',300,'Quang Binh' );
INSERT INTO Huongdan VALUES
(1,'Dt01',13,8),
(2,'Dt03',14,0),
(3,'Dt03',12,10),
(5,'Dt04',14,7),
(6,'Dt01',13,Null),
(7,'Dt04',11,10),
(8,'Dt03',15,6);


-- cau1
select magv, hotengv, Khoa.tenkhoa
from Giangvien
inner join Khoa
on Giangvien.makhoa = Khoa.makhoa;

-- cau 2
select magv, hotengv, Khoa.tenkhoa
from Giangvien
inner join Khoa
on Giangvien.makhoa = Khoa.makhoa
where tenkhoa = 'Dia ly va QLTN';

-- cau 3
select Khoa.tenkhoa, count(masv) as soSV
from sinhvien
inner join khoa
on sinhvien.makhoa = khoa.makhoa
where tenkhoa = 'Cong nghe Sinh hoc';

-- cau 4
select masv, hotensv, namsinh, tenkhoa
from sinhvien
inner join khoa
on sinhvien.makhoa = khoa.makhoa
where tenkhoa = 'Toan';
   
-- cau 5
select Khoa.tenkhoa, count(magv) as soGV
from giangvien
inner join khoa
on giangvien.makhoa = khoa.makhoa
where tenkhoa = 'Cong nghe Sinh hoc';

-- cau 6
select *
from sinhvien
left join huongdan
on sinhvien.masv = huongdan.masv
where huongdan.masv is null; 

-- cau 7
select khoa.makhoa, tenkhoa, count(magv) as soGV
from khoa
inner join giangvien
on khoa.makhoa = giangvien.makhoa
group by tenkhoa;

-- cau 8
select dienthoai, tenkhoa
from khoa
inner join sinhvien
on khoa.makhoa = sinhvien.makhoa
where sinhvien.hotensv = 'Le Van Son';

-- cau 9
select detai.madt, detai.tendt
from detai
inner join huongdan 
on detai.madt = huongdan.madt  
inner join giangvien
on giangvien.magv = huongdan.magv
where hotengv = 'Tran Son';

-- cau 10
select detai.madt, detai.tendt
from detai
left join huongdan
on detai.madt = huongdan.madt
where huongdan.madt is null;

-- cau 11
select giangvien.magv, giangvien.hotengv, khoa.tenkhoa
from giangvien
inner join khoa
on giangvien.makhoa = khoa.makhoa
inner join huongdan
on giangvien.magv = huongdan.magv
group by giangvien.magv
having count(masv) > 1 ;

-- cau 12
select madt, tendt, max(kinhphi) as kinhphicaonhat
from detai;

-- cau 13
select detai.madt, detai.tendt
from detai
inner join huongdan
on detai.madt = huongdan.madt
group by detai.madt
having count(masv) > 2;

-- cau 14
select sinhvien.masv, sinhvien.hotensv, huongdan.ketqua
from sinhvien
inner join huongdan
on sinhvien.masv = huongdan.masv
inner join khoa
on sinhvien.makhoa = khoa.makhoa
where tenkhoa = 'Dia ly va QLTN';

-- cau 15
select khoa.tenkhoa, count(masv) as soSV
from khoa
inner join sinhvien
on khoa.makhoa = sinhvien.makhoa
group by khoa.tenkhoa;

-- cau 16
select sinhvien.masv, sinhvien.hotensv, sinhvien.quequan, detai.Noithuctap 
from sinhvien
inner join huongdan
on sinhvien.masv = huongdan.masv
inner join detai
on huongdan.madt = detai.madt
where sinhvien.quequan = detai.Noithuctap;

-- cau 17
select sinhvien.masv, sinhvien.hotensv, huongdan.ketqua
from sinhvien
left join huongdan
on sinhvien.masv = huongdan.masv
where huongdan.ketqua is null;

-- cau 18
select sinhvien.masv, sinhvien.hotensv, huongdan.ketqua
from sinhvien
inner join huongdan
on sinhvien.masv = huongdan.masv
where huongdan.ketqua = 0;