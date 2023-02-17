# membuat schemas 
create schema `data_retail`
# membuat tabel 

create table `data_retail`.`data_1`(
`no_product` int not null,
`product` varchar(45) null,
`qty` int (30) null,
`kategori` varchar(45)null,
primary key(`no_product`));
#membuat tabel Barang 
create table `data_retail`.`data_1`(
`no_product` int not null,
`product` varchar(45) null,
`qty` int (30) null,
`kategori` varchar(45)null,
primary key(`no_product`));
#memasukan data 
insert into `data_retail`.`data_1` values
('0110101', 'Apel', '150', 'Buah'),
('0110102', 'Pear' , '140', 'Buah'),
('0110103','Mangga', '200', 'Buah'),
('0110104','Pissang', '60','Buah'),
('0110105', 'Anggur', '30', 'Buah'),
('0110201', 'Tepung_Segitiga_1kg','1000','Tepung'),
('0110202','Tepung_Cakra_1kg', '1200', 'Tepung'),
('0110203','Tepung_Tapioka_1kg','1000','Tepung'),
('0110204','Tepung_Beras_1kg','500','Tepung'),
('0110301','Kecap_Manis', '1000','Bumbu'),
('0110302', 'Kecap_Asin','1000','Bumbu'),
('0110303', 'Kecap_Ikan','500','Bumbu'),
('0110304', 'Saos_Tiram','700','Bumbu'),
('0110305', 'Saos_Sambal','500','Bumbu'),
('0110306', 'Saos_Tomat','500','Bumbu'),
('0110307','Kemiri', '250','Bumbu'),
('0110308','Lada', '300' , 'Bumbu'),
('0110309', 'Garam','500','Bumbu'),
('0110310', 'Gula','600','Bumbu'),
('0110311','Bawang_Putih','700','Bumbu'),
('0110312','Bawang_Merah','800','Bumbu'),
('0110401','Beras_A','5000','Beras'),
('0110402','Beras_B','4000','Beras'),
('0110403','Beras_c','7000','Beras'),
('0110501','PastaGigi_A','500','PastaGigi'),
('0110502','PastaGigi_B','200','PastaGigi'),
('0110503','PastaGigi_C','800','PastaGigi'),
('0110504','PastaGigi_D','200','PastaGigi'),
('0110601','Sabun_A','900','Sabun'),
('0110602','Sabun_B','700','Sabun'),
('0110603','Sabun_C','900','Sabun'),
('0110604','Diterjen_A','1000','Sabun'),
('0110605','Diterjen_B','600','Sabun'),
('0110606','Diterjen_C','400','Sabun'),
('0110607','SabunCuciPiring_A','1000','Sabun'),
('0110608','SabunCuciPiring_B','1200','Sabun'),
('0110609','SabunColek','1300','Sabun'),
('0110701','Shampoo_A','900','Shampoo'),
('0110702','Shampoo_B','1800','Shampoo'),
('0110801','Mie_Goreng','10000','Mie'),
('0110802','Mie_Rebus_Ayam','9000','Mie'),
('0110803','Mie_Goreng_Pedas','12000','Mie'),
('0110804','Mie_Goreng_Kari','9000','Mie'),
('0110805','Mie_Rebus_Kari','8000','Mie'),
('0110806','Mie_Rebus_Pedas','13000','Mie'),
('0110807','Mie_Rebus_Korea','15000','Mie'),
('0110808','Mie_Goreng_Korea','18000','Mie')

