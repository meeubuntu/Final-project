SELECT "products"."name", "orderitems"."quantity" FROM "orderitems" JOIN "products" ON "orderitems"."productid" = "products"."productid"; 
