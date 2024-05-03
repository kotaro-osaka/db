# Indices

## Inhalt
1. [Definition](#definition)

2. [Arten](#arten)

    2.1 [Einzelner Index](#einzelner-index)

    2.2 [Zusammengesetzter Index](#zusammengesetzter-index)

    2.3 [Eindeutiger Index](#eindeutiger-index)

    2.4 [Clustered Index](#clustered-index)

    2.5 [Non-clustered Index](#non-clustered-index)

3. [Verwendung](#verwendung)

    3.1 [Applikationsintegrierte Datenbank](#applikationsintegrierte-datenbank)

4. [Leistungsmerkmale](#leistungsmerkmale)

5. [Pro & Contra](#pro--contra)

6. [IMDb](#imdb)

    6.1 [Einsatz](#einsatz)
    
    6.2. [Auswirkungen](#auswirkungen)

7. [Quellen](#quellen)


### Definition
Unter Indices versteht man strukturierte Datenstrukturen, die verwendet werden, um den Zugriff auf Daten in einer Datenbank zu beschleunigen. Sie machen Suchvorgänge effizienter, indem sie den Suchprozess optimieren.

### Arten
___
#### Einzelner Index

#### Zusammengesetzter Index

#### Eindeutiger Index

#### Clustered Index

#### Non-clustered Index


### Verwendung
___
Indices werden normalerweise für Spalten erstellt, die häufig in Abfragen mit `WHERE`, `JOIN`, oder `ORDER BY` verwendet werden. Durch das Indexieren dieser Spalten, können Abfragen schneller ausgeführt werden, da der Datenbankoptimierer auf die Indices zurückgreifen kann, um Datensätze effizient zu finden.

#### Applikationsintegrierte Datenbank
Um optimale Entscheidungen über die Indizierung von Spalten treffen zu können, sollte die Leistung überwacht werden und eine sortgfältige Analyse vorgenommen werden.

Zur Feststellung, welche Indices den größten Nutzen bieten, müssen Abfrageprofile und Zugriffsmuster analysiert werden.
Die Indexierung sollte basierend auf den spezifischen Anforderungen und dem Verhalten der Anwendung sein.

Zudem können ineffiziente Abfragen, bei denen Indices fehlen oder nicht optimal genutzt werden, durch regelmäßige Überwachung der Leistung der Datenbank identifiziert werden.
Es sollte jedoch beachtet werden, dass übermäßige Indexierung zu Leistungsproblemen führen kann, da jeder Index zusätzlichen Speicherplatz und Aktualisierungskosten verursacht.


### Leistungsmerkmale
___
#### Suchgeschwindigkeit
Indices ermöglichen schnelle Suchvorgänge, da sie den Zugriff auf Datensätze beschleunigen.

#### Sortierleistung
Daten können schnell sortiert werden, was besonders nützlich für `ORDER BY` ist.

#### Join-Optimierung
Indices verbessern die Leistung von JOIN-Operationen, indem der Zugriff auf verknüpfte Datensätze beschleunigt wird.

#### Gruppierungsleistung
Bei Abfragen mit `GROUP BY` können Indices zu erhöhter Geschwindigkeit beitragen.

#### Abfragemöglichkeiten
Indices ermöglichen komplexe Abfragen, indem sie den Zugriff auf Datensätze verbessern, die in `WHERE` oder `JOIN` verwendet werden.

#### Skalierbarkeit
Gut entworfene Indices können die Leistungen auch bei wachsenden Datenmengen aufrechterhalten.

#### Speichernutzung
Indices können den Speicherbedarf erhöhen, da sie zusätzliche Datenstrukturen benötigen.

#### Aktualisierungsleistung
Das Hinzufügen, Aktualisieren oder Löschen von Datensätzen kann bei indexierten Tabellen langsamer sein, da die Inices aktualisiert werden müssen.

#### Indexwahl
Die Auswahl der richtigen Indices basierend auf der Analyse der Abfragen und Datenzugriffsmuster ist entscheidend für optimale Leistung.

#### Überwachung & Optimierung
Regelmäßige Überwachung und Optimierung der Indices sind erforderlich, um die Leistung der Datenbank aufrechtzuerhalten.


### Pro & Contra
| | |
| --- | ------ |
| Beschleunigung von Suchvorgängen | Zusätzlicher Speicherbedard für Indexdatenstruktur |
| Verbesserte Leistung bei Abfragen | Aktualisierungskosten bei Datenänderungen |
|Optimierung von Sortierungen & Gruppierungen ||

### IMDb
___
#### Verwendung
#### Auswirkungen

### Quellen
- [Wikipedia](https://en.wikipedia.org/wiki/Database_index)