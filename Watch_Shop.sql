# MySQL Database Sample - Online Watch Shop Database - Vinicius Verza

# Creating Database
CREATE DATABASE WatchShop;

# Selecting Database
USE WatchShop;

# Creating Customer Entity
CREATE TABLE Customer
(
CustomerID varchar (10),
FirstName varchar (50),
LastName varchar (50),
Address varchar (255),
City varchar (60),
County varchar (60),
Country varchar (60),
Phone varchar (20),
Email varchar (50),
PRIMARY KEY (CustomerID)
);

# Creating Supplier Entity
CREATE TABLE Supplier
(
SupplierID varchar (10),
SupName varchar (50),
SupEmail varchar (50),
SupPhone varchar (20),
PRIMARY KEY (SupplierID)
);

# Creating Stock Entity - FOREIGN KEYS - SupplierID
CREATE TABLE Stock
(
StockID varchar (10),
ItemBrand varchar (50),
ItemModel varchar (50),
QtyStock int,
ItemCost decimal (6,2),
SupplierID varchar (10),
PRIMARY KEY (StockID)
);

# Creating Orders Entity - FOREIGN KEYS - CustomerID
CREATE TABLE Basket
(
OrderID varchar (10),
OrderDate date,
PaymentType varchar (50),
CustomerID varchar (10),
PRIMARY KEY (OrderID)
);

# Creating OrderItems Entity - FOREIGN KEYS: OrderID and Stock ID
CREATE TABLE OrderItems
(
ItemID varchar (10),
QtySold int,
ItemPrice decimal (6,2),
VAT decimal (2,2),
OrderID varchar (10),
StockID varchar (10),
PRIMARY KEY (ItemID)
);

# Creating Returns Entity - FOREIGN KEYS: ItemID and CustomerID
CREATE TABLE Returns
(
ReturnID varchar (10),
ReturnDate date,
AmountRet decimal (6,2),
ItemID varchar (10),
CustomerID varchar (10),
PRIMARY KEY (ReturnID)
);

# Inserting values into tables for exemplification

# Inserting values to Customer entity

INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C1", "Whoopi", "Goldberg", "4th Avenue", "Brooklyn", "New York", "USA", "+1 9 91234 5678", "whoooopi@gmail.com");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C2", "Robert", "Plant", "87 Singers Avenue", "Los Angeles", "California", "USA", "+1 4 1234 9876", "blackdog@hotmail.com");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C3", "David", "Gilmour", "11 High Hopes Street", "Austin", "Texas", "USA", "+1 9 4432 0690", "heyou@gmail.com");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C4", "Freddie", "Mercury", "666 Avenida de Los Muertos", "Ciudad de Mexico", "Ciudad de Mexico", "Mexico", "+52 91221 1111", "mamaaa@hotmail.com.mx");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C5", "James", "Bond", "Brosnan Square", "Navan", "Co Meath", "Ireland", "+353 089 222 3333", "bondjamesbond@yahoo.ie");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C6", "George", "Washington", "The White House", "Washington DC", "Washington", "USA", "+1 2 3456 1234", "georgie@whitehouse.com");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C7", "Wilson", "Pilsen", "1 Beer Avenue", "Wicklow", "Leinster", "Ireland", "+353 81 211 2211", "drinkbeer@gmail.com");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C8", "Nilson", "Ale", "2 Drinkers Boulevard", "Dublin", "Leinster", "Ireland", "+353 89 222 9845", "aleisbetter@gmail.com");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C9", "Milton", "Weissbier", "3 Holygrail Avenue", "Dublin", "Leinster", "Ireland", "+353 81 221 0002", "weissthebest@gmail.com");
INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, County, Country, Phone, Email)
VALUES ("C10", "Arnold", "Schwarzenegger", "2019 Future Street", "Austin", "Texas", "USA", "+1 1 6969 6969", "astalavista@baby.com");


# Inserting values to Supplier entity

INSERT INTO Supplier (SupplierID, SupName, SupEmail, SupPhone)
VALUES ("SU1", "DimSum China Watches LTD", "original@wepromess.ch", "+86 221 22121 975");
INSERT INTO Supplier (SupplierID, SupName, SupEmail, SupPhone)
VALUES ("SU2", "NCI Watches Corporation", "watches_support@ncirl.ie", "+353 1 212 2221");
INSERT INTO Supplier (SupplierID, SupName, SupEmail, SupPhone)
VALUES ("SU3", "David Hamilton Watch Factory", "david@dh.co.uk", "+44 22 9876 1234");
INSERT INTO Supplier (SupplierID, SupName, SupEmail, SupPhone)
VALUES ("SU4", "What Time is It? Corporation", "what@time.com", "+1 1 1111 1111");
INSERT INTO Supplier (SupplierID, SupName, SupEmail, SupPhone)
VALUES ("SU5", "Its Pork O'Clock! Handmade Watches", "pork@clock.ie", "+353 1 987 2121");


