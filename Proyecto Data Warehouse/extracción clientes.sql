--Extraer del transaccional

select 
	c.customerid as cod_cliente
	, p.firstname as nombre
	, p.lastname as apellido
	, p.firstname||' '||p.lastname as nombre_completo
	, case when p2.phonenumbertypeid = 1 then p2.phonenumber else null end as numero_celular
	, case when p2.phonenumbertypeid = 2 then p2.phonenumber else null end as numero_casa
	, case when p2.phonenumbertypeid = 3 then p2.phonenumber else null end as numero_trabajo
	, a.city as ciudad
from sales.customer c
left join person.person p
	on(c.personid=p.businessentityid)
left join person.personphone p2 
	on(p.businessentityid = p2.businessentityid)
left join person.businessentity b
	on(p.businessentityid = b.businessentityid)
left join person.businessentityaddress b2 
	on(b.businessentityid = b2.businessentityid and b2.addresstypeid = 2)
left join person.address a 
	on (b2.addressid = a.addressid)
	

	
--Extraer del dwh
SELECT
	  id_cliente
	, codigo_cliente
	, fecha_actualizacion
FROM dwh_adventureworks.dim_clientes

