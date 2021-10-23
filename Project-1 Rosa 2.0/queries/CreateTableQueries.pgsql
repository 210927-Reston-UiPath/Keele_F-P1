create table clients(
    clientID serial PRIMARY KEY,
    clientFName varchar(50),
    clientLName varchar(50),
    clientEmail varchar(50)
    
);
create table orderInfo(
    orderID serial PRIMARY KEY,
    clientID int REFERENCES clients(clientID),
    orderDate date,
    price FLOAT  
);
create table shoppingList(
    productID int PRIMARY KEY,
    clientID int REFERENCES clients(clientID),
    product varchar(50),
    quantity INT
);

CREATE table expenseSheet(
    lineItemID serial PRIMARY KEY,
    productID int REFERENCES shoppingList(productID),
    orderID int REFERENCES orderinfo(orderID),
    subtotal float,
    price float
)

drop table clients;
drop table orderinfo;
drop table shoppinglist;
drop table expensesheet


select * from clients;
select * from shoppingList;
select * from orderInfo

select clientFName, clientlname, clientEmail from clients

insert into clients(clientfname, clientlname, clientemail)
values ('jimmy', 'john', 'jimmy.john@jimmyjohn.com');
insert into clients(clientfname, clientlname, clientemail) 
values ('ron', 'swanson', 'ron.swanson@ranswanson.com');
insert into clients(clientfname, clientlname, clientemail)
values ('greg','gregory', 'greg.gregory@greggregory.com')

insert into shoppingList(productid, clientid, product, quantity) 
values ('5','1', 'Oranges', '8') 
insert into shoppingList(productid, clientid, product, quantity) 
values ('4', '1', 'Apples', '2') 
insert into shoppingList(productid, clientid, product, quantity) 
values ('2', '1', 'Bacon', '4') 
insert into shoppingList(productid, clientid, product, quantity) 
values ('3', '1', 'Beef', '6') 
insert into shoppingList(productid, clientid, product, quantity) 
values ('1', '1', 'Chicken', '7') 