# Inserting values to Stock entity

INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST1", "Casio", "F-91W", 20, 7.96, "SU1");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST2", "Seiko", "Big Orange SRPC55", 20, 78.45, "SU3");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST3", "Casio", "G-Shock GA2100", 20, 72.21, "SU1");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST4", "Omega", "Speedmaster", 20, 1650.21, "SU2");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST5", "Vostok", "Amphibia Scuba Dude 710059", 20, 31.01, "SU4");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST6", "Casio", "Edifice EF-527D-1AVEF", 20, 98.97, "SU1");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST7", "Casio", "Edifice EF-566DB", 20, 82.59, "SU1");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST8", "Casio", "Pro-Trek PRW-3100YB", 20, 201.11, "SU1");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST9", "Seiko", "SSB313P1", 20, 150.26, "SU3");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST10", "Seiko", "Prospex SNE499P1", 20, 398.02, "SU3");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST11", "Citizen", "Skyhawk A-T Red Arrows", 20, 610.83, "SU5");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST12", "Citizen", "Eco-Drive AT4000-02E", 20, 298.21, "SU5");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST13", "Citizen", "Diver BJ8050-08E", 20, 170.11, "SU5");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST14", "Vostok", "Komandirskie 2416B", 20, 87.94, "SU4");
INSERT INTO Stock (StockID, ItemBrand, ItemModel, QtyStock, ItemCost, SupplierID)
VALUES ("ST15", "Vostok", "Amphibia 120812", 20, 48.67, "SU4");


# Inserting values to Basket entity

INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O1", "19/01/06", "Credit Card", "C1");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O2", "19/01/19", "PayPal", "C8");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O3", "19/01/22", "Credit Card", "C4");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O4", "19/01/27", "PayPal", "C7");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O5", "19/02/03", "Debit Card", "C3");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O6", "19/02/11", "PayPal", "C6");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O7", "19/02/11", "Debit Card", "C1");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O8", "19/02/16", "PayPal", "C8");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O9", "19/02/22", "PayPal", "C4");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O10", "19/02/22", "Credit Card", "C2");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O11", "19/03/10", "Credit Card", "C2");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O12", "19/03/11", "Credit Card", "C6");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O13", "19/03/12", "Debit Card", "C1");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O14", "19/03/26", "Credit Card", "C5");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O15", "19/04/07", "Debit Card", "C4");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O16", "19/04/11", "Credit Card", "C4");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O17", "19/04/19", "PayPal", "C7");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O18", "19/04/23", "Debit Card", "C3");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O19", "19/05/12", "PayPal", "C9");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O20", "19/05/17", "Debit Card", "C3");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O21", "19/05/23", "Debit Card", "C8");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O22", "19/06/01", "Credit Card", "C4");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O23", "19/06/07", "Debit Card", "C9");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O24", "19/06/26", "PayPal", "C2");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O25", "19/06/28", "PayPal", "C10");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O26", "19/07/08", "PayPal", "C7");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O27", "19/07/16", "Credit Card", "C6");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O28", "19/07/16", "Credit Card", "C3");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O29", "19/07/18", "Credit Card", "C6");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O30", "19/07/26", "Credit Card", "C7");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O31", "19/08/02", "PayPal", "C6");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O32", "19/08/10", "Debit Card", "C2");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O33", "19/08/11", "Credit Card", "C4");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O34", "19/08/13", "Debit Card", "C2");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O35", "19/08/19", "Credit Card", "C8");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O36", "19/08/30", "Debit Card", "C1");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O37", "19/09/22", "Credit Card", "C7");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O38", "19/09/24", "Debit Card", "C7");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O39", "19/09/27", "PayPal", "C3");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O40", "19/10/01", "Credit Card", "C1");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O41", "19/10/11", "PayPal", "C8");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O42", "19/10/18", "Debit Card", "C2");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O43", "19/10/19", "Credit Card", "C6");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O44", "19/10/22", "PayPal", "C5");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O45", "19/10/24", "PayPal", "C3");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O46", "19/11/03", "PayPal", "C5");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O47", "19/11/09", "Debit Card", "C3");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O48", "19/12/24", "Credit Card", "C4");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O49", "19/12/25", "Debit Card", "C2");
INSERT INTO Basket (OrderID, OrderDate, PaymentType, CustomerID)
VALUES ("O50", "19/12/29", "Credit Card", "C2");


