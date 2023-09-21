# MusicBase Backend

MusicBase er en webbaseret applikation til visning af kunstnere. Den inkluderer både et RESTful API til håndtering af kunstnerdata og en brugergrænseflade (UI) til at fremvise med disse data.

## API Routes og Funktioner

### Routes

- **Hent en liste over alle albums.**
- GET /albums/:id
- Hent info om et specifikt album ved hjælp af dets ID.
- POST /albums
- Opret et nyt album med en ny artist og alle tracks (hvis de ikke allerede eksisterer) med eksempelvis Postman.
- PUT /albums/:id
- Opdater information om et eksisterende album.
- DELETE - /albums/:id
- Slet et album ved hjælp af dets ID.

### Database

Dette projekt bruger en MySQL-database til at gemme album-, artist- og track-data.
Databaseforbindelsesoplysninger skal konfigureres i .env-filen som beskrevet ovenfor.

## Krav

- Brug Postman til test af post, put og delete routes. 
- Node.js-server hosted på Azure.
- MYSQL database hosted på Azure.


## Eksempelklient

5. Åbn en webbrowser og besøg `https://musicbasebe.azurewebsites.net/` for at bruge applikationen.
- Gennemse artister, albums og tracks gennem de forskellige routes nævn ovenfor.

## Autor

Dette projekt blev udviklet af Nouhayla Oubelaid, Adam Warfa, Mads Magnus og Yousra Diab
