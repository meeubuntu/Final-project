DROP TABLE IF EXISTS "payments";
DROP TABLE IF EXISTS "orderitems";
DROP TABLE IF EXISTS "orders";
DROP TABLE IF EXISTS "products";
DROP TABLE IF EXISTS "customers";

CREATE TABLE "customers" (
    "customerid" INT PRIMARY KEY,
    "firstname" VARCHAR(50) NOT NULL,
    "lastname" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) UNIQUE NOT NULL,
    "phone" VARCHAR(20)
);

CREATE TABLE "products" (
    "productid" INT PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(255),
    "price" DECIMAL(10, 2) NOT NULL,
    "stockquantity" INT NOT NULL
);

CREATE TABLE "orders" (
    "orderid" INT PRIMARY KEY,
    "customerid" INT REFERENCES "customers"("customerid"),
    "orderdate" TIMESTAMP,
    "totalamount" DECIMAL(10, 2) NOT NULL
);

CREATE TABLE "orderitems" (
    "orderitemid" INT PRIMARY KEY,
    "orderid" INT REFERENCES "orders"("orderid"),
    "productid" INT REFERENCES "products"("productid"),
    "quantity" INT NOT NULL,
    "unitprice" DECIMAL(10, 2) NOT NULL
);

CREATE TABLE "payments" (
    "paymentid" INT PRIMARY KEY,
    "orderid" INT REFERENCES "orders"("orderid"),
    "paymentdate" TIMESTAMP,
    "amount" DECIMAL(10, 2) NOT NULL,
    "paymentmethod" VARCHAR(50) NOT NULL
);
