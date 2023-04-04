--drop table dim_clientes;
create table dim_clientes
(
	id_cliente	integer
	,codigo_cliente	varchar(20)
	,nombre	varchar(50)
	,apellido	varchar(50)
	,nombre_completo	varchar(100)
	,numero_telefono_celular	varchar(20)
	,numero_telefono_casa	varchar(20)
	,numero_telefono_trabajo	varchar(20)
	,ciudad_casa	varchar(50)
	,fecha_carga timestamp
	,fecha_actualizacion timestamp
	,primary key (id_cliente)
) 
;


--drop table dim_productos;
create table dim_productos
(
	id_producto	integer
	,codigo_producto	varchar(20)
	,nombre	varchar(50)
	,color	varchar(50)
	,tamanio	varchar(50)
	,categoria	varchar(50)
	,fecha_carga timestamp
	,fecha_actualizacion timestamp
	,primary key (id_producto)
) 
;


--drop table dim_territorios;
create table dim_territorios
(
	id_territorio	integer
	,codigo_territorio	varchar(20)
	,nombre	varchar(50)
	,continente	varchar(50)
	,fecha_carga timestamp
	,fecha_actualizacion timestamp
	,primary key (id_territorio)
) 
;


--drop table dim_vendedores;
create table dim_vendedores
(
	id_vendedor	integer
	,codigo_vendedor	varchar(20)
	,identificación	varchar(20)
	,nombre	varchar(50)
	,apellido	varchar(50)
	,nombre_completo	varchar(50)
	,rol	varchar(50)
	,fecha_nacimiento	date
	,genero	varchar(10)
	,ind_activo	boolean
	,fecha_inicio	date
	,fecha_fin	date
	,version integer
	,fecha_carga timestamp
	,primary key (id_vendedor)
) 
;


--drop table fact_ventas;
CREATE TABLE dwh_adventureworks.fact_ventas (
	id_venta integer NOT NULL,
	codigo_venta_detalle varchar(10) NOT NULL,
	codigo_venta_encabezado varchar(10) NOT NULL,
	id_fecha integer NULL,
	id_territorio integer NULL,
	id_cliente integer NULL,
	id_vendedor integer NULL,
	id_producto integer NULL,
	cantidad integer NULL,
	valor numeric(18,2) NULL,
	descuento numeric(18,2) NULL,
	fecha_carga timestamp NULL,
	fecha_actualizacion timestamp NULL,
	CONSTRAINT fact_ventas_pkey PRIMARY KEY (id_venta)
)


--drop table dim_tiempo;
create table dim_tiempo
(
    id_fecha int not null,
    fecha date not null, 
    dia smallint not null,
    mes smallint not null,
    anio smallint not null,
    dia_semana smallint not null,
    dia_anio smallint not null,
	PRIMARY KEY (id_fecha)
)



--Ejecutar luego de realizar la primera carga de datos en las dimensiones con Pentaho!!!!

INSERT INTO dwh_adventureworks.dim_clientes
(id_cliente, codigo_cliente, nombre, apellido, nombre_completo, numero_telefono_celular, numero_telefono_casa, numero_telefono_trabajo, ciudad_casa, fecha_carga, fecha_actualizacion)
VALUES(-1, '-1', 'Sin Información', 'Sin Información', 'Sin Información', '', '', '', '', '1900/01/01 00:00:00', '1900/01/01 00:00:00');


INSERT INTO dwh_adventureworks.dim_productos
(id_producto, codigo_producto, nombre, color, tamanio, categoria, fecha_carga, fecha_actualizacion)
VALUES(-1, '-1', 'Sin Información', '', '', '', '1900/01/01 00:00:00', '1900/01/01 00:00:00');


INSERT INTO dwh_adventureworks.dim_territorios
(id_territorio, codigo_territorio, nombre, continente, fecha_carga, fecha_actualizacion)
VALUES(-1, '-1', 'Sin Información', '', '1900/01/01 00:00:00', '1900/01/01 00:00:00');


INSERT INTO dwh_adventureworks.dim_vendedores
(id_vendedor, codigo_vendedor, identificación, nombre, apellido, nombre_completo, rol, fecha_nacimiento, genero, ind_activo, fecha_inicio, fecha_fin, version, fecha_carga)
VALUES(-1, '-1', null, 'Sin Información', 'Sin Información', 'Sin Información', null, '1900/01/01 00:00:00', null, true, '1900/01/01 00:00:00', '9999/12/31 00:00:00', 1, '1900/01/01 00:00:00');











