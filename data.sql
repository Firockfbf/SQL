INSERT INTO Utilisateur (email, password_hash, nom, role)
VALUES
('admin@library.com', 'hashed_password1', 'Admin', 'admin'),
('user1@library.com', 'hashed_password2', 'Alice', 'user'),
('user2@library.com', 'hashed_password3', 'Bob', 'user');

INSERT INTO Livre (titre, auteur, categorie, annee_publication,)
VALUES
('1984', 'George Orwell', 'Dystopie', 1949),
('Le Petit Prince', 'Antoine de Saint-Exupéry', 'Conte', 1943),
('Harry Potter', 'J.K. Rowling', 'Fantastique', 1997);

INSERT INTO Emprunt (id_utilisateur, id_livre, date_emprunt, date_retour_attendue, statut)
VALUES
(2, 1, '2024-11-01', '2024-11-15', 'en cours'),
(3, 2, '2024-10-20', '2024-11-03', 'retourné');

INSERT INTO Retour (id_emprunt, date_retour_effective, penalite)
VALUES
(2, '2024-11-02', 0.00);
