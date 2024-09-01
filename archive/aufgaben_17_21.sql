-- 17. Geben Sie alles über die entsprechenden Film aus, allderdings nur die Medien die älter als das Durchschnittsalter aller Filme ist.
SELECT film.titel, film.wertung
FROM film
WHERE film.wertung > (SELECT AVG(film.wertung) FROM film);


-- 18. Zeigen Sie alle Filme, die über dem Durchschnitt in der Bewertung liegen.
SELECT *
FROM film
WHERE wertung > (SELECT AVG(film.wertung) FROM film)
ORDER BY wertung;


-- 19. Welche Filme sind überdurchschnittlich auf den Streaming-Diensten vertreten?
SELECT film.*
FROM film
LEFT JOIN streaming_film ON film.filmID = streaming_film.filmID
LEFT JOIN streaming ON streaming_film.streamingID = streaming.streamingID
WHERE film.filmID IN (
    SELECT filmID
    FROM streaming_film
    GROUP BY filmID
    HAVING COUNT(*) > (
        SELECT AVG(streaming)
        FROM streaming
    )
)
ORDER BY streaming.streamingID;


-- 20. Welche Filme werden auf keinem Streaming-Dienst angeboten, laut unserer Datenbank.
SELECT *
FROM film
LEFT JOIN streaming_film ON film.filmID = streaming_film.filmID
LEFT JOIN streaming ON streaming_film.streamingID = streaming.streamingID
WHERE film.filmID NOT IN (
    SELECT filmID
    FROM streaming_film
    where streaming.str
)
ORDER BY streaming.streamingID;


-- 21. Gesucht sind die Anzahl der Protagonisten, die häufiger als der Durchschnitt aller Protagonisten vorkommen.


-- all: display all where true
-- any: display all where at least 1 is true