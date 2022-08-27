


GO

create database Restaurant

use Restaurant

GO
create table Customer(
Customer_id varchar(30),
Customer_name varchar(30),
Email varchar(30),
Payment_id varchar(30),
Food_id int,
primary key (Customer_id),
);


GO
create table Food_Item(
Food_id int,
Item_name varchar(30),
Quantity varchar(30),
Unit_price int,
Item_catagory varchar(30),
primary key (Food_id),
);


GO
create table Order_Item(
Order_id varchar(20),
Food_id int,
Quantity varchar(30),
Unit_price int,
primary key (Order_id),
foreign key (Food_id) references Food_Item (Food_id)
);


GO
create table OOrder(
Order_id varchar(20),
Order_date date,
Customer_id varchar(30),
Quantity varchar(30),
pickup_date date,
primary key (Order_id),
foreign key (Customer_id) references Customer(Customer_id), 
);


GO
create table Menu(
Menu_id int,
Price int,
Start_date date,
End_date date,
Food_id int,
primary key (Menu_id),
foreign key (Food_id) references Food_Item(Food_id), 
);


GO
create table Administration( 
Admin_id varchar(20),
Name varchar(30),
Username varchar(30),
Password varchar(30),
Status varchar(30),
Menu_id int,
primary key (Admin_id),
foreign key (Menu_id) references Menu(Menu_id),
);



GO
create table Chef(
Chef_id varchar(30),
Chef_name varchar(30),
Order_id varchar(20),
Username varchar(30),
primary key (Chef_id),
foreign key (Order_id) references OOrder(Order_id),
);


GO
create table Payment(
Payment_id varchar(30),
Customer_id varchar(30),
Order_id varchar(20),
Payment_date date,
Amount int,
Payment_type varchar(30),
primary key (Payment_id),
foreign key (Order_id) references OOrder(Order_id),
);

GO
insert into Customer
values
      ('101','Mack','mack01@gmail.com','P101','01'),
	  ('102','Devid','devid02@gmail.com','P102','02'),
	  ('103','Donald','donald03@yahoo.com','P103','03'),
	  ('104','Max','maxx04@gmail.com','P104','04'),
	  ('105','Sam','sam05@gmail.com','P105','05'),
	  ('106','Muller','mulr06@hotmail.com','P106','06'),
	  ('107','Rocky','roxx07@gmail.com','P107','07'),
	  ('108','Maxie','maxie08@gmail.com','P108','08'),
	  ('109','Leo','leo09@gmail.com','P109','09'),
	  ('110','Samuel','sam110@hotmail.com','P110','10'),
	  ('201','Danish','dan201@gmail.com','P201','11'),
	  ('202','Merry','mry202@gmail.com','P202','12'),
	  ('203','Jas','jas203@yahoo.com','P203','13'),
	  ('204','Maggie','magg204@gmail.com','P204','14'),
	  ('205','Hannah','han205@hotmail.com','P205','15'),
	  ('206','Devid','devd206@gmail.com','P206','16'),
	  ('207','Danial','danial207@gmail.com','P207','17'),
	  ('208','Sunny','sun208@gmail.com','P208','18'),
	  ('209','Weber','web209@gmail.com','P209','19'),
	  ('210','Tina','tintin210@gmail.com','P210','20')
	
	select * from Customer



GO
insert into  Food_Item
values
      ('01','fried rice','good','90','lunch'),
	  ('02','kichuri','good','90','lunch'),
	  ('03','rice with curry','good','60','lunch'),
	  ('04','beef tehari','good','120','lunch'),
	  ('05','chicken biriyani','good','120','lunch'),
	  ('06','egg kichuri','good','50','lunch'),
	  ('07','burger','good','30','snacks'),
	  ('08','Vegetable roll','good','15','snacks'),
	  ('09','Singara','good','5','snacks'),
	  ('10','Somucha','good','5','snacks'),
	  ('11','noodles','good','20','snacks'),
	  ('12','chicken fry','good','30','snacks'),
	  ('13','french fry','good','20','snacks'),
	  ('14','chicken roll','good','20','snacks'),
	  ('15','pasta','good','70','snacks'),
	  ('16','nachos','good','55','snacks'),
	  ('17','Muffin','good','35','dessert'),
	  ('18','pudding','good','15','dessert'),
	  ('19','donuts','good','30','dessert'),
	  ('20','chocolate cake','good','25','dessert'),
      ('21','water','good','15','drinks'),
	  ('22','orange juice','good','20','drinks'),
	  ('23','lemonade','good','20','drinks'),
	  ('24','apple juice','good','35','drinks'),
	  ('25','milk shake','good','120','drinks'),
	  ('26','oreo shake','good','150','drinks'),
	  ('27','coca cola','good','20','drinks'),
	  ('28','fanta','good','15','drinks'),
	  ('29','coffee','good','20','drinks'),
	  ('30','tea','good','5','drinks')

	  select * from  Food_Item