# Inserting values to OrderItems entity

INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I1", 1, 9.55, 0.23, "O1", "ST1");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I2", 1, 1980.25, 0.23, "O2", "ST4");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I3", 1, 94.14, 0.23, "O3", "ST2");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I4", 1, 37.21, 0.23, "O3", "ST5");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I5", 1, 241.33, 0.23, "O4", "ST8");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I6", 1, 99.10, 0.23, "O5", "ST7");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I7", 2, 118.76, 0.23, "O6", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I8", 1, 9.55, 0.23, "O7", "ST1");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I9", 3, 9.55, 0.23, "O8", "ST1");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I10", 1, 9.55, 0.23, "O9", "ST1");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I11", 1, 86.65, 0.23, "O10", "ST3");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I12", 1, 1980.25, 0.23, "O10", "ST4");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I13", 1, 86.65, 0.23, "O10", "ST3");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I14", 1, 241.33, 0.23, "O11", "ST8");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I15", 1, 9.55, 0.23, "O12", "ST1");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I16", 3, 94.14, 0.23, "O13", "ST2");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I17", 1, 118.76, 0.23, "O14", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I18", 1, 241.33, 0.23, "O15", "ST8");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I19", 1, 118.76, 0.23, "O15", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I20", 1, 1980.25, 0.23, "O16", "ST4");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I21", 1, 94.14, 0.23, "O17", "ST2");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I22", 1, 86.65, 0.23, "O18", "ST3");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I23", 1, 94.14, 0.23, "O19", "ST2");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I24", 2, 86.65, 0.23, "O20", "ST3");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I25", 1, 118.76, 0.23, "O21", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I26", 1, 1980.25, 0.23, "O22", "ST4");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I27", 1, 94.14, 0.23, "O23", "ST2");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I28", 1, 118.76, 0.23, "O24", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I29", 1, 99.10, 0.23, "O25", "ST7");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I30", 1, 118.76, 0.23, "O25", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I31", 1, 86.65, 0.23, "O25", "ST3");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I32", 1, 1980.25, 0.23, "O26", "ST4");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I33", 1, 37.21, 0.23, "O27", "ST5");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I34", 1, 58.40, 0.23, "O28", "ST15");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I35", 1, 1980.25, 0.23, "O29", "ST4");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I36", 1, 118.76, 0.23, "O30", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I37", 1, 732.99, 0.23, "O31", "ST11");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I38", 1, 86.65, 0.23, "O32", "ST3");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I39", 2, 204.13, 0.23, "O33", "ST13");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I40", 1, 241.33, 0.23, "O34", "ST8");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I41", 1, 732.99, 0.23, "O35", "ST11");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I42", 1, 58.40, 0.23, "O36", "ST15");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I43", 1, 241.33, 0.23, "O37", "ST8");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I44", 1, 357.85, 0.23, "O38", "ST12");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I45", 1, 732.99, 0.23, "O38", "ST11");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I46", 1, 118.76, 0.23, "O39", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I47", 1, 477.62, 0.23, "O40", "ST10");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I48", 1, 9.55, 0.23, "O41", "ST1");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I49", 2, 180.31, 0.23, "O42", "ST9");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I50", 1, 105.52, 0.23, "O43", "ST14");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I51", 1, 180.31, 0.23, "O44", "ST9");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I52", 1, 357.85, 0.23, "O45", "ST12");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I53", 1, 118.76, 0.23, "O46", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I54", 1, 357.85, 0.23, "O46", "ST12");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I55", 1, 204.13, 0.23, "O47", "ST13");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I56", 2, 118.76, 0.23, "O48", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I57", 1, 118.76, 0.23, "O49", "ST6");
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I58", 1, 357.85, 0.23, "O50", "ST12");


# Inserting values to Returns entity

INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R1", "18/12/31", 241.33, "I5", "C7");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R2", "19/02/28", 241.33, "I14", "C2");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R3", "19/06/05", 94.14, "I27", "C9");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R4", "19/07/03", 1980.25, "I35", "C6");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R5", "19/07/20", 733, "I37", "C6");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R6", "19/08/30", 241.33, "I43", "C7");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R7", "19/08/29", 118.76, "I46", "C3");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R8", "19/09/07", 180.31, "I49", "C2");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R9", "19/09/29", 357.85, "I52", "C3");
INSERT INTO Returns (ReturnID, ReturnDate, AmountRet, ItemID, CustomerID)
VALUES ("R10", "19/10/29", 118.76, "I57", "C2");


############################################# VIEWS, TRIGGERS AND STORED PROCEDURES #############################################

