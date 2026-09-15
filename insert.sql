INSERT INTO "Customers" ("CustomerID", "FirstName", "LastName", "Email", "Phone") VALUES (1, 'erwan', 'dilem', 'erwan.dilem@email.com', '0102030405');
INSERT INTO "Customers" ("CustomerID", "FirstName", "LastName", "Email", "Phone") VALUES (2, 'Client', 'Deux', 'client2@email.com', '0600000000');

INSERT INTO "Products" ("ProductID", "Name", "Description", "Price", "StockQuantity") VALUES (1, 'Laptop', 'computer 15 pouces', 1299.99, 15);
INSERT INTO "Products" ("ProductID", "Name", "Description", "Price", "StockQuantity") VALUES (2, 'mous', 'mouse bluetooth', 29.50, 50);
INSERT INTO "Products" ("ProductID", "Name", "Description", "Price", "StockQuantity") VALUES (3, 'Keyboard', 'clavier standard', 89.99, 30);

INSERT INTO "Orders" ("OrderID", "CustomerID", "OrderDate", "TotalAmount") VALUES (1, 1, '2026-09-14 10:00:00', 1329.49);
INSERT INTO "Orders" ("OrderID", "CustomerID", "OrderDate", "TotalAmount") VALUES (2, 2, '2026-09-14 11:30:00', 89.99);

INSERT INTO "OrderItems" ("OrderItemID", "OrderID", "ProductID", "Quantity", "UnitPrice") VALUES (1, 1, 1, 1, 1299.99);
INSERT INTO "OrderItems" ("OrderItemID", "OrderID", "ProductID", "Quantity", "UnitPrice") VALUES (2, 1, 2, 1, 29.50);
INSERT INTO "OrderItems" ("OrderItemID", "OrderID", "ProductID", "Quantity", "UnitPrice") VALUES (3, 2, 3, 1, 89.99);

INSERT INTO "Payments" ("PaymentID", "OrderID", "PaymentDate", "Amount", "PaymentMethod") VALUES (1, 1, '2026-09-14 10:05:00', 1329.49, 'Carte Bancaire');
INSERT INTO "Payments" ("PaymentID", "OrderID", "PaymentDate", "Amount", "PaymentMethod") VALUES (2, 2, '2026-09-14 11:35:00', 89.99, 'PayPal');
