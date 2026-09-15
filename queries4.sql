SELECT "customers"."firstname", "orders"."totalamount"
FROM "customers"
JOIN "orders" ON "customers"."customerid" = "orders"."customerid";