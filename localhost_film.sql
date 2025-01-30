CREATE TABLE film(
filmID int PRIMARY KEY AUTO_INCREMENT,
filmNimetus varchar(30) not null,
aasta int,
eelarveHind decimal(7,1)
);



INSERT INTO film(filmNimetus, aasta, eelarveHind)
VALUES('Titanic', 2024, 55555.5);



CREATE TABLE zanr(
zanrID int PRIMARY KEY AUTO_INCREMENT,
zanrNimetus varchar(20) UNIQUE
);

INSERT INTO zanr(zanrNimetus)
VALUES ('draama'), ('detektiiv');

SELECT * FROM zanr;



ALTER TABLE film ADD zanrID int;
SELECT * FROM film;

ALTER TABLE film ADD CONSTRAINT fk_zanr
FOREIGN KEY (zanrID) REFERENCES zanr(zanrID);
