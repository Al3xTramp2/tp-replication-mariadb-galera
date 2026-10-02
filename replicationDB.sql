create database if not exists replicationdb;
use replicationdb;

create table if not exists Caserne (
	NumCaserne int auto_increment primary key,
	Adresse varchar(50),
	CP int,
	Ville varchar(50),
	TypeCaserne varchar(50)
);

create table if not exists Grade(
	CodeGrades int auto_increment primary key,
	NomGrade varchar(50),
	salaire int
);

create table if not exists Pompier (
        Matricule int auto_increment primary key,
        Prenom varchar(50),
        Nom varchar(50),
        DateNaissance date,
        CodeGrades int,
        NumCaserne int,
        foreign key(NumCaserne) references Caserne(NumCaserne),
        foreign key(CodeGrades) references Grade(CodeGrades)
);
