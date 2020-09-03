

set global log_bin_trust_function_creators = 1;
drop database if exists spa;

create database spa; -- /*!40100 COLLATE 'utf8_spanish_ci' */; 

use spa;



create table usuarios(
 nombreusuario character varying(16) primary key not null,
 clave character varying(16) not null,
 nombre1 character varying (20) not null,
 nombre2 character varying (20) null,
 apellidop character varying (20) not null,
 apellidon character varying (20) not null,
 correo character varying (50) not null unique, 
 foto character varying (50)  default 'client_01.jpg',
 direccion character varying (100) not null,
 dni character varying (50) not null
);

insert into usuarios values('solange','123','Solange','','Riofrio','','solangea@gmail.com','client_01.jpg','BABAHOYO','1234567890');
insert into usuarios values('katy','123','Katherine','','Moran','','katy@live.com','client_02.jpg','LA ISLA','0123456789');

select * from usuarios;

create table tipo(
idtipo int not null primary key,
descripcion character varying(20) not null
);

insert into tipo values(1,'Productos');
insert into tipo values(2,'Servicios');


create table categorias(
 idcategorias int not null primary key,
 descripcion character varying(25),
 imagen character varying(25)
);

INSERT INTO categorias VALUES (1,'VÍVERES','licor_cafe.jpg');
INSERT INTO categorias VALUES (2,'LICORES','licor_cafe.jpg');

create table items(
 iditem int not null primary key AUTO_INCREMENT,
 nombre character varying(50) not null,
 descripcion character varying(100) not null,
 descripcion2 character varying(1000) ,
 precio float,
 descuento float,
 idtipo int not NULL , 
 idcategorias int not NULL, 
 imagen character varying(50),
 stock int,
 rate FLOAT DEFAULT 0,
 CONSTRAINT fk_i_t FOREIGN KEY(idtipo) references tipo(idtipo) on update cascade on delete restrict,
 CONSTRAINT fk_i_c FOREIGN KEY(idcategorias) references categorias(idcategorias) on update cascade on delete restrict
);


-- -----------------------------------
insert into items values(default,'Azúcar','Algo','Algo2',1.5,0,1,1,'azucar.jpg',5,DEFAULT);
insert into items values(default,'Sal','Algo','Algo2',0.6,15.07,1,1,'sal.jpg',5,DEFAULT);
insert into items values(default,'Fideo','Algo','Algo2',.5,11.54,1,1,'fideo.jpg',10,DEFAULT);
insert into items values(default,'Cocoa','Algo','Algo2',.75,11.54,1,1,'cocaa1.jpg',20,DEFAULT);
insert into items values(default,'Chocolate','Algo','Algo2',1.25,11.54,1,1,'cocoa.jpg',3,DEFAULT);
insert into items values(default,'Café','Algo','Algo2',0.35,11.54,1,1,'cafe.png',3,DEFAULT);
insert into items values(default,'Licor de café','Algo','Algo2',26,11.54,1,2,'licor_cafe.jpg',8,DEFAULT);
insert into items values(default,'Amaretto','Algo','Algo2',11,11.54,1,2,'licor de cacao.jpg',10,DEFAULT);
insert into items values(default,'Licor de cacao','Algo','Algo2',5.5,11.54,1,2,'amareto.jpg',5,DEFAULT);
insert into items values(default,'Jhonny Rojo','Algo','Algo2',60,11.54,1,2,'jhonny rojo.jpg',5,DEFAULT);
insert into items values(default,'Jhonny Azul','Algo','Algo2',450,11.54,1,2,'jhonny azul.jpg',5,DEFAULT);
insert into items values(default,'Jhonny Negro','Algo','Algo2',150,11.54,1,2,'jhonny negro.jpg',5,DEFAULT);
insert into items values(default,'Jhonny verde','Algo','Algo2',500,11.54,1,2,'Jhonny verde.jpg',0,DEFAULT);
insert into items values(default,'Brandy','Algo','Algo2',15,11.54,1,2,'brandy.jpg',5,DEFAULT);


select * from items;
-- ----------------------------------------------------------------------------------------------------------------------

 create table imagenes(
  idimagen int primary key AUTO_INCREMENT,
  nombre character varying (50) not null,
  iditem int not NULL,
  CONSTRAINT fk_o_im FOREIGN KEY(iditem) references items(iditem) on delete restrict on update restrict
 );

select * from items;
-- ----------------------------------------------------------------------------------------------------------------------
 insert into imagenes values (default,'licor_cafe.jpg',7);
 insert into imagenes values (default,'licor_cafe.jpg',7);

