-- Donnees fictives pour le TP MariaDB : 15 casernes et 300 pompiers.
-- A executer une seule fois : une nouvelle execution ajouterait encore ces donnees.
-- Les salaires sont des valeurs fictives pour les exercices.
SET NAMES utf8mb4;
USE replicationdb;
START TRANSACTION;
INSERT INTO Grade (NomGrade, salaire) VALUES ('Sapeur', 1800);
SET @grade1 = LAST_INSERT_ID();
INSERT INTO Grade (NomGrade, salaire) VALUES ('Caporal', 2050);
SET @grade2 = LAST_INSERT_ID();
INSERT INTO Grade (NomGrade, salaire) VALUES ('Caporal-chef', 2300);
SET @grade3 = LAST_INSERT_ID();
INSERT INTO Grade (NomGrade, salaire) VALUES ('Sergent', 2550);
SET @grade4 = LAST_INSERT_ID();
INSERT INTO Grade (NomGrade, salaire) VALUES ('Adjudant', 2800);
SET @grade5 = LAST_INSERT_ID();
INSERT INTO Grade (NomGrade, salaire) VALUES ('Lieutenant', 3050);
SET @grade6 = LAST_INSERT_ID();

-- Caserne 1 : Lyon (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('3 rue des Tilleuls', '69001', 'Lyon', 'Centre de secours principal');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Martin', '1975-01-01', @grade1, @caserne),
('Camille', 'Bernard', '1978-02-08', @grade2, @caserne),
('Lucas', 'Dubois', '1981-03-15', @grade3, @caserne),
('Emma', 'Thomas', '1984-04-22', @grade4, @caserne),
('Hugo', 'Robert', '1987-05-01', @grade5, @caserne),
('Lea', 'Richard', '1990-06-08', @grade6, @caserne),
('Nathan', 'Petit', '1993-07-15', @grade1, @caserne),
('Chloe', 'Durand', '1996-08-22', @grade2, @caserne),
('Louis', 'Leroy', '1999-09-01', @grade3, @caserne),
('Manon', 'Moreau', '2002-10-08', @grade4, @caserne),
('Gabriel', 'Simon', '2005-11-15', @grade5, @caserne),
('Sarah', 'Laurent', '1977-12-22', @grade6, @caserne),
('Jules', 'Lefebvre', '1980-01-01', @grade1, @caserne),
('Ines', 'Michel', '1983-02-08', @grade2, @caserne),
('Adam', 'Garcia', '1986-03-15', @grade3, @caserne),
('Clara', 'Roux', '1989-04-22', @grade4, @caserne),
('Noah', 'Fontaine', '1992-05-01', @grade5, @caserne),
('Julie', 'Chevalier', '1995-06-08', @grade6, @caserne),
('Arthur', 'Francois', '1998-07-15', @grade1, @caserne),
('Alice', 'Legrand', '2001-08-22', @grade2, @caserne);

-- Caserne 2 : Villeurbanne (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('6 avenue des Alpes', '69100', 'Villeurbanne', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Laurent', '1982-02-04', @grade1, @caserne),
('Camille', 'Lefebvre', '1985-03-11', @grade2, @caserne),
('Lucas', 'Michel', '1988-04-18', @grade3, @caserne),
('Emma', 'Garcia', '1991-05-25', @grade4, @caserne),
('Hugo', 'Roux', '1994-06-04', @grade5, @caserne),
('Lea', 'Fontaine', '1997-07-11', @grade6, @caserne),
('Nathan', 'Chevalier', '2000-08-18', @grade1, @caserne),
('Chloe', 'Francois', '2003-09-25', @grade2, @caserne),
('Louis', 'Legrand', '1975-10-04', @grade3, @caserne),
('Manon', 'Gauthier', '1978-11-11', @grade4, @caserne),
('Gabriel', 'Garnier', '1981-12-18', @grade5, @caserne),
('Sarah', 'Faure', '1984-01-25', @grade6, @caserne),
('Jules', 'Rousseau', '1987-02-04', @grade1, @caserne),
('Ines', 'Vincent', '1990-03-11', @grade2, @caserne),
('Adam', 'Muller', '1993-04-18', @grade3, @caserne),
('Clara', 'Lambert', '1996-05-25', @grade4, @caserne),
('Noah', 'Bonnet', '1999-06-04', @grade5, @caserne),
('Julie', 'Girard', '2002-07-11', @grade6, @caserne),
('Arthur', 'Andre', '2005-08-18', @grade1, @caserne),
('Alice', 'Mercier', '1977-09-25', @grade2, @caserne);

-- Caserne 3 : Bron (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('9 rue des Acacias', '69500', 'Bron', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Faure', '1989-03-07', @grade1, @caserne),
('Camille', 'Rousseau', '1992-04-14', @grade2, @caserne),
('Lucas', 'Vincent', '1995-05-21', @grade3, @caserne),
('Emma', 'Muller', '1998-06-28', @grade4, @caserne),
('Hugo', 'Lambert', '2001-07-07', @grade5, @caserne),
('Lea', 'Bonnet', '2004-08-14', @grade6, @caserne),
('Nathan', 'Girard', '1976-09-21', @grade1, @caserne),
('Chloe', 'Andre', '1979-10-28', @grade2, @caserne),
('Louis', 'Mercier', '1982-11-07', @grade3, @caserne),
('Manon', 'Dupont', '1985-12-14', @grade4, @caserne),
('Gabriel', 'Guerin', '1988-01-21', @grade5, @caserne),
('Sarah', 'Boyer', '1991-02-28', @grade6, @caserne),
('Jules', 'Perrin', '1994-03-07', @grade1, @caserne),
('Ines', 'Robin', '1997-04-14', @grade2, @caserne),
('Adam', 'Clement', '2000-05-21', @grade3, @caserne),
('Clara', 'Martin', '2003-06-28', @grade4, @caserne),
('Noah', 'Bernard', '1975-07-07', @grade5, @caserne),
('Julie', 'Dubois', '1978-08-14', @grade6, @caserne),
('Arthur', 'Thomas', '1981-09-21', @grade1, @caserne),
('Alice', 'Robert', '1984-10-28', @grade2, @caserne);

-- Caserne 4 : Venissieux (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('12 avenue du Parc', '69200', 'Venissieux', 'Centre de secours principal');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Boyer', '1996-04-10', @grade1, @caserne),
('Camille', 'Perrin', '1999-05-17', @grade2, @caserne),
('Lucas', 'Robin', '2002-06-24', @grade3, @caserne),
('Emma', 'Clement', '2005-07-03', @grade4, @caserne),
('Hugo', 'Martin', '1977-08-10', @grade5, @caserne),
('Lea', 'Bernard', '1980-09-17', @grade6, @caserne),
('Nathan', 'Dubois', '1983-10-24', @grade1, @caserne),
('Chloe', 'Thomas', '1986-11-03', @grade2, @caserne),
('Louis', 'Robert', '1989-12-10', @grade3, @caserne),
('Manon', 'Richard', '1992-01-17', @grade4, @caserne),
('Gabriel', 'Petit', '1995-02-24', @grade5, @caserne),
('Sarah', 'Durand', '1998-03-03', @grade6, @caserne),
('Jules', 'Leroy', '2001-04-10', @grade1, @caserne),
('Ines', 'Moreau', '2004-05-17', @grade2, @caserne),
('Adam', 'Simon', '1976-06-24', @grade3, @caserne),
('Clara', 'Laurent', '1979-07-03', @grade4, @caserne),
('Noah', 'Lefebvre', '1982-08-10', @grade5, @caserne),
('Julie', 'Michel', '1985-09-17', @grade6, @caserne),
('Arthur', 'Garcia', '1988-10-24', @grade1, @caserne),
('Alice', 'Roux', '1991-11-03', @grade2, @caserne);

-- Caserne 5 : Caluire-et-Cuire (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('15 rue des Chenes', '69300', 'Caluire-et-Cuire', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Durand', '2003-05-13', @grade1, @caserne),
('Camille', 'Leroy', '1975-06-20', @grade2, @caserne),
('Lucas', 'Moreau', '1978-07-27', @grade3, @caserne),
('Emma', 'Simon', '1981-08-06', @grade4, @caserne),
('Hugo', 'Laurent', '1984-09-13', @grade5, @caserne),
('Lea', 'Lefebvre', '1987-10-20', @grade6, @caserne),
('Nathan', 'Michel', '1990-11-27', @grade1, @caserne),
('Chloe', 'Garcia', '1993-12-06', @grade2, @caserne),
('Louis', 'Roux', '1996-01-13', @grade3, @caserne),
('Manon', 'Fontaine', '1999-02-20', @grade4, @caserne),
('Gabriel', 'Chevalier', '2002-03-27', @grade5, @caserne),
('Sarah', 'Francois', '2005-04-06', @grade6, @caserne),
('Jules', 'Legrand', '1977-05-13', @grade1, @caserne),
('Ines', 'Gauthier', '1980-06-20', @grade2, @caserne),
('Adam', 'Garnier', '1983-07-27', @grade3, @caserne),
('Clara', 'Faure', '1986-08-06', @grade4, @caserne),
('Noah', 'Rousseau', '1989-09-13', @grade5, @caserne),
('Julie', 'Vincent', '1992-10-20', @grade6, @caserne),
('Arthur', 'Muller', '1995-11-27', @grade1, @caserne),
('Alice', 'Lambert', '1998-12-06', @grade2, @caserne);

-- Caserne 6 : Oullins (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('18 avenue des Peupliers', '69600', 'Oullins', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Francois', '1979-06-16', @grade1, @caserne),
('Camille', 'Legrand', '1982-07-23', @grade2, @caserne),
('Lucas', 'Gauthier', '1985-08-02', @grade3, @caserne),
('Emma', 'Garnier', '1988-09-09', @grade4, @caserne),
('Hugo', 'Faure', '1991-10-16', @grade5, @caserne),
('Lea', 'Rousseau', '1994-11-23', @grade6, @caserne),
('Nathan', 'Vincent', '1997-12-02', @grade1, @caserne),
('Chloe', 'Muller', '2000-01-09', @grade2, @caserne),
('Louis', 'Lambert', '2003-02-16', @grade3, @caserne),
('Manon', 'Bonnet', '1975-03-23', @grade4, @caserne),
('Gabriel', 'Girard', '1978-04-02', @grade5, @caserne),
('Sarah', 'Andre', '1981-05-09', @grade6, @caserne),
('Jules', 'Mercier', '1984-06-16', @grade1, @caserne),
('Ines', 'Dupont', '1987-07-23', @grade2, @caserne),
('Adam', 'Guerin', '1990-08-02', @grade3, @caserne),
('Clara', 'Boyer', '1993-09-09', @grade4, @caserne),
('Noah', 'Perrin', '1996-10-16', @grade5, @caserne),
('Julie', 'Robin', '1999-11-23', @grade6, @caserne),
('Arthur', 'Clement', '2002-12-02', @grade1, @caserne),
('Alice', 'Martin', '2005-01-09', @grade2, @caserne);

-- Caserne 7 : Saint-Priest (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('21 rue du Moulin', '69800', 'Saint-Priest', 'Centre de secours principal');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Andre', '1986-07-19', @grade1, @caserne),
('Camille', 'Mercier', '1989-08-26', @grade2, @caserne),
('Lucas', 'Dupont', '1992-09-05', @grade3, @caserne),
('Emma', 'Guerin', '1995-10-12', @grade4, @caserne),
('Hugo', 'Boyer', '1998-11-19', @grade5, @caserne),
('Lea', 'Perrin', '2001-12-26', @grade6, @caserne),
('Nathan', 'Robin', '2004-01-05', @grade1, @caserne),
('Chloe', 'Clement', '1976-02-12', @grade2, @caserne),
('Louis', 'Martin', '1979-03-19', @grade3, @caserne),
('Manon', 'Bernard', '1982-04-26', @grade4, @caserne),
('Gabriel', 'Dubois', '1985-05-05', @grade5, @caserne),
('Sarah', 'Thomas', '1988-06-12', @grade6, @caserne),
('Jules', 'Robert', '1991-07-19', @grade1, @caserne),
('Ines', 'Richard', '1994-08-26', @grade2, @caserne),
('Adam', 'Petit', '1997-09-05', @grade3, @caserne),
('Clara', 'Durand', '2000-10-12', @grade4, @caserne),
('Noah', 'Leroy', '2003-11-19', @grade5, @caserne),
('Julie', 'Moreau', '1975-12-26', @grade6, @caserne),
('Arthur', 'Simon', '1978-01-05', @grade1, @caserne),
('Alice', 'Laurent', '1981-02-12', @grade2, @caserne);

-- Caserne 8 : Meyzieu (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('24 avenue des Cerisiers', '69330', 'Meyzieu', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Thomas', '1993-08-22', @grade1, @caserne),
('Camille', 'Robert', '1996-09-01', @grade2, @caserne),
('Lucas', 'Richard', '1999-10-08', @grade3, @caserne),
('Emma', 'Petit', '2002-11-15', @grade4, @caserne),
('Hugo', 'Durand', '2005-12-22', @grade5, @caserne),
('Lea', 'Leroy', '1977-01-01', @grade6, @caserne),
('Nathan', 'Moreau', '1980-02-08', @grade1, @caserne),
('Chloe', 'Simon', '1983-03-15', @grade2, @caserne),
('Louis', 'Laurent', '1986-04-22', @grade3, @caserne),
('Manon', 'Lefebvre', '1989-05-01', @grade4, @caserne),
('Gabriel', 'Michel', '1992-06-08', @grade5, @caserne),
('Sarah', 'Garcia', '1995-07-15', @grade6, @caserne),
('Jules', 'Roux', '1998-08-22', @grade1, @caserne),
('Ines', 'Fontaine', '2001-09-01', @grade2, @caserne),
('Adam', 'Chevalier', '2004-10-08', @grade3, @caserne),
('Clara', 'Francois', '1976-11-15', @grade4, @caserne),
('Noah', 'Legrand', '1979-12-22', @grade5, @caserne),
('Julie', 'Gauthier', '1982-01-01', @grade6, @caserne),
('Arthur', 'Garnier', '1985-02-08', @grade1, @caserne),
('Alice', 'Faure', '1988-03-15', @grade2, @caserne);

-- Caserne 9 : Decines-Charpieu (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('27 rue des Lilas', '69150', 'Decines-Charpieu', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Garcia', '2000-09-25', @grade1, @caserne),
('Camille', 'Roux', '2003-10-04', @grade2, @caserne),
('Lucas', 'Fontaine', '1975-11-11', @grade3, @caserne),
('Emma', 'Chevalier', '1978-12-18', @grade4, @caserne),
('Hugo', 'Francois', '1981-01-25', @grade5, @caserne),
('Lea', 'Legrand', '1984-02-04', @grade6, @caserne),
('Nathan', 'Gauthier', '1987-03-11', @grade1, @caserne),
('Chloe', 'Garnier', '1990-04-18', @grade2, @caserne),
('Louis', 'Faure', '1993-05-25', @grade3, @caserne),
('Manon', 'Rousseau', '1996-06-04', @grade4, @caserne),
('Gabriel', 'Vincent', '1999-07-11', @grade5, @caserne),
('Sarah', 'Muller', '2002-08-18', @grade6, @caserne),
('Jules', 'Lambert', '2005-09-25', @grade1, @caserne),
('Ines', 'Bonnet', '1977-10-04', @grade2, @caserne),
('Adam', 'Girard', '1980-11-11', @grade3, @caserne),
('Clara', 'Andre', '1983-12-18', @grade4, @caserne),
('Noah', 'Mercier', '1986-01-25', @grade5, @caserne),
('Julie', 'Dupont', '1989-02-04', @grade6, @caserne),
('Arthur', 'Guerin', '1992-03-11', @grade1, @caserne),
('Alice', 'Boyer', '1995-04-18', @grade2, @caserne);

-- Caserne 10 : Ecully (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('30 avenue du Stade', '69130', 'Ecully', 'Centre de secours principal');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Muller', '1976-10-28', @grade1, @caserne),
('Camille', 'Lambert', '1979-11-07', @grade2, @caserne),
('Lucas', 'Bonnet', '1982-12-14', @grade3, @caserne),
('Emma', 'Girard', '1985-01-21', @grade4, @caserne),
('Hugo', 'Andre', '1988-02-28', @grade5, @caserne),
('Lea', 'Mercier', '1991-03-07', @grade6, @caserne),
('Nathan', 'Dupont', '1994-04-14', @grade1, @caserne),
('Chloe', 'Guerin', '1997-05-21', @grade2, @caserne),
('Louis', 'Boyer', '2000-06-28', @grade3, @caserne),
('Manon', 'Perrin', '2003-07-07', @grade4, @caserne),
('Gabriel', 'Robin', '1975-08-14', @grade5, @caserne),
('Sarah', 'Clement', '1978-09-21', @grade6, @caserne),
('Jules', 'Martin', '1981-10-28', @grade1, @caserne),
('Ines', 'Bernard', '1984-11-07', @grade2, @caserne),
('Adam', 'Dubois', '1987-12-14', @grade3, @caserne),
('Clara', 'Thomas', '1990-01-21', @grade4, @caserne),
('Noah', 'Robert', '1993-02-28', @grade5, @caserne),
('Julie', 'Richard', '1996-03-07', @grade6, @caserne),
('Arthur', 'Petit', '1999-04-14', @grade1, @caserne),
('Alice', 'Durand', '2002-05-21', @grade2, @caserne);

-- Caserne 11 : Tassin-la-Demi-Lune (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('33 rue des Platanes', '69160', 'Tassin-la-Demi-Lune', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Clement', '1983-11-03', @grade1, @caserne),
('Camille', 'Martin', '1986-12-10', @grade2, @caserne),
('Lucas', 'Bernard', '1989-01-17', @grade3, @caserne),
('Emma', 'Dubois', '1992-02-24', @grade4, @caserne),
('Hugo', 'Thomas', '1995-03-03', @grade5, @caserne),
('Lea', 'Robert', '1998-04-10', @grade6, @caserne),
('Nathan', 'Richard', '2001-05-17', @grade1, @caserne),
('Chloe', 'Petit', '2004-06-24', @grade2, @caserne),
('Louis', 'Durand', '1976-07-03', @grade3, @caserne),
('Manon', 'Leroy', '1979-08-10', @grade4, @caserne),
('Gabriel', 'Moreau', '1982-09-17', @grade5, @caserne),
('Sarah', 'Simon', '1985-10-24', @grade6, @caserne),
('Jules', 'Laurent', '1988-11-03', @grade1, @caserne),
('Ines', 'Lefebvre', '1991-12-10', @grade2, @caserne),
('Adam', 'Michel', '1994-01-17', @grade3, @caserne),
('Clara', 'Garcia', '1997-02-24', @grade4, @caserne),
('Noah', 'Roux', '2000-03-03', @grade5, @caserne),
('Julie', 'Fontaine', '2003-04-10', @grade6, @caserne),
('Arthur', 'Chevalier', '1975-05-17', @grade1, @caserne),
('Alice', 'Francois', '1978-06-24', @grade2, @caserne);

-- Caserne 12 : Givors (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('36 avenue de la Gare', '69700', 'Givors', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Simon', '1990-12-06', @grade1, @caserne),
('Camille', 'Laurent', '1993-01-13', @grade2, @caserne),
('Lucas', 'Lefebvre', '1996-02-20', @grade3, @caserne),
('Emma', 'Michel', '1999-03-27', @grade4, @caserne),
('Hugo', 'Garcia', '2002-04-06', @grade5, @caserne),
('Lea', 'Roux', '2005-05-13', @grade6, @caserne),
('Nathan', 'Fontaine', '1977-06-20', @grade1, @caserne),
('Chloe', 'Chevalier', '1980-07-27', @grade2, @caserne),
('Louis', 'Francois', '1983-08-06', @grade3, @caserne),
('Manon', 'Legrand', '1986-09-13', @grade4, @caserne),
('Gabriel', 'Gauthier', '1989-10-20', @grade5, @caserne),
('Sarah', 'Garnier', '1992-11-27', @grade6, @caserne),
('Jules', 'Faure', '1995-12-06', @grade1, @caserne),
('Ines', 'Rousseau', '1998-01-13', @grade2, @caserne),
('Adam', 'Vincent', '2001-02-20', @grade3, @caserne),
('Clara', 'Muller', '2004-03-27', @grade4, @caserne),
('Noah', 'Lambert', '1976-04-06', @grade5, @caserne),
('Julie', 'Bonnet', '1979-05-13', @grade6, @caserne),
('Arthur', 'Girard', '1982-06-20', @grade1, @caserne),
('Alice', 'Andre', '1985-07-27', @grade2, @caserne);

-- Caserne 13 : Grigny (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('39 rue des Roses', '69520', 'Grigny', 'Centre de secours principal');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Garnier', '1997-01-09', @grade1, @caserne),
('Camille', 'Faure', '2000-02-16', @grade2, @caserne),
('Lucas', 'Rousseau', '2003-03-23', @grade3, @caserne),
('Emma', 'Vincent', '1975-04-02', @grade4, @caserne),
('Hugo', 'Muller', '1978-05-09', @grade5, @caserne),
('Lea', 'Lambert', '1981-06-16', @grade6, @caserne),
('Nathan', 'Bonnet', '1984-07-23', @grade1, @caserne),
('Chloe', 'Girard', '1987-08-02', @grade2, @caserne),
('Louis', 'Andre', '1990-09-09', @grade3, @caserne),
('Manon', 'Mercier', '1993-10-16', @grade4, @caserne),
('Gabriel', 'Dupont', '1996-11-23', @grade5, @caserne),
('Sarah', 'Guerin', '1999-12-02', @grade6, @caserne),
('Jules', 'Boyer', '2002-01-09', @grade1, @caserne),
('Ines', 'Perrin', '2005-02-16', @grade2, @caserne),
('Adam', 'Robin', '1977-03-23', @grade3, @caserne),
('Clara', 'Clement', '1980-04-02', @grade4, @caserne),
('Noah', 'Martin', '1983-05-09', @grade5, @caserne),
('Julie', 'Bernard', '1986-06-16', @grade6, @caserne),
('Arthur', 'Dubois', '1989-07-23', @grade1, @caserne),
('Alice', 'Thomas', '1992-08-02', @grade2, @caserne);

-- Caserne 14 : Tarare (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('42 avenue des Pins', '69170', 'Tarare', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Guerin', '2004-02-12', @grade1, @caserne),
('Camille', 'Boyer', '1976-03-19', @grade2, @caserne),
('Lucas', 'Perrin', '1979-04-26', @grade3, @caserne),
('Emma', 'Robin', '1982-05-05', @grade4, @caserne),
('Hugo', 'Clement', '1985-06-12', @grade5, @caserne),
('Lea', 'Martin', '1988-07-19', @grade6, @caserne),
('Nathan', 'Bernard', '1991-08-26', @grade1, @caserne),
('Chloe', 'Dubois', '1994-09-05', @grade2, @caserne),
('Louis', 'Thomas', '1997-10-12', @grade3, @caserne),
('Manon', 'Robert', '2000-11-19', @grade4, @caserne),
('Gabriel', 'Richard', '2003-12-26', @grade5, @caserne),
('Sarah', 'Petit', '1975-01-05', @grade6, @caserne),
('Jules', 'Durand', '1978-02-12', @grade1, @caserne),
('Ines', 'Leroy', '1981-03-19', @grade2, @caserne),
('Adam', 'Moreau', '1984-04-26', @grade3, @caserne),
('Clara', 'Simon', '1987-05-05', @grade4, @caserne),
('Noah', 'Laurent', '1990-06-12', @grade5, @caserne),
('Julie', 'Lefebvre', '1993-07-19', @grade6, @caserne),
('Arthur', 'Michel', '1996-08-26', @grade1, @caserne),
('Alice', 'Garcia', '1999-09-05', @grade2, @caserne);

-- Caserne 15 : Villefranche-sur-Saone (adresse fictive)
INSERT INTO Caserne (Adresse, CP, Ville, TypeCaserne) VALUES ('45 rue du Verger', '69400', 'Villefranche-sur-Saone', 'Centre de secours');
SET @caserne = LAST_INSERT_ID();
INSERT INTO Pompier (Prenom, Nom, DateNaissance, CodeGrades, NumCaserne) VALUES
('Alexis', 'Petit', '1980-03-15', @grade1, @caserne),
('Camille', 'Durand', '1983-04-22', @grade2, @caserne),
('Lucas', 'Leroy', '1986-05-01', @grade3, @caserne),
('Emma', 'Moreau', '1989-06-08', @grade4, @caserne),
('Hugo', 'Simon', '1992-07-15', @grade5, @caserne),
('Lea', 'Laurent', '1995-08-22', @grade6, @caserne),
('Nathan', 'Lefebvre', '1998-09-01', @grade1, @caserne),
('Chloe', 'Michel', '2001-10-08', @grade2, @caserne),
('Louis', 'Garcia', '2004-11-15', @grade3, @caserne),
('Manon', 'Roux', '1976-12-22', @grade4, @caserne),
('Gabriel', 'Fontaine', '1979-01-01', @grade5, @caserne),
('Sarah', 'Chevalier', '1982-02-08', @grade6, @caserne),
('Jules', 'Francois', '1985-03-15', @grade1, @caserne),
('Ines', 'Legrand', '1988-04-22', @grade2, @caserne),
('Adam', 'Gauthier', '1991-05-01', @grade3, @caserne),
('Clara', 'Garnier', '1994-06-08', @grade4, @caserne),
('Noah', 'Faure', '1997-07-15', @grade5, @caserne),
('Julie', 'Rousseau', '2000-08-22', @grade6, @caserne),
('Arthur', 'Vincent', '2003-09-01', @grade1, @caserne),
('Alice', 'Muller', '1975-10-08', @grade2, @caserne);

COMMIT;

-- Verification des effectifs (inclut les donnees deja presentes).
SELECT c.NumCaserne, c.Ville, COUNT(p.Matricule) AS NombrePompiers
FROM Caserne AS c LEFT JOIN Pompier AS p ON p.NumCaserne = c.NumCaserne
GROUP BY c.NumCaserne, c.Ville ORDER BY c.NumCaserne;
