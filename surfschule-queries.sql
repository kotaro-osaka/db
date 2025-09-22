USE surfschule;

SELECT COUNT(*) AS anzahl_schueler_muschel
FROM unterkunft
LEFT JOIN schueler ON unterkunft.unterkunft_id = schueler.unterkunft_id
WHERE unterkunft.bezeichnung = 'Muschel';