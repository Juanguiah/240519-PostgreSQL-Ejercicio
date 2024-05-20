# Ejercicio

1) Creación de tablas:

Crea una tabla llamada "productos" que contenga información sobre los productos que vende la tienda, como el ID del producto, nombre, categoría y precio.
Crea una tabla llamada "clientes" que almacene información sobre los clientes, como ID del cliente, nombre, correo electrónico y dirección.

2) Creación de relaciones:

Establece una relación entre las tablas "productos" y "clientes". Cada cliente puede realizar múltiples pedidos, por lo que necesitas una tabla adicional para almacenar los detalles de los pedidos.
Crea una tabla llamada "pedidos" que tenga un ID de pedido, ID del cliente, fecha del pedido y estado del pedido.

3) Consultas con JOIN:

Realiza una consulta que muestre el nombre del cliente y el nombre del producto para cada pedido realizado.
Utiliza una combinación INNER JOIN entre las tablas "clientes", "pedidos" y "productos" para obtener la información necesaria.

4) Consultas con cláusulas:

Realiza una consulta que muestre todos los productos con un precio superior a $100.
Utiliza la cláusula WHERE para filtrar los productos con un precio mayor a $100.

5) Comandos ALTER:

Agrega una nueva columna llamada "cantidad" a la tabla "pedidos" para almacenar la cantidad de cada producto en un pedido.
Utiliza el comando ALTER TABLE para agregar la nueva columna a la tabla existente.
