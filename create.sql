CREATE TABLE Utilisateur (
    id_utilisateur INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    nom TEXT NOT NULL,
    role TEXT NOT NULL CHECK(role IN ('admin', 'user'))
);

CREATE TABLE Livre (
    id_livre INTEGER PRIMARY KEY AUTOINCREMENT,
    titre TEXT NOT NULL,
    auteur TEXT NOT NULL,
    categorie TEXT,
    annee_publication INTEGER,
    nombre_exemplaires INTEGER NOT NULL
);

CREATE TABLE Emprunt (
    id_emprunt INTEGER PRIMARY KEY AUTOINCREMENT,
    id_utilisateur INTEGER NOT NULL,
    id_livre INTEGER NOT NULL,
    date_emprunt TEXT NOT NULL,
    date_retour_attendue TEXT NOT NULL,
    statut TEXT NOT NULL CHECK(statut IN ('en cours', 'retourné', 'en retard')),
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id_utilisateur),
    FOREIGN KEY (id_livre) REFERENCES Livre(id_livre)
);

CREATE TABLE Retour (
    id_retour INTEGER PRIMARY KEY AUTOINCREMENT,
    id_emprunt INTEGER NOT NULL,
    date_retour_effective TEXT NOT NULL,
    penalite REAL,
    FOREIGN KEY (id_emprunt) REFERENCES Emprunt(id_emprunt)
);

