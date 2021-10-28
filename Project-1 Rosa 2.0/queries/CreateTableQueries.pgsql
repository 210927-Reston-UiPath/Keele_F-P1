create table clients(
    clientID serial PRIMARY KEY,
    clientFName varchar(50),
    clientLName varchar(50),
    clientEmail varchar(50),
    vendor varchar(25)
    
);
create table orderInfo(
    orderID serial PRIMARY KEY,
    clientID int REFERENCES clients(clientID),
    total float
  
);
create table shoppingList(
    productID int PRIMARY KEY,
    clientID int REFERENCES clients(clientID),
    product varchar(50),
    productType varchar(50),
    quantity INT
);

CREATE table expenseSheet(
    clientid int REFERENCES clients(clientID),
    item varchar(25),
    price float,
    quantity int, 
    subtotal float
)

drop table clients;
drop table orderinfo;
drop table shoppinglist;
drop table expensesheet


select * from clients;
select * from shoppingList where clientid = '1';
select * from orderInfo where clientid = '1';
select * from expensesheet where clientid = '1';

select * from shoppingList where clientid = '2';
select * from orderInfo where clientid = '2';
select * from expensesheet where clientid = '2';



select clientFName, clientlname, clientEmail from clients

























insert into clients(clientfname, clientlname, clientemail, vendor)
values ('jimmy', 'john', 'testeremailforp1fk@gmail.com','DummyStore');
insert into clients(clientfname, clientlname, clientemail, vendor) 
values ('ron', 'swanson', 'testeremailforp1fk@gmail.com', 'PEGA');
insert into clients(clientfname, clientlname, clientemail, vendor)
values ('greg','gregory', 'testeremailforp1fk@gmail.com', 'DummyStore');
insert into clients(clientfname, clientlname, clientemail, vendor) 
values ('rick', 'singe', 'testeremailforp1fk@gmail.com', 'PEGA');
insert into clients(clientfname, clientlname, clientemail, vendor)
values ('george','grope', 'testeremailforp1fk@gmail.com', 'DummyStore')

insert into shoppingList(productid, clientid, product, productType, quantity) 
values ('11', '5', 'Chicken','FOOD', '7');
insert into shoppingList(productid, clientid, product, productType, quantity) 
values ('12', '5', 'Bacon','FOOD', '4');
insert into shoppingList(productid, clientid, product, productType, quantity) 
values ('13', '5', 'Beef','FOOD', '6');
insert into shoppingList(productid, clientid, product, productType, quantity) 
values ('14', '5', 'Apples','FOOD', '2'); 
insert into shoppingList(productid, clientid, product,productType, quantity) 
values ('15', '5', 'Oranges','FOOD', '8'); 




