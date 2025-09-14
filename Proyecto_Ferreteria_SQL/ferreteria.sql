use ferreteria;

select idfab, idproducto, descripcion from productos where exists(select * from pedidos where fab = idfab and producto = idproducto and importe <= 25000);