# Selecting database previously created:
USE WatchShop;

# 1 - [View] Showing all transactions for a given week:

CREATE VIEW Transactions_August_Week_2 AS
SELECT Basket.OrderID, 
DATE_FORMAT(Basket.OrderDate, '%M %d - %Y') AS Date,
CONCAT((Stock.ItemBrand), ' ', (Stock.ItemModel)) AS Item,
OrderItems.ItemPrice,
Basket.PaymentType,
CONCAT((Customer.FirstName), ' ', (Customer.LastName)) AS Customer
FROM Basket
JOIN OrderItems ON OrderItems.OrderID = Basket.OrderID
JOIN Stock ON Stock.StockID = OrderItems.StockID 
JOIN Customer ON Customer.CustomerID = Basket.CustomerID
WHERE OrderDate BETWEEN '2019-08-10' AND '2019-08-17';


# 2 - [Trigger] Create a Trigger that updates stock levels once a sale takes place:

DELIMITER $$
CREATE TRIGGER StockLevelUpdate 
    AFTER INSERT ON OrderItems
    FOR EACH ROW BEGIN
    UPDATE Stock
	SET QtyStock = QtyStock - NEW.QtySold
    WHERE StockID = NEW.StockID;
END$$
DELIMITER ;

# Transaction Test for Trigger Created on Question 2
INSERT INTO OrderItems (ItemID, QtySold, ItemPrice, VAT, OrderID, StockID)
VALUES ("I222", 2, 9.55, 0.23, "O1", "ST1");


# 3 - [View] Create a View of all stock, grouped by supplier:

CREATE VIEW All_Stock AS
SELECT Supplier.SupName, Stock.StockID, Stock.ItemBrand, Stock.ItemModel, Stock.SupplierID, Stock.QtyStock
FROM Stock
JOIN Supplier
ON Stock.SupplierID=Supplier.SupplierID
ORDER BY Supplier.SupName;


# 4 - [Stored Procedure] Detail and total all sales for the year, group these by each month, a Group By with RollUp:

DELIMITER //
CREATE PROCEDURE DetailedSales ()
BEGIN
SELECT
MONTHNAME(Basket.OrderDate) AS Month,
COUNT(Basket.OrderID) AS Items_Sold,
CONCAT('€ ', FORMAT(SUM(OrderItems.ItemPrice), 2)) AS Gross_Income_No_VAT,
CONCAT('€ ', FORMAT(SUM(OrderItems.ItemPrice * 1.23), 2)) AS Gross_Income_VAT,
CONCAT('€ ', FORMAT(SUM(OrderItems.ItemPrice * 0.20), 2)) AS Net_Income
FROM Basket
INNER JOIN OrderItems ON Basket.OrderID = OrderItems.OrderID
GROUP BY MONTH(Basket.OrderDate) WITH ROLLUP;
END//

# Calling the Procedure
CALL DetailedSales


# 5 - [View] Display the growth in sales (as a percentage) for your business, from the 1st month of opening until the end of the year:

CREATE VIEW Sales_Growth AS
SELECT
MONTHNAME(Basket.OrderDate) AS Months,
COUNT(Basket.OrderID) AS Total_Orders,
CONCAT('€ ', FORMAT(SUM(OrderItems.ItemPrice), 2)) AS Income,
CONCAT('€ ', LAG (SUM(OrderItems.ItemPrice)) OVER (ORDER BY Basket.OrderDate ASC)) AS Previous_Month,
CONCAT(ROUND((SUM(OrderItems.ItemPrice * OrderItems.QtySold) - LAG((SUM(OrderItems.ItemPrice * OrderItems.QtySold)),1) OVER ()) / (LAG((SUM(OrderItems.ItemPrice * OrderItems.QtySold)),1) OVER()) * 100, 1), ' %') AS Growth
FROM Basket
INNER JOIN OrderItems ON Basket.OrderID = OrderItems.OrderID
GROUP BY MONTH(Basket.OrderDate);


# 6 - [Stored Procedure] Create a stored procedure that will display all orders by customer and their county:

DELIMITER //
CREATE PROCEDURE OrdersByCustomers ()
BEGIN
SELECT CONCAT(Customer.FirstName, ' ', Customer.LastName) AS CustomerName,
Basket.OrderID, Customer.Country, Basket.OrderDate
FROM Basket
JOIN Customer ON Customer.CustomerID = Basket.CustomerID
ORDER BY Customer.FirstName;
END//

# Calling the Procedure
CALL OrdersByCustomers


# 7 - [Stored Procedure] Create a stored procedure that will display all returns, grouped by month:

