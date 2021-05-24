DROP SCHEMA IF EXISTS museo;
CREATE SCHEMA museo;
USE museo;

CREATE TABLE exposicion (
    exp_id 	 integer  primary key,
	exp_nombre  varchar(25)
);
CREATE TABLE obra (
    obr_id     integer primary key,
	obr_nombre  varchar(30),
	obr_tipo     varchar(12)  default "Pintura",
    obr_costo   int,
	exp_id  	integer,
	FOREIGN KEY (exp_id) REFERENCES exposicion(exp_id)
);
CREATE TABLE museo (    
    mus_id    	 integer primary key,
	mus_nombre  varchar(25)
);
CREATE TABLE presentacion(
	pre_fecha    varchar(15),
	obr_id  integer,
	mus_id    integer,    
	PRIMARY KEY (mus_id, obr_id, pre_fecha),
	FOREIGN KEY (mus_id) REFERENCES museo(mus_id),
	FOREIGN KEY (obr_id) REFERENCES obra(obr_id)
);

ALTER TABLE
	presentacion add pre_hora varchar(6) NULL;

ALTER TABLE obra
	ALTER obr_costo SET DEFAULT 500;

-- Museo---
insert into museo values(101, 'Louvre');
insert into museo values(102, 'Met' );
insert into museo values(203, 'Shangai');
insert into museo values(304,'Britanico');

-- Exposicion--
insert into exposicion values(1003 , 'Da Vinci');
insert into exposicion values(1004 , 'Renacimiento');
insert into exposicion values( 1005 , 'Cubismo');
insert into exposicion values( 1006 , 'Impresionismo');

insert into obra values(111, 'Mona lisa', 'pintura', 1000, 1003);
insert into obra  values(112, 'Ultima cena', 'pintura', 800, 1003);
insert into obra  values(113, 'Hombre vitruvio', 'boceto', 400, 1003);
insert into obra  values(114, 'Planos', 'planos', 200, 1003);
insert into obra  values(200, 'Fornarina', 'pintura', 400, 1004);
insert into obra  values(201, 'David', 'escultura', 700, 1004);
insert into obra  values( 202, 'Nacimiento de Venus', 'pintura', 250, 1004);
insert into obra  values(300, 'Violin and candless', 'pintura', 300, 1005);
insert into obra  values(301, 'Les demoiselles', 'pintura', 350, 1005);
insert into obra  values(302, 'Cabeza de mujer', 'escultura', 300, 1005);
insert into obra  values(400, 'Autoretrato', 'pintura', 100, 1006);
insert into obra  values(401, 'La parade', 'pintura', 300, 1006);
insert into obra  values(402, 'Solei levant', 'pintura', 300, 1006);

   -- Presentacion--
   
insert into presentacion (pre_fecha, obr_id, mus_id) values('Ene-mar-2013', 111, 101);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Oct-dic-2013', 111, 101);
insert into presentacion (pre_fecha, obr_id, mus_id) values( 'Ene-mar-2013', 112, 101);
insert into presentacion (pre_fecha, obr_id, mus_id) values('May-sept-2013', 200, 101);
insert into presentacion (pre_fecha, obr_id, mus_id) values('May-sept-2013', 201, 101);
insert into presentacion (pre_fecha, obr_id, mus_id) values( 'Oct-dic-2013', 113, 101);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Ene-jul-2013', 300, 102);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Ene-jul-2013', 301, 102);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Abr-jun-2013', 113, 102);
insert into presentacion (pre_fecha, obr_id, mus_id) values( 'Sept-2013', 113, 102);
insert into presentacion (pre_fecha, obr_id, mus_id) values( 'Abr-jun-2013', 112, 102);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Sept-2013', 112, 102);
insert into presentacion (pre_fecha, obr_id, mus_id) values( 'Ene-abr-2013', 202, 102);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Ene-abr-2013', 201, 102);
insert into presentacion (pre_fecha, obr_id, mus_id) values( 'Julio 2013', 113, 203);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Julio 2013', 114, 203);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Mar-jun-2013', 401, 203);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Mar-jun-2013', 402, 203);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Oct-dic-2013', 301, 203);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Oct-dic-2013', 302, 203);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Oct-dic-2013', 200, 203);
insert into presentobraacion (pre_fecha, obr_id, mus_id) values('Oct-dic-2013', 202, 203);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Ago-nov-2013', 402, 304);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Ago-nov-2013', 400, 304);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Jul-ago-2013', 114, 304);
insert into presentacion (pre_fecha, obr_id, mus_id) values('Jul-ago-2013', 111, 304);

insert into obra (obr_id, obr_nombre, obr_tipo, exp_id) values (115, 'Salvator Mundi', 'pintura', 1003);

DELETE FROM obra WHERE obr_id=115;

UPDATE obra SET obr_costo=1300 WHERE obr_nombre = 'Mona lisa';

UPDATE obra SET obr_costo=obr_costo*1.1 WHERE obr_tipo = 'escultura';
