
DROP TABLE IF EXISTS Oggetti CASCADE;

CREATE TABLE Oggetti(
	id serial PRIMARY KEY,
	url varchar(100),
	categoria1 varchar(20), --nome
	valorecorretto2 varchar(150), --nomecorretto
	valoreerrato10 varchar(150), --opzione nome 1
	valoreerrato11 varchar(150), --opzione nome 2
	valoreerrato12 varchar(150), --opzione nome 3
	valoreerrato13 varchar(150), --opzone nome 4
	categoria2 varchar(40), --ambito di utilizzo
	valorecorretto3 varchar(150), --ambito di utilizzo
	valoreerrato20 varchar(150), --opzione ambito 1
	valoreerrato21 varchar(150), --opzione ambito 2
	valoreerrato22 varchar(150), --opzione ambito 3
	valoreerrato23 varchar(150) --opzione ambito 4
);

insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto1.jpg', 'Nome:', 'Affetta banana' , 'Apri bottiglia' , 'Svita bulloni', 'Conia monete', 'Affetta banana', 'Ambito di utilizzo:', 'Cucina', 'Giardinaggio' , 'Artigianato', 'Edilizia', 'Cucina');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto2.jpg', 'Nome:', 'Apri uovo' , 'Stura lavandino' , 'Campanello da tavolo', 'Pressa a molla', 'Apri uovo', 'Ambito di utilizzo:', 'Cucina', 'Idraulico' , 'Artigianato', 'Edilizia', 'Cucina');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto3.jpg', 'Nome:', 'Calamaio' , 'Vernice' , 'Smalto', 'Eyeliner', 'Calamaio', 'Ambito di utilizzo:', 'Scrittura', 'Estetica' , 'Disegno', 'Artigianato', 'Scrittura');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto4.jpg', 'Nome:', 'Cazzuola berlinese' , 'Paletta' , 'Paletta per torta', 'Paletta da giardinaggio', 'Cazzuola berlinese', 'Ambito di utilizzo:', 'Edilizia', 'Giardinaggio' , 'Cucina', 'Svago', 'Edilizia');


insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto5.jpg', 'Nome:', 'Massaggiatore per cervicale' , 'Collare' , 'Cuscino per il collo', 'Massaggiatore lombare', 'Massaggiatore per cervicale', 'Ambito di utilizzo:', 'Benessere', 'Riposo' , 'Relax', 'Svago', 'Benessere');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto6.jpg', 'Nome:', 'Piega ciglia' , 'Pelapatate' , 'Affetta ortaggi', 'Tagliaunghie', 'Piega ciglia', 'Ambito di utilizzo:', 'Estetica', 'Cucina' , 'Pulizia', 'Artigianato', 'Estetica');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto7.jpg', 'Nome:', 'Dosa spaghetti' , 'Apri bottiglia' , 'Mandarino per anelli', 'Portachiavi', 'Dosa spaghetti', 'Ambito di utilizzo:', 'Cucina', 'Gioielleria' , 'Svago', 'Artigianato', 'Cucina');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto8.jpg', 'Nome:', 'Spazzola skincare' , 'Massaggiatore viso' , 'Spugna per piatti', 'silk epil', 'Spazzola skincare', 'Ambito di utilizzo:', 'Cura del viso', 'Cucina' , 'Pulizia', 'Cura del corpo', 'Cura del viso');



insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto9.jpg', 'Nome:', 'Ferro da stiro verticale' , 'Pulitore vetri a vapore' , 'Spray', 'Microfono', 'Ferro da stiro verticale', 'Ambito di utilizzo:', 'Domestico', 'Pulizia' , 'Cucina', 'Svago', 'Domestico');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto10.jpg', 'Nome:', 'Forbici per erba' , 'Taglia erba' , 'Stendi cemento', 'Rastrello elettrico', 'Forbici per erba', 'Ambito di utilizzo:', 'Giardinaggio', 'Edilizia' , 'Svago', 'Artigianato', 'Giardinaggio');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto11.jpg', 'Nome:', 'Morsetto falegname' , 'Bilancia' , 'Misuratore altezza', 'Avvita bulloni', 'Morsetto falegname', 'Ambito di utilizzo:', 'Falegnameria', 'Edilizia' , 'Cura personale', 'Artigianato', 'Falegnameria');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto12.jpg', 'Nome:', 'Pulitore vetri elettrico' , 'Pulitore pavimento elettrico' , 'Spugna', 'Riscaldatore piedi', 'Pulitore vetri elettrico', 'Ambito di utilizzo:', 'Pulizia', 'Cucina' , 'Domestico', 'Cura del corpo', 'Pulizia');


insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto13.jpg', 'Nome:', 'Mouse verticale' , 'Mouse ergonomico' , 'Antistress', 'Joystick', 'Mouse verticale', 'Ambito di utilizzo:', 'Informatico', 'Gaming' , 'Relax', 'Svago', 'Informatico');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto14.jpg', 'Nome:', 'Omino subuteo LW' , 'Omino subuteo HW' , 'Pedina scacchi', 'Omino calcio balilla', 'Omino subuteo LW', 'Ambito di utilizzo:', 'Subuteo', 'Calcio balilla' , 'Calcio', 'Scacchi', 'Subuteo');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto15.jpg', 'Nome:', 'Purificatore d''aria', 'Sterilizzatore oggetti' , 'Riscaldamento', 'Metal detector', 'Purificatore d''aria', 'Ambito di utilizzo:', 'Sanificazione di ambienti', 'Controllo sicurezza' , 'Sterilizzazione', 'Pulizia', 'Sanificazione di ambienti');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto16.jpg', 'Nome:', 'Sbuccia aglio' , 'Sbuccia cipolla' , 'Spugnetta', 'Porta stuzzicadenti ', 'Sbuccia aglio', 'Ambito di utilizzo:', 'Cucina', 'Pulizia' , 'Domestico', 'Cura personale', 'Cucina');


insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto17.jpg', 'Nome:', 'Sbuccia ananas' , 'Sbuccia anguria' , 'Stura lavandino', 'picchetto per ombrellone', 'Sbuccia ananas', 'Ambito di utilizzo:', 'Cucina', 'Lavori manuali' , 'Idraulica', 'Svago', 'Cucina');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto18.jpg', 'Nome:', 'Schiaccianoci a molla' , 'Pressa a molla' , 'Apri bottiglia', 'Foratore superfici', 'Schiaccianoci a molla', 'Ambito di utilizzo:', 'Cucina', 'Falegnameria' , 'Edilizia', 'Relax', 'Cucina');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto19.jpg', 'Nome:', 'Sedia ergonomica' , 'Pouf' , 'Triclinium', 'Sedia a dondolo', 'Sedia ergonomica', 'Ambito di utilizzo:', 'Cura personale', 'Svago' , 'Relax', 'Antiquariato', 'Cura personale');
insert into Oggetti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/oggetti/oggetto20.jpg', 'Nome:', 'Trivella a mano' , 'Foratore superfici' , 'Apri cocco', 'Avvita bulloni manuale', 'Trivella a mano', 'Ambito di utilizzo:', 'Edilizia', 'Falegnameria' , 'Domestico', 'Cucina', 'Edilizia');




select *
from Oggetti;