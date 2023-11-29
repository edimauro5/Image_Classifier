DROP TABLE IF EXISTS Dipinti CASCADE;

CREATE TABLE Dipinti(
	id serial PRIMARY KEY,
	url varchar(100),
	categoria1 varchar(20), --autore
	valorecorretto2 varchar(30), --autorecorretto
	valoreerrato10 varchar(30), --opzione autore 1
	valoreerrato11 varchar(30), --opzione autore 2
	valoreerrato12 varchar(30), --opzione autore 3
	valoreerrato13 varchar(30), --opzione autore 4
	categoria2 varchar(20), --stile
	valorecorretto3 varchar(30), --stilecorretto
	valoreerrato20 varchar(30), --opzione stile 1
	valoreerrato21 varchar(30), --opzione stile 2
	valoreerrato22 varchar(30), --opzione stile 3
	valoreerrato23 varchar(30) --opzione stile 4
);

insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto1.jpg', 'Autore:', 'Andy Warhol', 'Kraft', 'Gauguin', 'Mondrian', 'Andy Warhol', 'Stile:', 'Figurativa astratta', 'Impressionismo' , 'Cubismo', 'Astratta', 'Figurativa astratta');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto2.jpg', 'Autore:', 'Antonio Ligabue', 'Giovanni Ligabue', 'Renoir', 'Gauguin', 'Antonio Ligabue', 'Stile:', 'Naif', 'Asiatica' , 'Cubismo', 'Barocco', 'Naif');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto3.jpg', 'Autore:', 'Botticelli', 'Picasso', 'Mondrian', 'Rysselberghe', 'Botticelli', 'Stile:', 'Rinascimento', 'Impressionismo' , 'Modernismo classico', 'Naif', 'Rinascimento');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto4.jpg', 'Autore:', 'Caravaggio', 'Hokusai', 'Seurat', 'Van Gogh', 'Caravaggio', 'Stile:', 'Barocco', 'Art Nouveau' , 'Puntinismo', 'Figurativa astratta', 'Barocco');

insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto5.jpg', 'Autore:', 'Claude Monet', 'Kraft', 'Edouard Manet', 'Mondrian', 'Claude Monet', 'Stile:', 'Impressionismo', 'Romanticismo' , 'Puntinismo', 'Asiatica', 'Impressionismo');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto6.jpg', 'Autore:', 'David Friedrich', 'Petra Roder', 'Louisa Knight', 'Renoir', 'David Friedrich', 'Stile:', 'Romanticismo', 'Asiatica' , 'Impressionismo', 'Barocco', 'Romanticismo');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto7.jpg', 'Autore:', 'Gauguin', 'Hokusai', 'Hocusai', 'Seurat', 'Gauguin', 'Stile:', 'Impressionismo', 'Art Nouveau' , 'Naif', 'Astratta', 'Impressionismo');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto8.jpg', 'Autore:', 'Hokusai', 'Louisa Knight', 'Hokusay', 'Sara Catena', 'Hokusai', 'Stile:', 'Asiatica', 'Puntinismo' , 'Romanticismo', 'Naif', 'Asiatica');

insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto9.jpg', 'Autore:', 'Klimt', 'Climt', 'Klint', 'Seurat', 'Klimt', 'Stile:', 'Art Nouveau', 'Astratta' , 'Figurativa astratta', 'Cubismo', 'Art Nouveau');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto10.jpg', 'Autore:', 'Kraft', 'Vermeer', 'Renoir', 'Mondrian', 'Kraft', 'Stile:', 'Rococò', 'Impressionismo' , 'Naif', 'Romanticismo', 'Rococò');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto11.jpg', 'Autore:', 'Louisa Knight', 'Andy Warhol', 'Gauguin', 'Petra Roder', 'Louisa Knight', 'Stile:', 'Astratta', 'Figurativa astratta' , 'Romanticismo', 'Art Nouveau', 'Astratta');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto12.jpg', 'Autore:', 'Mondrian', 'Sara Catena', 'Louisa Knight', 'Andy Warhol', 'Mondrian', 'Stile:', 'Cubismo', 'Romanticismo' , 'Puntinismo', 'Naif', 'Cubismo');

insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto13.jpg', 'Autore:', 'Petra Roder', 'David Friedrich', 'Mondrian', 'Picasso', 'Petra Roder', 'Stile:', 'Figurativa astratta', 'Naif' , 'Impressionismo', 'Modernismo classico', 'Figurativa astratta');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto14.jpg', 'Autore:', 'Picasso', 'Hokusai', 'Renoir', 'Antonio Ligabue', 'Picasso', 'Stile:', 'Modernismo classico', 'Naif' , 'Romanticismo', 'Puntinismo', 'Modernismo classico');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto15.jpg', 'Autore:', 'Renoir', 'Claude Monet', 'Van Gogh', 'Gauguin', 'Renoir', 'Stile:', 'Puntinismo', 'Astratta' , 'Romanticismo', 'Naif', 'Puntinismo');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto16.jpg', 'Autore:', 'Rysselberghe', 'Louisa Knight', 'Seurat', 'Claude Monet', 'Rysselberghe', 'Stile:', 'Figurativa astratta', 'Impressionismo' , 'Cubismo', 'Astratta', 'Figurativa astratta');

insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto17.jpg', 'Autore:', 'Sara Catena', 'David Friedrich', 'Antonio Ligabue', 'Vermeer', 'Sara Catena', 'Stile:', 'Naif', 'Romanticismo' , 'Cubismo', 'Astratta', 'Naif');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto18.jpg', 'Autore:', 'Seurat', 'Rysselberghe', 'Petra Roder', 'Gauguin', 'Seurat', 'Stile:', 'Puntinismo', 'Cubismo' , 'Impressionismo', 'Astratta', 'Puntinismo');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto19.jpg', 'Autore:', 'Van Gogh', 'Claude Monet', 'Gauguin', 'Renoir', 'Van Gogh', 'Stile:', 'Impressionismo', 'Romanticismo' , 'Puntinismo', 'Cubismo', 'Impressionismo');
insert into Dipinti(url, categoria1, valorecorretto2, valoreerrato10 , valoreerrato11 , valoreerrato12, valoreerrato13, categoria2, valorecorretto3 , valoreerrato20 , valoreerrato21, valoreerrato22, valoreerrato23) values('immagini/dipinti/dipinto20.jpg', 'Autore:', 'Vermeer', 'Caravaggio', 'Gauguin', 'Picasso', 'Vermeer', 'Stile:', 'Barocco', 'Art Nouveau' , 'Cubismo', 'Rococò', 'Barocco');

select *
from dipinti;
