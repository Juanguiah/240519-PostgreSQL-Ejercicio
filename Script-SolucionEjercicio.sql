create table Productos(
	id serial primary key,
	nombre varchar(50),
	categoria varchar(50),
	precio int
)

create table Clientes(
	id serial primary key,
	cliente varchar(50),
	correo varchar(50),
	direccion int
)

create table Pedidos(
	id serial primary key,
	fecha date,
	estado varchar(20),
	id_cliente int,
	id_producto int,
	foreign key (id_cliente) references Clientes(id),
	foreign key (id_producto) references Productos(id)
)

insert into Productos (nombre, categoria, precio) values ('Camisa polo', 'Hombre', 30000);
insert into Productos (nombre, categoria, precio) values ('Falda', 'Mujer', 18000);
insert into Productos (nombre, categoria, precio) values ('Brasier', 'Mujer', 20000);
insert into Productos (nombre, categoria, precio) values ('Jean', 'Hombre', 80000);
insert into Productos (nombre, categoria, precio) values ('Chaqueta', 'Hombre', 100000);
insert into Productos (nombre, categoria, precio) values ('Pantaloneta', 'Niño', 30000);
insert into Productos (nombre, categoria, precio) values ('Tenis rosados', 'Mujer', 90000);
insert into Productos (nombre, categoria, precio) values ('Tenis negros', 'Hombre', 95000);

select * from Productos

insert into Clientes (cliente, correo, direccion) values ('Andrea', 'andrea@hotmail.com', 'Calle 20 # 80');
insert into Clientes (cliente, correo, direccion) values ('Milu', 'milu@hotmail.com', 'Calle 43 # 30');
insert into Clientes (cliente, correo, direccion) values ('Juangui', 'jg@hotmail.com', 'Calle 20 # 80');
insert into Clientes (cliente, correo, direccion) values ('Nena', 'nena@hotmail.com', 'Calle 43 # 30');
insert into Clientes (cliente, correo, direccion) values ('Memo', 'memo@hotmail.com', 'Calle 43 # 30');
insert into Clientes (cliente, correo, direccion) values ('Carlos', 'carlos@hotmail.com', 'Calle 30 # 70');
insert into Clientes (cliente, correo, direccion) values ('Piedad', 'piedad@hotmail.com', 'Calle 30 # 70');

alter table Clientes alter column direccion set data type varchar(30);

insert into Clientes (cliente, correo, direccion) values ('Andrea', 'andrea@hotmail.com', 'Calle 20 # 80');
insert into Clientes (cliente, correo, direccion) values ('Milu', 'milu@hotmail.com', 'Calle 43 # 30');
insert into Clientes (cliente, correo, direccion) values ('Juangui', 'jg@hotmail.com', 'Calle 20 # 80');
insert into Clientes (cliente, correo, direccion) values ('Nena', 'nena@hotmail.com', 'Calle 43 # 30');
insert into Clientes (cliente, correo, direccion) values ('Memo', 'memo@hotmail.com', 'Calle 43 # 30');
insert into Clientes (cliente, correo, direccion) values ('Carlos', 'carlos@hotmail.com', 'Calle 30 # 70');
insert into Clientes (cliente, correo, direccion) values ('Piedad', 'piedad@hotmail.com', 'Calle 30 # 70');

select * from Clientes

-- Andrea: Falda y Brasier:
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Pedido',1,2);
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Comprado',1,3);
-- Milu: Tenis rosados y pantaloneta
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Comprado',2,7);
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Comprado',2,6);
-- Juangui: Camisa Polo, Jean y Tenis negros
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Comprado',3,1);
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Comprado',3,4);
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Pedido',3,8);
-- Nena: Falda
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Pedido',4,2);
-- Memo: Chaqueta
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Comprado',5,5);
-- Carlos: Chaqueta y Camisa polo
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Pedido',6,5);
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Comprado',6,1);
-- Piedad: Tenis rosados y Falda
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Comprado',7,7);
insert into Pedidos (fecha, estado, id_cliente, id_producto) values ('19/07/2024','Pedido',7,2);

select Clientes.cliente , Productos.nombre from Pedidos 
inner join Clientes on Pedidos.id_cliente = Clientes.id 
inner join Productos on Pedidos.id_producto = Productos.id

-- Consulta que muestre todos los productos con un precio superior a $100:

select * from Productos where precio >100;
select * from Productos where precio >20000;
select * from Productos where precio >80000;
select * from Productos where precio >94000;

-- Agrega una nueva columna llamada "cantidad" a la tabla "pedidos"

alter table Pedidos add Cantidad int;
select * from Pedidos;