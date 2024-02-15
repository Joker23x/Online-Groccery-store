select * from onlinegrocceryshopping.clothing;
SELECT * FROM onlinegrocceryshopping.shoes;
SELECT * FROM onlinegrocceryshopping.electronic;
SELECT * FROM onlinegrocceryshopping.personalcare;
SELECT * FROM onlinegrocceryshopping.foodandbeverage;
SELECT * FROM onlinegrocceryshopping.order;
SELECT * FROM onlinegrocceryshopping.customer;

select count(FoodAndBeverageBrand),OrderID From foodandbeverage group by OrderID;

select electronic.ElectronicBrand, shoes.ShoeBrand, shoes.OrderID, electronic.OrderID from electronic inner join shoes on electronic.OrderID = shoes.OrderID;

select ClothingBrand from clothing where OrderID in
(select OrderID from customer where LastName="vang");

select all PersonalCareBrand from personalcare where OrderID = "101010";

create view HighShoeID AS select ShoeBrand from shoes where ShoeID > "200";
select*from HighShoeID;

create trigger NewCustomerOrder after insert on customer for each row insert into clothing(ClothingBrand,ClothingID,OrderID) values('Tommy',132,101010);
insert into customer (LastName, FirstName, OrderID, CustomerID) values('Swan', 'Lacey', '654','101112');
delete from customer where LastName ="Swan";

delete from clothing where ClothingBrand = "Tommy";
insert into clothing(ClothingBrand,ClothingID,OrderID) values('Tommy',132,101112);
select * from onlinegrocceryshopping.clothing;