GO
insert into  Order_Item
values
     
	  ('20','01','good','90'),
	  ('21','02','good','90'),
	  ('22','03','good','60'),
	  ('23','04','Very good','120'),
	  ('24','05','Very good','120'),
	  ('25','06','good','50'),
	  ('26','07','good','30'),
	  ('27','08','good','15'),
	  ('28','09','good','5'),
	  ('29','10','good','5'),
	  ('30','11','good','20'),
	  ('31','12','good','30'),
	  ('32','13','good','20'),
	  ('33','14','good','20'),
	  ('34','15','good','70'),
	  ('35','16','good','55'),
	  ('36','17','good','35'),
	  ('37','18','good','15'),
	  ('38','19','good','30'),
	  ('39','20','good','25'),
      ('40','21','good','15'),
	  ('41','22','good','20'),
	  ('42','23','good','20'),
	  ('43','24','good','35'),
	  ('44','25','Very good','120'),
	  ('45','26','Very good','150'),
	  ('46','27','good','20'),
	  ('47','28','good','15'),
	  ('48','29','good','20'),
	  ('49','30','good','5')
	    
     select * from  [dbo].[Order_Item]





GO
insert into OOrder
values
     
	  ('01','02-02-2020','101','good','03-02-2020'),
	  ('02','02-02-2020','102','good','03-02-2020'),
	  ('03','02-02-2020','103','good','03-02-2020'),
	  ('04','03-02-2020','103','verygood','04-02-2020'),
	  ('05','03-02-2020','104','verygood','04-02-2020'),
	  ('06','03-02-2020','105','verygood','04-02-2020'),
	  ('07','02-02-2020','106','good','03-02-2020'),
	  ('08','02-02-2020','107','good','03-02-2020'),
	  ('09','02-02-2020','108','good','03-02-2020'),
	  ('10','04-02-2020','109','good','05-02-2020'),
	  ('11','04-02-2020','110','good','05-02-2020'),
	  ('12','04-02-2020','201','good','05-02-2020'),
	  ('13','04-02-2020','202','good','05-02-2020'),
	  ('14','02-02-2020','203','verygood','03-02-2020'),
	  ('15','02-02-2020','204','verygood','03-02-2020'),
	  ('16','02-02-2020','205','good','03-02-2020'),
	  ('17','02-02-2020','206','good','03-02-2020'),
	  ('18','02-02-2020','208','good','03-02-2020'),
	  ('19','02-02-2020','209','verygood','03-02-2020'),
	  ('20','02-02-2020','210','verygood','03-02-2020')
	   
	   select *from OOrder




