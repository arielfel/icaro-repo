CREATE TABLE IF NOT EXISTS tienda_de_cafe2 (clave_transaccion int, nombre_cliente varchar, nombre_cajero varchar, monto int, tipo_de_cafe text, endulzantes_usados text);
INSERT INTO tienda_de_cafe (clave_transaccion, nombre_cliente, nombre_cajero, monto, tipo_de_cafe, endulzantes_usados) VALUES (1, 'Armando', 'Julia', 355, 'Latte', 'Edulcorante');
INSERT INTO tienda_de_cafe (clave_transaccion, nombre_cliente, nombre_cajero, monto, tipo_de_cafe, endulzantes_usados) VALUES (2, 'Armando', 'Julia', 355, 'Frapucchino', 'N/A');
INSERT INTO tienda_de_cafe (clave_transaccion, nombre_cliente, nombre_cajero, monto, tipo_de_cafe, endulzantes_usados) VALUES (3, 'Sebastian', 'Julia', 300,'Cafe del día', 'Edulcorante');
INSERT INTO tienda_de_cafe (clave_transaccion, nombre_cliente, nombre_cajero, monto, tipo_de_cafe, endulzantes_usados) VALUES (4, 'Javier', 'Pedro', 600, 'Capucchino', Azucar Rubia');
INSERT INTO tienda_de_cafe (clave_transaccion, nombre_cliente, nombre_cajero, monto, tipo_de_cafe, endulzantes_usados) VALUES (5, 'Javier', 'Pedro', 600, 'Té','Azucar Negra');


CREATE TABLE IF NOT EXISTS transaction (clave_transaccion int, cliente_id int, cajero_id int, monto int, cafe_id int, endulzante_id text);
INSERT INTO transaction (clave_transaccion, cliente:id, cajero_id,monto, cafe_id, endulzante_id) VALUES (1, 1, 1, 355, 1, 1);
INSERT INTO transaction (clave_transaccion, cliente:id, cajero_id,monto, cafe_id, endulzante_id) VALUES (2, 1, 1, 355, 2, 'N/A');
INSERT INTO transaction (clave_transaccion, cliente:id, cajero_id,monto, cafe_id, endulzante_id) VALUES (3, 2, 1, 300,3, 1);
INSERT INTO transaction (clave_transaccion, cliente:id, cajero_id,monto, cafe_id, endulzante_id) VALUES (4, 3', 2, 600, 4, 2);
INSERT INTO transaction (clave_transaccion, cliente:id, cajero_id,monto, cafe_id, endulzante_id) VALUES (5, 3, 2, 600, 5,3);

CREATE TABLE IF NOT EXISTS cliente (cliente_id int, nombre_cliente varchar);
INSERT INTO cliente (cliente_id, nombre_cliente) VALUES (1,'Armando');
INSERT INTO cliente (cliente_id, nombre_cliente) VALUES (2,'Sebastian');
INSERT INTO cliente (cliente_id, nombre_cliente) VALUES (3,'Javier');

CREATE TABLE IF NOT EXISTS cajero (cajero_id int, nombre_cajero varchar);
INSERT INTO cajero (cajero_id, nombre_cajero) VALUES (1,'Julia');
INSERT INTO cajero (cajero_id, nombre_cajero) VALUES (2,'Pedro');

CREATE TABLE IF NOT EXISTS tipo_cafe (cafe_id int, nombre_cafe varchar);
INSERT INTO tipo_cafe (cafe_id, nombre_cafe) VALUES (1,'Latte');
INSERT INTO tipo_cafe (cafe_id, nombre_cafe) VALUES (2,'Frapuccino');
INSERT INTO tipo_cafe (cafe_id, nombre_cafe) VALUES (3,'Café del día');
INSERT INTO tipo_cafe (cafe_id, nombre_cafe) VALUES (4,'Capuccino');
INSERT INTO tipo_cafe (cafe_id, nombre_cafe) VALUES (5,'Té');

CREATE TABLE IF NOT EXISTS endulzante (endulzante_id int, nombre_endulzante varchar);
INSERT INTO endulzante (endulzante_id, nombre_endulzante) VALUES (1,'Edulcorante');
INSERT INTO endulzante (endulzante_id, nombre_endulzante) VALUES (2,'Azucar rubia');
INSERT INTO endulzante (endulzante_id, nombre_endulzante) VALUES (3,'Azucar negra');

SELECT nombre_cajero, SUM(monto) as "total"
FROM transaction
JOIN cajero ON transaction.cajero_id = cajero.cajero_id
GROUP BY nombre_cajero