DELIMITER //
CREATE PROCEDURE TotalReturns ()
BEGIN
SELECT
MONTHNAME(Returns.ReturnDate) AS Month,
COUNT(Returns.ReturnID) AS Total_Returns,
CONCAT('€ ', FORMAT(SUM(Returns.AmountRet), 2)) AS Amount_Returned
FROM Returns
GROUP BY MONTH(Returns.ReturnDate) WITH ROLLUP;
END//

# Calling the Procedure
CALL TotalReturns


# 8 - [Stored Procedure] Display a specific customers details and all of their relevant orders to date by passing a parameter (eg: CustomerID):

DELIMITER //
CREATE PROCEDURE CustomerInfo (IN ID VARCHAR(5))
BEGIN
SELECT
Customer.CustomerID,
CONCAT(Customer.FirstName, ' ', Customer.LastName) AS Name,
CONCAT(Customer.Address, ', ', Customer.City, ', ', Customer.County, ', ', Customer.Country) AS Address,
Customer.Phone AS Phone,
Customer.Email AS Email,
Basket.OrderID,
Basket.OrderDate AS Date
FROM Customer
LEFT JOIN Basket ON Customer.CustomerID = Basket.CustomerID
WHERE Customer.CustomerID = ID
ORDER BY Basket.OrderDate;
END//

# Calling the Procedure
CALL CustomerInfo ('C1')


# 9 - [Trigger] Create a Trigger that will populate a ‘history table’ once a customers contact details have been updated:

CREATE TABLE HistoryCustomer
(
CustomerID varchar (10),
FirstName varchar (50),
LastName varchar (50),
Address varchar (255),
City varchar (60),
County varchar (60),
Country varchar (60),
Phone varchar (20),
Email varchar (50),
PRIMARY KEY (CustomerID)
);

DELIMITER //
CREATE TRIGGER History_trigger
AFTER UPDATE ON Customer
FOR EACH ROW
BEGIN
INSERT INTO HistoryCustomer(CustomerID,FirstName,LastName,Address,City,County,Country,Phone,Email)
VALUES (OLD.CustomerID,OLD.FirstName,OLD.LastName,OLD.Address,OLD.City,OLD.County,OLD.Country,OLD.Phone,OLD.Email);
END//
DELIMITER ;

# Update Test for Trigger Created on Question 9
UPDATE Customer SET FirstName='Carlos' WHERE CustomerID='C2';


# 10 - [View] Create a View that will display a breakdown of (a) sales (b) profit and (c) returns for each month of the year:

CREATE VIEW Store_Breakdown AS
SELECT
MONTHNAME(Basket.OrderDate) AS Months,
#COUNT(Basket.OrderID) AS Total_Orders,
CONCAT('€ ', FORMAT(SUM(OrderItems.ItemPrice), 2)) AS Gross_Income_No_VAT,
CONCAT('€ ', FORMAT(SUM(OrderItems.ItemPrice * 1.23), 2)) AS Gross_Income_VAT,
CONCAT('€ ', FORMAT(SUM(OrderItems.ItemPrice * 0.20), 2)) AS Net_Income,
COUNT(Returns.ReturnID) AS Total_Returns,
CONCAT('€ ', FORMAT(SUM(Returns.AmountRet), 2)) AS Amount_Returned
FROM OrderItems
JOIN Basket ON Basket.OrderID = OrderItems.OrderID
LEFT JOIN Returns ON OrderItems.ItemID = Returns.ItemID
GROUP BY MONTH(Basket.OrderDate) WITH ROLLUP;

# 11 - [Database] Add all of the above scripts into one unique sql file that will run all of the scripts together and output the data into a DataMart:

# Creating Database:
Create Database DataMart;

# Selecting the database:
USE DataMart;

# Creating All_Stock Table:
Create Table DataMart.All_Stock_Data SELECT * FROM WatchShop.All_Stock; 

# Testing All_Stock Table:
SELECT * FROM datamart.all_stock_data;


# Creating Sales_Growth Table:
Create Table DataMart.Sales_Growth_Data SELECT * FROM WatchShop.Sales_Growth; 

# Testing Sales_Growth Table:
SELECT * FROM datamart.sales_growth_data;


# Creating Store_Breakdown Table:
Create Table DataMart.Store_Breakdown_Data SELECT * FROM WatchShop.Store_Breakdown; 

# Testing Store_Breakdown Table:
SELECT * FROM datamart.store_breakdown_data;


# Creating Store_Breakdown Table:
Create Table DataMart.Transactions_August_Week_2_Data SELECT * FROM WatchShop.Transactions_August_Week_2; 

# Testing Store_Breakdown Table:
SELECT * FROM datamart.transactions_august_week_2_data;
