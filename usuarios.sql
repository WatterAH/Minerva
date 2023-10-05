create database usuarios;
use usuarios;
create table if not exists administrador(for_adminA char(35),for_code varchar(20),primary key(for_adminA));
INSERT INTO administrador (for_adminA, for_code ) value('Watter', 'sameinformation');