-- ----------------------------------------------------------------------------------------------------------------------


create table opiniones(
 idopinion int primary key  AUTO_INCREMENT,
 opinion character varying(200),
 nombreusuario character varying(16) ,
 CONSTRAINT fk_o_u  FOREIGN KEY(nombreusuario)  REFERENCES usuarios(nombreusuario) on delete restrict on update restrict,
 idproducto INT NOT NULL,
 CONSTRAINT fk_o_i FOREIGN KEY(idproducto)   references items(iditem) on delete restrict on update restrict,
 fecha date not null ,
 clasificacion int not null
);
-- ----------------------------------------------------------------------------------------------------------------------
 

-- ----------------------------------------------------------------------------------------------------------------------

 

SELECT * FROM items where idtipo=1 ORDER BY rand() LIMIT 3;

create table ventas(
 idventa bigint not null primary key AUTO_INCREMENT,
 nombreusuario character varying(16),
 CONSTRAINT fk_v_u  FOREIGN KEY(nombreusuario)  REFERENCES usuarios(nombreusuario) on delete restrict on update restrict,
 fecha date not null,
 total float default 0
);

-- ------------------------------------------------------------
-- ------------------------------------------------------------

create table detalleventa(
 idventa bigint not NULL ,
 CONSTRAINT fk_v_d  FOREIGN KEY(idventa) references ventas(idventa) on update cascade on delete restrict,
 idtem int not NULL,
 CONSTRAINT fk_i_d FOREIGN KEY(idtem) references items(idtem) on update cascade on delete restrict,
 cantidad int not null,
 precio float not null,
 descuento float not null, 
 iva float not null default 12
);

-- ------------------------------------------------------------
-- ------------------------------------------------------------

 delimiter $$
 CREATE PROCEDURE add_opinion( d1 TEXT, d2 TEXT, d3 INT, d4 int) 
 begin  
  DECLARE promedio float;
  insert into opiniones(opinion,nombreusuario,clasificacion,idproducto) values (d1,d2,d3,d4,NOW());
  select  avg(clasificacion) into promedio  from opiniones where idproducto=d4;
  update items set rate=promedio where  iditem=d4;
 END
 $$

 -- ------------------------------------------------------------
-- ------------------------------------------------------------

delimiter $$
CREATE FUNCTION insertarventa(d1 TEXT )    
  RETURNS bigint  
  begin   
   declare id bigint;  
   insert into ventas(idventa, nombreusuario,fecha) values(DEFAULT,d1,NOW());
   SELECT @@identity INTO id; 
   return id;
  end
 $$

-- ------------------------------------------------------------
-- ------------------------------------------------------------

delimiter $$
CREATE PROCEDURE actualizarTotal2(d1 BIGINT)
BEGIN 
 declare suma float DEFAULT 0;
 declare IVA FLOAT DEFAULT 0;
 DECLARE descuen FLOAT DEFAULT 0;
 DECLARE des FLOAT DEFAULT 0;
 DECLARE prec FLOAT DEFAULT 0;
 DECLARE articulos_cursor CURSOR FOR
 select precio,descuento from detalleventa where idventa = d1;
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET @hecho = TRUE;
 
 OPEN articulos_cursor;
 
 loop1: LOOP 
 FETCH articulos_cursor INTO des,prec;
  set suma=suma+prec;
  set descuen=descuen+(des*prec/100);
  set IVA=IVA+(prec*0.12);  
  IF @hecho THEN
   LEAVE loop1;
  END IF;  
  END LOOP loop1;
  CLOSE articulos_cursor;
  update ventas set total = suma - descuen + IVA where idventa = d1; 
end
$$


 

-- ------------------------------------------------------------
-- ------------------------------------------------------------

select LPAD(v.idventa,9,'0')as numerofactura,'COMERCIAL ANTONONY' AS razonsocial,'COMPRA DE ARTICULOS' AS concepto, dv.descuento,
cantidad,dv.precio, i.nombre as descripcion ,(dv.precio*dv.iva/100) as iva, (cantidad*dv.precio) as subtotal, ((cantidad*dv.precio)+(dv.precio*dv.iva/100)) as total , fecha as fechafactura,
nombre1,nombre2,apellidop, apellidon, u.nombreusuario, i.nombre from ventas v 
inner join detalleventa dv on v.idventa=dv.idventa
inner join items i on i.iditem=dv.idtem 
inner join usuarios u on u.nombreusuario=v.nombreusuario ;