GO
insert into Menu
values
      ('01','90','02-02-2020','04-02-2020','01'),
	  ('02','90','02-02-2020','04-02-2020','02'),
	  ('03','60','03-02-2020','05-02-2020','03'),
	  ('04','120','02-02-2020','04-02-2020','04'),
	  ('05','120','02-02-2020','04-02-2020','05'),
	  ('06','50','03-02-2020','06-02-2020','06'),
	  ('07','30','02-02-2020','04-02-2020','07'),
	  ('08','15','02-02-2020','04-02-2020','08'),
	  ('09','5','02-02-2020','04-02-2020','09'),
	  ('10','5','02-02-2020','04-02-2020','10'),
	  ('11','20','03-02-2020','04-02-2020','11'),
	  ('12','30','02-02-2020','04-02-2020','12'),
	  ('13','20','04-02-2020','05-02-2020','13'),
	  ('14','20','04-02-2020','05-02-2020','14'),
	  ('15','70','04-02-2020','05-02-2020','15'),
	  ('16','55','02-02-2020','04-02-2020','16'),
	  ('17','35','02-02-2020','04-02-2020','17'),
	  ('18','15','06-02-2020','08-02-2020','18'),
	  ('19','30','07-02-2020','08-02-2020','19'),
	  ('20','25','02-02-2020','04-02-2020','20'),
      ('21','15','09-02-2020','09-02-2020','21'),
	  ('22','20','02-02-2020','04-02-2020','22'),
	  ('23','20','03-02-2020','04-02-2020','23'),
	  ('24','35','03-02-2020','04-02-2020','24'),
	  ('25','120','05-02-2020','06-02-2020','25'),
	  ('26','150','05-02-2020','06-02-2020','26'),
	  ('27','20','02-02-2020','04-02-2020','27'),
	  ('28','15','04-02-2020','04-02-2020','28'),
	  ('29','20','07-02-2020','07-02-2020','29'),
	  ('30','5','08-02-2020','09-02-2020','30')
          
	 select *from [dbo].[Menu] 

 

 
 GO         
insert into Administration
values
       ('A01','sararah','sara','1867','excellent','01'),
	  ('A02','jui','usj','1851','excellent','02'),
	  ('A03','fahim','anayet','1847','verygood','03'),
	  ('A04','mahjabin','royal','1857','verygood','04'),
	  ('A05','salma','boss','1853','good','05'),
	  ('A06','faiaz','gross','1787','verygood','06'),
	  ('A07','nasir','ahmed','7268','good','07'),
	  ('A08','zarin','zara','2442','good','08'),
	  ('A09','orpy','orpy5','2231','good','09'),
	  ('A10','bithi','bithi6','6789','good','10')

	select *from Administration



	
 GO 
 insert into Chef
 values
      ('C01','salam','01','salam34'),
	  ('C02','kuddus','02','afgan5'),
	  ('C03','habib','03','habib67'),
	  ('C04','rahman','04','saheb'),
	  ('C05','sourav','05','sou45') 
	    
	          
	  
	  select *from Chef




GO
insert into Payment
values
      ('F01','101','01','04-02-2020','200','cash'),
	  ('F02','102','02','04-02-2020','600','cash'),
	  ('F03','103','03','04-02-2020','400','cash'),
	  ('F04','104','04','05-02-2020','300','cash'),
	  ('F05','105','05','05-02-2020','200','bkash'),
      ('F06','106','06','05-02-2020','200','bkash'),
	  ('F07','107','07','04-02-2020','900','card'),
	  ('F08','108','08','04-02-2020','400','cash'),
	  ('F09','109','09','04-02-2020','700','card'),
	  ('F10','110','10','06-02-2020','200','cash'),
      ('F11','201','11','06-02-2020','500','cash'),
	  ('F12','202','12','06-02-2020','600','cash'),
	  ('F13','203','13','06-02-2020','400','cash'),
	  ('F14','204','14','04-02-2020','300','cash'),
	  ('F15','205','15','04-02-2020','800','card')
	 
	  select *from [dbo].[Payment]
            

        GO
      


		 select Item_name
		 from Food_Item
		 where Food_id between 15 and 25






		 select Item_name
		 from Food_Item
		 where Unit_price < 100





		 select Customer_name,Customer_id
		 from Customer
		 order by Customer_name







		 select Food_id
		 from Menu
		 where start_Date = '02-02-2020' and End_Date = '04-02-2020'





		 select sum(Amount) as Total_Amount
		 from Payment







		 select Chef_name
		 from Chef
		 where Order_id between 02 and 04





		 select Order_id
		 from OOrder 
		 where Order_date  between '02-02-2020' and  '05-02-2020' and
		           Order_id in (select order_id
				                 from OOrder
						 where Pickup_date = '05-02-2020');







		 select Customer_id,Payment_id,Payment_type
		 from Payment
		 where Payment_type = 'card'






		 select all name 
		 from Administration
		
		 

          

