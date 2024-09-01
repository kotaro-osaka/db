-- Nach 2005 erschienen, Wertung unter Durchschnitt, ueberdurchschnittlich viele Folgen, genre 'Action'

SELECT * FROM film
LEFT JOIN erschjahr ON film.erschJahrID = erschjahr.ErschJahrID
LEFT JOIN publisher ON film.publisherID = publisher.publisherID
WHERE erschjahr.ErschJahr > 2005 
    AND film.wertung < (SELECT AVG(film.wertung) FROM film)
    AND film.folgen > (SELECT AVG(film.folgen) FROM film)
    AND film.spiellaenge < ANY(SELECT AVG(film.spiellaenge) FROM film)
HAVING publisher.publisher = "Sony Pictures Television "