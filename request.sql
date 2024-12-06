SELECT * FROM Utilisateur;

SELECT u.nom AS utilisateur, l.titre AS livre, e.date_emprunt, e.date_retour_attendue
FROM Emprunt e
JOIN Utilisateur u ON e.id_utilisateur = u.id_utilisateur
JOIN Livre l ON e.id_livre = l.id_livre
WHERE u.nom = 'Alice';

SELECT categorie, SUM(nombre_exemplaires) AS total_exemplaires
FROM Livre
GROUP BY categorie;

SELECT u.nom AS utilisateur, l.titre AS livre, e.date_emprunt, e.date_retour_attendue
FROM Emprunt e
JOIN Utilisateur u ON e.id_utilisateur = u.id_utilisateur
JOIN Livre l ON e.id_livre = l.id_livre
WHERE e.statut = 'en retard';
