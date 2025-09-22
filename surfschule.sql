CREATE DATABASE IF NOT EXISTSsurfschule;
USE surfschule;

CREATE TABLE IF NOT EXISTS unterkunft(
    unterkunft_id INT AUTO_INCREMENT PRIMARY KEY,
    bezeichnung VARCHAR(50),
    groesse INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

CREATE TABLE IF NOT EXISTS schueler(
    schueler_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    alter INT,
    unterkunft_id INT,
    FOREIGN KEY (unterkunft_id) REFERENCES unterkunft(unterkunft_id) ON UPDATE NO ACTION ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;