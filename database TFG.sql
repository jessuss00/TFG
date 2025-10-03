drop database if exists TFG;
create database TFG;
use TFG;

create table municipio(
	id int auto_increment primary key,
    nombre varchar(100),
    provincia varchar(100) not null
);
create table usuario(
	id int auto_increment primary key,
	nombre varchar(100),
    apellidos varchar(100),
    email varchar(100),
    contraseña varchar(20) not null,
    dni char(9),
    edad int,
	constraint chk_edad check (edad BETWEEN 17 AND 30)
);
create table artista(
	id int auto_increment primary key,
    nombre varchar(100),
    dj boolean,
    cantante boolean
);
create table evento(
	id int auto_increment primary key,
    nombre varchar(100),
    tipo enum('discoteca', 'festival', 'fiesta local') not null,
    fecha_inicio datetime,
    fecha_fin datetime,
    descripcion text,
    localizacion_exacta varchar(200),
    entradas varchar(255),
    confirmada boolean,
    municipio int, 
    constraint fk_evento_municipio foreign key(municipio) references municipio(id)
);

create table visita(
	usuario int,
    evento int,
    comentarios text,
    constraint pk_visita primary key(usuario, evento),
    constraint fk_visita_evento foreign key(evento) references evento(id),
    constraint fk_visita_usuario foreign key(usuario) references usuario(id)
);

create table actua(
	artista int,
    evento int,
    constraint pk_actua primary key(artista, evento),
    constraint fk_actua_artista foreign key(artista) references artista(id),
    constraint fk_actua_evento foreign key(evento) references evento(id)
);

describe municipio;
describe artista;
describe usuario;
describe evento;

INSERT INTO municipio(nombre, provincia) VALUES 
('Aguadulce','Sevilla'),
('Alanís','Sevilla'),
('Albaida del Aljarafe','Sevilla'),
('Alcalá de Guadaíra','Sevilla'),
('Alcalá del Río','Sevilla'),
('Alcolea del Río','Sevilla'),
('La Algaba','Sevilla'),
('Algámitas','Sevilla'),
('Almadén de la Plata','Sevilla'),
('Almensilla','Sevilla'),
('Arahal','Sevilla'),
('Aznalcázar','Sevilla'),
('Aznalcóllar','Sevilla'),
('Badolatosa','Sevilla'),
('Benacazón','Sevilla'),
('Bollullos de la Mitación','Sevilla'),
('Bormujos','Sevilla'),
('Brenes','Sevilla'),
('Burguillos','Sevilla'),
('Las Cabezas de San Juan','Sevilla'),
('Camas','Sevilla'),
('La Campana','Sevilla'),
('Cantillana','Sevilla'),
('Cañada Rosal','Sevilla'),
('Carmona','Sevilla'),
('Carrión de los Céspedes','Sevilla'),
('Casariche','Sevilla'),
('Castilblanco de los Arroyos','Sevilla'),
('Castilleja de Guzmán','Sevilla'),
('Castilleja de la Cuesta','Sevilla'),
('Castilleja del Campo','Sevilla'),
('El Castillo de las Guardas','Sevilla'),
('Cazalla de la Sierra','Sevilla'),
('Constantina','Sevilla'),
('Coria del Río','Sevilla'),
('Coripe','Sevilla'),
('El Coronil','Sevilla'),
('Los Corrales','Sevilla'),
('El Cuervo de Sevilla','Sevilla'),
('Dos Hermanas','Sevilla'),
('Écija','Sevilla'),
('Espartinas','Sevilla'),
('Estepa','Sevilla'),
('Fuentes de Andalucía','Sevilla'),
('El Garrobo','Sevilla'),
('Gelves','Sevilla'),
('Gerena','Sevilla'),
('Gilena','Sevilla'),
('Gines','Sevilla'),
('Guadalcanal','Sevilla'),
('Guillena','Sevilla'),
('Herrera','Sevilla'),
('Huévar del Aljarafe','Sevilla'),
('Isla Mayor','Sevilla'),
('La Lantejuela','Sevilla'),
('Lebrija','Sevilla'),
('Lora de Estepa','Sevilla'),
('Lora del Río','Sevilla'),
('La Luisiana','Sevilla'),
('El Madroño','Sevilla'),
('Mairena del Alcor','Sevilla'),
('Mairena del Aljarafe','Sevilla'),
('Marchena','Sevilla'),
('Marinaleda','Sevilla'),
('Martín de la Jara','Sevilla'),
('Los Molares','Sevilla'),
('Montellano','Sevilla'),
('Morón de la Frontera','Sevilla'),
('Las Navas de la Concepción','Sevilla'),
('Olivares','Sevilla'),
('Osuna','Sevilla'),
('Los Palacios y Villafranca','Sevilla'),
('Palomares del Río','Sevilla'),
('Paradas','Sevilla'),
('Pedrera','Sevilla'),
('El Pedroso','Sevilla'),
('Peñaflor','Sevilla'),
('Pilas','Sevilla'),
('Pruna','Sevilla'),
('La Puebla de Cazalla','Sevilla'),
('La Puebla de los Infantes','Sevilla'),
('La Puebla del Río','Sevilla'),
('El Real de la Jara','Sevilla'),
('La Rinconada','Sevilla'),
('La Roda de Andalucía','Sevilla'),
('El Ronquillo','Sevilla'),
('El Rubio','Sevilla'),
('Salteras','Sevilla'),
('San Juan de Aznalfarache','Sevilla'),
('San Nicolás del Puerto','Sevilla'),
('Sanlúcar la Mayor','Sevilla'),
('Santiponce','Sevilla'),
('El Saucejo','Sevilla'),
('Sevilla','Sevilla'),
('Tocina','Sevilla'),
('Tomares','Sevilla'),
('Umbrete','Sevilla'),
('Utrera','Sevilla'),
('Valencina de la Concepción','Sevilla'),
('Villamanrique de la Condesa','Sevilla'),
('Villanueva de San Juan','Sevilla'),
('Villanueva del Ariscal','Sevilla'),
('Villanueva del Río y Minas','Sevilla'),
('Villaverde del Río','Sevilla'),
('El Viso del Alcor','Sevilla');

select * from municipio;
