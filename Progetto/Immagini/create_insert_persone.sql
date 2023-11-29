DROP TABLE IF EXISTS Persone CASCADE;

CREATE TABLE Persone(
	id serial PRIMARY KEY,
	url varchar(100),
	categoria1 varchar(20), --età
	valorecorretto2 integer, --etacorretta
	valoreerrato10 integer, --opzione età 1
	valoreerrato11 integer, --opzione età 2
	valoreerrato12 integer, --opzione età 3
	valoreerrato13 integer, --opzone età 4
	categoria2 varchar(20), --nazionalità
	valorecorretto3 varchar(50), --nazionalità
	valoreerrato20 varchar(50), --opzione nazionalità 1
	valoreerrato21 varchar(50), --opzione nazionalità 2
	valoreerrato22 varchar(50), --opzione nazionalità 3
	valoreerrato23 varchar(50) --opzione nazionalità 4
);

insert into Persone(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona1.jpg', 'Età:', 24, 28, 21, 18, 24, 'Nazionalità:', 'Filippina', 'Italiana' , 'Brasiliana', 'Giapponese', 'Filippina');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona2.jpg', 'Età:', 37, 30, 42, 26, 37, 'Nazionalità:', 'Inglese', 'Indiana' , 'Americana', 'Giapponese', 'Inglese');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona3.jpg', 'Età:', 23, 27, 33, 20, 23, 'Nazionalità:', 'Russa', 'Italiana' , 'Brasiliana', 'Inglese', 'Russa');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23)values('immagini/persone/persona4.jpg', 'Età:', 47, 55, 42, 44, 47, 'Nazionalità:', 'Argentina', 'Indiana' , 'Americana', 'Italiana', 'Argentina');

insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona5.jpg', 'Età:', 55, 58, 46, 50, 55, 'Nazionalità:', 'Spagnola', 'Tedesca' , 'Argentina', 'Indiana', 'Spagnola');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona6.jpg', 'Età:', 78 , 82, 75, 71, 78, 'Nazionalità:', 'Albanese', 'Tedesca' , 'Francese', 'Belga', 'Albanese');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23)values('immagini/persone/persona7.jpg', 'Età:', 18, 16, 20, 22, 18, 'Nazionalità:', 'Camerunense', 'Ivoriana' , 'Ghanese', 'Keniota', 'Camerunense');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23)values('immagini/persone/persona8.jpg', 'Età:', 43, 55, 38, 48, 43, 'Nazionalità:', 'Irlandese', 'Scozzese' , 'Coreana', 'Italiana', 'Irlandese');

insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona9.jpg', 'Età:', 22, 27, 18, 30, 22, 'Nazionalità:', 'Iraniana', 'Indiana' , 'Argentina', 'Spagnola', 'Iraniana');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23)values('immagini/persone/persona10.jpg', 'Età:', 52 , 57, 48, 55, 52 , 'Nazionalità:', 'Scozzese', 'Americana' , 'Bielorussa', 'Rumena', 'Scozzese');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona11.jpg', 'Età:', 55, 46, 59, 50, 55, 'Nazionalità:', 'Ucraina', 'Rumena' , 'Lettone', 'Francese', 'Ucraina');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona12.jpg', 'Età:', 44, 48, 40, 52, 44, 'Nazionalità:', 'Danese', 'Francese' , 'Americana', 'Inglese', 'Danese');

insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona13.jpg', 'Età:', 61, 56, 65, 52, 61, 'Nazionalità:', 'Slovena', 'Svedese' , 'Rumena', 'Ceca', 'Slovena');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona14.jpg', 'Età:', 72 , 77, 67, 62, 72, 'Nazionalità:', 'Greca', 'Americana' , 'Italiana', 'Olandese', 'Greca');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona15.jpg', 'Età:', 3, 4, 5, 2, 3, 'Nazionalità:', 'Ucraina', 'Rumena' , 'Lettone', 'Francese', 'Ucraina');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23)values('immagini/persone/persona16.jpg', 'Età:', 28, 24, 30, 32, 28, 'Nazionalità:', 'Coreana', 'Cinese' , 'Giapponese', 'Mongola', 'Coreana');

insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23)values('immagini/persone/persona17.jpg', 'Età:', 38, 42, 35, 48, 38, 'Nazionalità:', 'Armena', 'Tunisina' , 'Marocchina', 'Israeliana', 'Armena');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/persone/persona18.jpg', 'Età:', 46, 41, 50, 36, 46, 'Nazionalità:', 'Portogese', 'Svizzera' , 'Italiana', 'Tedesca', 'Portogese');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23)values('immagini/persone/persona19.jpg', 'Età:', 78, 83, 75, 80, 78, 'Nazionalità:', 'Tedesca', 'Italiana' , 'Americana', 'Messicana', 'Tedesca');
insert into Persone (url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23)values('immagini/persone/persona20.jpg', 'Età:', 38, 31, 34, 44, 38, 'Nazionalità:', 'Afgana', 'Pakistana' , 'Turca', 'Saudita', 'Afgana'); 

select *
from persone;