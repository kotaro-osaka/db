-- 17. Geben Sie alles über die entsprechenden Film aus, allderdings nur die Medien die älter als das Durchschnittsalter aller Filme ist.
SELECT *
FROM film
WHERE erscheinJahr > (SELECT AVG(erscheinJahr.erschJahr) FROM erscheinJahr)
ORDER BY erscheinJahr;

-- 18. Zeigen Sie alle Filme, die über dem Durchschnitt in der Bewertung liegen.
SELECT *
FROM film
WHERE wertung > (SELECT AVG(wertung.wertung) FROM wertung)
ORDER BY wertung;

-- 19. Welche Filme sind überdurchschnittlich auf den Streaming-Diensten vertreten?
SELECT *
FROM film
WHERE (SELECT COUNT(*) FROM streaming) > (SELECT AVG(streaming) FROM streaming)
ORDER BY streaming; 

-- 20. Welche Filme werden auf keinem Streaming-Dienst angeboten, laut unserer Datenbank.

-- 21. Gesucht sind die Anzahl der Protagonisten, die häufiger als der Durchschnitt aller Protagonisten vorkommen.