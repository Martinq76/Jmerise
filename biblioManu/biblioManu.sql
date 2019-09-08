#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Genres
#------------------------------------------------------------

CREATE TABLE Genres(
        id     Int  Auto_increment  NOT NULL ,
        Genres Varchar (50) NOT NULL
	,CONSTRAINT Genres_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Livres
#------------------------------------------------------------

CREATE TABLE Livres(
        id         Int  Auto_increment  NOT NULL ,
        Titre      Varchar (50) NOT NULL ,
        NAuteur    Varchar (50) NOT NULL ,
        PAuteur    Varchar (50) NOT NULL ,
        Popularite Int NOT NULL ,
        id_Genres  Int NOT NULL
	,CONSTRAINT Livres_PK PRIMARY KEY (id)

	,CONSTRAINT Livres_Genres_FK FOREIGN KEY (id_Genres) REFERENCES Genres(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Clients
#------------------------------------------------------------

CREATE TABLE Clients(
        id                Int  Auto_increment  NOT NULL ,
        Nom               Varchar (50) NOT NULL ,
        Prenom            Varchar (50) NOT NULL ,
        Mail              Varchar (50) NOT NULL ,
        Date_de_naissance Date NOT NULL ,
        id_Genres         Int NOT NULL
	,CONSTRAINT Clients_PK PRIMARY KEY (id)

	,CONSTRAINT Clients_Genres_FK FOREIGN KEY (id_Genres) REFERENCES Genres(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Registre
#------------------------------------------------------------

CREATE TABLE Registre(
        id         Int  Auto_increment  NOT NULL ,
        Emprunt    Date NOT NULL ,
        Retour     Date ,
        Rendu      Varchar (3) NOT NULL ,
        id_Clients Int NOT NULL ,
        id_Livres  Int NOT NULL
	,CONSTRAINT Registre_PK PRIMARY KEY (id)

	,CONSTRAINT Registre_Clients_FK FOREIGN KEY (id_Clients) REFERENCES Clients(id)
	,CONSTRAINT Registre_Livres0_FK FOREIGN KEY (id_Livres) REFERENCES Livres(id)
)ENGINE=InnoDB;

