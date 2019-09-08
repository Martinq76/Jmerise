#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Professeurs
#------------------------------------------------------------

CREATE TABLE Professeurs(
        id     Int  Auto_increment  NOT NULL ,
        Nom    Varchar (50) NOT NULL ,
        Prenom Varchar (50) NOT NULL ,
        Mail   Varchar (50) NOT NULL
	,CONSTRAINT Professeurs_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Classe
#------------------------------------------------------------

CREATE TABLE Classe(
        id             Int  Auto_increment  NOT NULL ,
        Classe         Varchar (3) NOT NULL ,
        id_Professeurs Int NOT NULL
	,CONSTRAINT Classe_PK PRIMARY KEY (id)

	,CONSTRAINT Classe_Professeurs_FK FOREIGN KEY (id_Professeurs) REFERENCES Professeurs(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Elèves
#------------------------------------------------------------

CREATE TABLE Eleves(
        id        Int  Auto_increment  NOT NULL ,
        Nom       Varchar (50) NOT NULL ,
        Prenom    Varchar (50) NOT NULL ,
        id_Classe Int NOT NULL
	,CONSTRAINT Eleves_PK PRIMARY KEY (id)

	,CONSTRAINT Eleves_Classe_FK FOREIGN KEY (id_Classe) REFERENCES Classe(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Matières
#------------------------------------------------------------

CREATE TABLE Matieres(
        id       Int  Auto_increment  NOT NULL ,
        Matieres Varchar (50) NOT NULL
	,CONSTRAINT Matieres_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Notes
#------------------------------------------------------------

CREATE TABLE Notes(
        id          Int  Auto_increment  NOT NULL ,
        Notes       Float NOT NULL ,
        id_Matieres Int NOT NULL ,
        id_Eleves   Int NOT NULL
	,CONSTRAINT Notes_PK PRIMARY KEY (id)

	,CONSTRAINT Notes_Matieres_FK FOREIGN KEY (id_Matieres) REFERENCES Matieres(id)
	,CONSTRAINT Notes_Eleves0_FK FOREIGN KEY (id_Eleves) REFERENCES Eleves(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: id Professeurs vers table Elèves
#------------------------------------------------------------

CREATE TABLE id_Professeurs_vers_table_Eleves(
        id             Int NOT NULL ,
        id_Professeurs Int NOT NULL
	,CONSTRAINT id_Professeurs_vers_table_Eleves_PK PRIMARY KEY (id,id_Professeurs)

	,CONSTRAINT id_Professeurs_vers_table_Eleves_Eleves_FK FOREIGN KEY (id) REFERENCES Eleves(id)
	,CONSTRAINT id_Professeurs_vers_table_Eleves_Professeurs0_FK FOREIGN KEY (id_Professeurs) REFERENCES Professeurs(id)
)ENGINE=InnoDB;

