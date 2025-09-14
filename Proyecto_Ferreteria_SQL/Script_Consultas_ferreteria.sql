use ferreteria;

-- CONSULTA # 1.
select idfab, idproducto, descripcion from productos where exists(select * from pedidos where fab = idfab and producto = idproducto and importe <= 25000);

-- CONSULTA # 2.
select nombre, repclie from clientes where repclie = (select numemp from empleados where nombre = 'ALVARO JAUMES' );

-- CONSULTA # 3.
select  numemp, nombre, oficina from empleados where oficina = any (select oficina from oficinas where ventas > objetivo);

-- CONSULTA # 4.
SELECT numemp, nombre, oficina, jefe FROM empleados WHERE oficina NOT IN (SELECT oficina FROM oficinas WHERE dir = 108);

-- CONSULTA # 5.
SELECT o.* FROM oficinas O
JOIN (
SELECT oficina, MIN(ventas) AS min_ventas
FROM empleados
GROUP BY oficina
) e ON o.oficina = e.oficina
 WHERE o.objetivo * 0.5 <= e.min_ventas;

-- CONSULTA # 6.
SELECT * FROM oficinas o 
WHERE EXISTS (
SELECT 1 FROM empleados e
 WHERE e.oficina = o.oficina 
	AND e.ventas > o.objetivo * 0.55);

-- CONSULTA # 7.    
SELECT numclie, nombre FROM clientes 
WHERE repclie IN (
	SELECT numemp FROM empleados WHERE nombre ='Ana Bustamante')
    AND numclie NOT IN (
		SELECT clie FROM pedidos WHERE importe > 3000 AND clie IS NOT NULL);

-- CONSULTA # 8.        
SELECT e.numemp, e.nombre, SUM(p.importe) AS total_ventas
FROM empleados e
	JOIN pedidos p ON e.numemp = p.rep
	GROUP BY e.numemp, e.nombre
	ORDER BY total_ventas DESC;

-- CONSULTA # 9.
SELECT c.numclie, c.nombre, c.limitecredito, SUM(p.importe) AS total_pedidos
FROM clientes c
	JOIN pedidos p ON c.numclie = p.clie
	GROUP BY c.numclie, c.nombre, c.limitecredito
	HAVING SUM(p.importe) > c.limitecredito;

-- CONSULTA # 10.
SELECT oficina, ciudad, ventas, objetivo FROM oficinas WHERE ventas < objetivo;

-- CONSULTA # 11.
SELECT pr.descripcion, SUM(p.cant) AS cantidad_total
FROM pedidos p
	JOIN productos pr ON p.fab = pr.idfab AND p.producto = pr.idproducto
	GROUP BY pr.descripcion
	ORDER BY cantidad_total DESC
	LIMIT 5;

-- CONSULTA # 12.
SELECT pr.descripcion, SUM(p.importe) AS ingresos
FROM pedidos p
JOIN productos pr ON p.fab = pr.idfab AND p.producto = pr.idproducto
GROUP BY pr.descripcion
ORDER BY ingresos DESC
LIMIT 5;

-- CONSULTA # 13.
SELECT e.numemp, e.nombre,
    SUM(p.importe) AS total_ventas
FROM empleados e
JOIN pedidos p ON e.numemp = p.rep
	GROUP BY e.numemp, e.nombre
	ORDER BY total_ventas DESC;

-- CONSULTA # 14.
SELECT c.numclie, c.nombre, SUM(p.importe) AS total_compras
FROM clientes c
	JOIN pedidos p ON c.numclie = p.clie
GROUP BY c.numclie, c.nombre
ORDER BY total_compras DESC LIMIT 10;

-- CONSULTA # 15.
SELECT o.oficina, o.ciudad, o.objetivo, o.ventas, (o.ventas - o.objetivo) AS diferencia
FROM oficinas o ORDER BY diferencia DESC;

-- CONSULTA # 16.
SELECT p.codigo, p.numpedido, pr.descripcion, pr.existencias
FROM pedidos p
	JOIN productos pr ON p.fab = pr.idfab AND p.producto = pr.idproducto
	WHERE pr.existencias = 0;

-- CONSULTA # 17.
SELECT jefe.nombre AS jefe, emp.nombre AS subordinado
FROM empleados emp
	JOIN empleados jefe ON emp.jefe = jefe.numemp
ORDER BY jefe.nombre;

-- CONSULTA # 18.
SELECT 
    YEAR(fechapedido) AS año,
    MONTH(fechapedido) AS mes,
    COUNT(*) AS total_pedidos,
    SUM(importe) AS total_importe
FROM pedidos GROUP BY YEAR(fechapedido), MONTH(fechapedido)
ORDER BY año, mes;

-- CONSULTA # 19.
SELECT c.numclie, c.nombre FROM clientes c
LEFT JOIN pedidos p ON c.numclie = p.clie
WHERE p.codigo IS NULL;
