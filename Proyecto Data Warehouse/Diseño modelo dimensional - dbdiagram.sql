--Modelo de datos - dbdiagram
Table dwh.dim_clientes {
  id_cliente int pk
  codigo_cliente varchar
  nombre varchar
  apellido varchar
  nombre_completo varchar
  numero_celular varchar
  numero_casa varchar
  numero_trabajo varchar
  ciudad_casa varchar
}
Ref: dwh.dim_clientes.id_cliente < dwh.fact_ventas.id_cliente

Table dwh.dim_productos {
  id_producto int pk
  codigo_producto varchar
  nombre varchar
  color varchar
  tamano varchar
  categoria varchar
}
Ref: dwh.dim_productos.id_producto < dwh.fact_ventas.id_producto

Table dwh.dim_territorios {
  id_territorio int pk
  codigo_territorio varchar
  nombre varchar
  continente varchar
}
Ref: dwh.dim_territorios.id_territorio < dwh.fact_ventas.id_territorio

Table dwh.dim_vendedores {
  id_vendedor int pk
  codigo_vendedor varchar
  identificacion varchar
  nombre varchar
  apellido varchar
  nombre_completo varchar
  rol varchar
  fecha_nacimiento date
  genero varchar
  ind_activo boolean
  ind_bono boolean
  fecha_inicio date
  fecha_fin date
}
Ref: dwh.dim_vendedores.id_vendedor < dwh.fact_ventas.id_vendedor

Table dwh.fact_ventas {
  id_fecha int pk
  id_territorio int pk
  id_cliente int pk
  id_vendedor int pk
  id_producto int pk
  codigo_venta_detalle varchar
  codigo_venta_encabezado varchar
  cantidad int
  valor decimal
  descuento decimal
}