create table `data_retail`.`data_2`(
`product` varchar(45) null,
`price` int (30) null);
#membuat tabel harga 
create table `data_retail`.`data_2`(
`product` varchar(45) null,
`price` int (30) null);
#memasukan data
insert into `data_retail`.`data_2` values
('Apel','45000'),
('Pear' ,'40000'),
('Mangga','30000'),
('Pissang', '20000'),
('Anggur', '90000'),
('Tepung_Segitiga_1kg','10000'),
('Tepung_Cakra_1kg', '13000'),
('Tepung_Tapioka_1kg','15000'),
('Tepung_Beras_1kg','12000'),
('Kecap_Manis','12500'),
('Kecap_Asin','10000'),
('Kecap_Ikan','11500'),
('Saos_Tiram','15000'),
('Saos_Sambal','15500'),
('Saos_Tomat','16500'),
('Kemiri', '5000'),
('Lada', '6000'),
('Garam','2500'),
('Gula','10000'),
('Bawang_Putih','27000'),
('Bawang_Merah','38000'),
('Beras_A','15000'),
('Beras_B','16000'),
('Beras_c','10000'),
('PastaGigi_A','15000'),
('PastaGigi_B','12000'),
('PastaGigi_C','20000'),
('PastaGigi_D','25000'),
('Sabun_A','3000'),
('Sabun_B','5000'),
('Sabun_C','2500'),
('Diterjen_A','15000'),
('Diterjen_B','26000'),
('Diterjen_C','34000'),
('SabunCuciPiring_A','7000'),
('SabunCuciPiring_B','5000'),
('SabunColek','6000'),
('Shampoo_A','20000'),
('Shampoo_B','19000'),
('Mie_Goreng','3000'),
('Mie_Rebus_Ayam','2500'),
('Mie_Goreng_Pedas','4000'),
('Mie_Goreng_Kari','2900'),
('Mie_Rebus_Kari','3000'),
('Mie_Rebus_Pedas','3500'),
('Mie_Rebus_Korea','11000'),
('Mie_Goreng_Korea','13000')
# menyatukan data_1 dan data_2 
create table `data_retail1`
 select data_1.no_product, data_1.product,data_1.qty,data_1.kategori,data_2.price
 from data_1 
 inner join data_2 on data_1.product = data_2.product; 
 create table `data_retail1`
 select data_1.no_product, data_1.product,data_1.qty,data_1.kategori,data_2.price
 from data_1 
 inner join data_2 on data_1.product = data_2.product; 
 
 alter table `data_retail`.data_retail1
 add column `modal` int null after `price`;
 # Memasukan data modal 
 update  data_retail1  set modal = '35000' where product = 'Apel';
 update  data_retail1  set modal = '30000' where product = 'Pear';
 update  data_retail1  set modal = '17000' where product = 'Mangga';
 update  data_retail1  set modal = '12000' where product = 'Pissang';
 update  data_retail1  set modal = '70000' where product = 'Anggur';
 update  data_retail1  set modal = '8000' where product = 'Tepung_Segitiga_1kg';
 update  data_retail1  set modal = '9000' where product = 'Tepung_Cakra_1kg';
 update  data_retail1  set modal = '11000' where product = 'Tepung_Tapioka_1kg';
 update  data_retail1  set modal = '8000' where product = 'Tepung_Beras_1kg';
 update  data_retail1  set modal = '9700' where product = 'Kecap_Manis';
 update  data_retail1  set modal = '8200' where product = 'Kecap_Asin';
 update  data_retail1  set modal = '9000' where product = 'Kecap_Ikan';
 update  data_retail1  set modal = '12000' where product = 'Saos_Tiram';
 update  data_retail1  set modal = '11000' where product = 'Saos_Sambal';
 update  data_retail1  set modal = '14000' where product = 'Saos_Tomat';
 update  data_retail1  set modal = '2500' where product = 'Kemiri';
 update  data_retail1  set modal = '3000' where product = 'Lada';
 update  data_retail1  set modal = '1500' where product = 'Garam';
 update  data_retail1  set modal = '7000' where product = 'Gula';
 update  data_retail1  set modal = '20000' where product = 'Bawang_Putih';
 update  data_retail1  set modal = '34000' where product = 'Bawang_Merah';
 update  data_retail1  set modal = '11000' where product = 'Beras_A';
 update  data_retail1  set modal = '12000' where product = 'Beras_B';
 update  data_retail1  set modal = '7000' where product = 'Beras_C';
 update  data_retail1  set modal = '11200' where product = 'PastaGigi_A';
 update  data_retail1  set modal = '8400' where product = 'PastaGigi_B';
 update  data_retail1  set modal = '17000' where product = 'PastaGigi_C';
 update  data_retail1  set modal = '19000' where product = 'PastaGigi_D';
 update  data_retail1  set modal = '2500' where product = 'Sabun_A';
 update  data_retail1  set modal = '3000' where product = 'Sabun_B';
 update  data_retail1  set modal = '1700' where product = 'Sabun_C';
 update  data_retail1  set modal = '13000' where product = 'Diterjen_A';
 update  data_retail1  set modal = '18000' where product = 'Diterjen_B';
 update  data_retail1  set modal = '27000' where product = 'Diterjen_C';
 update  data_retail1  set modal = '5000' where product = 'SabunCuciPiring_A';
 update  data_retail1  set modal = '3800' where product = 'SabunCuciPiring_B';
 update  data_retail1  set modal = '17800' where product = 'Shampoo_A';
 update  data_retail1  set modal = '15000' where product = 'Shampoo_B';
 update  data_retail1  set modal = '4500' where product = 'SabunColek';
 update  data_retail1  set modal = '2200' where product = 'Mie_Goreng';
 update  data_retail1  set modal = '1750' where product = 'Mie_Rebus_Ayam';
 update  data_retail1  set modal = '2200' where product = 'Mie_Goreng_Pedas';
 update  data_retail1  set modal = '1600' where product = 'Mie_Rebus_Kari';
 update  data_retail1  set modal = '2000' where product = 'Mie_Rebus_Pedas';
 update  data_retail1  set modal = '8000' where product = 'Mie_Rebus_Korea';
 update  data_retail1  set modal = '9800' where product = 'Mie_Goreng_Korea';
 update  data_retail1  set modal = '2400' where product = 'Mie_Goreng_Kari';
 
 # Mengubah nama Kolom 
 alter table data_retail1 change column `kategory` `category` text not null;
 
 #Mencari data dengan satu kondisi, product dengan harga di bawah 10.000
 
 select product, price from data_retail1 where price <'10000';
 
 #Mencari data dengan 2 kondisi, product dengan harga > 10000 kategori bumbu 
 
 select product, price from data_retail1 where price > '10000' and category = 'Bumbu';
 
 # Mencari pendapatandan hpp produk  (count reveneu)
 
 create table data_retail2
 select no_product, product, qty, category, price, modal, price*qty as reveneu,
 modal*qty as hpp
 from data_retail1
 order by reveneu desc;
 
 #Menghitung Profit
 
 create table data_retail3
 select no_product,product,qty,category,price,modal,reveneu,hpp, reveneu-hpp as profit 
 from data_retail2
 order by profit desc;
 
 # mencari 10 teratas profit 
 select product, profit from data_retail3 order by profit desc limit 10;
 
 # mengupdate harga barang diskon 
 update data_retail3 set price = price*(1-(20/100)) where category = 'Buah'; 
 
 select product,price from data_retail3 where category = 'Buah';
 
 # mengembalikan harga awal karena diskon 20 % maka 100- 20 = 80 
  update data_retail3 set price = (100/80)*price where category = 'Buah';
  