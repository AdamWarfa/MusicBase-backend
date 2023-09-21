# MusicBase Backend

MusicBase er en webbaseret applikation til visning af kunstnere. Den inkluderer både et RESTful API til håndtering af kunstnerdata og en brugergrænseflade (UI) til at fremvise med disse data.

### API Routes og Funktioner

## GET /albums

- **Hent en liste over alle albums.**
- GET /albums/:id
- Hent info om et specifikt album ved hjælp af dets ID.
- POST /albums
- Opret et nyt album med en ny artist og alle tracks (hvis de ikke allerede eksisterer) med eksempelvis Postman.
- PUT /albums/:id
- Opdater information om et eksisterende album.
- PATCH /albums/:id
- Opdater delvist information om et eksisterende album.
- DELETE - /albums/:id
- Slet et album ved hjælp af dets ID.

### Database

Dette projekt bruger en MySQL-database til at gemme album-, artist- og track-data.
Databaseforbindelsesoplysninger skal konfigureres i .env-filen som beskrevet ovenfor.
Database-tabeller og struktur kan oprettes ved hjælp af migrations og seeder efter behov.

## Krav

- Brug Postman til test af alle routes.
- Node.js-server hosted på Azure.
- MYSQL database hosted på Azure.

# Trin til opsætning

- Klon dette repository:
git clone `https://github.com/din-bruger/projekt-x-backend.git`
- Naviger til projektmappen:
cd projekt-x-backend 
- Installer afhængigheder: `npm install `
- Konfigurer miljøvariabler
Opret en .env-fil i projektroden og konfigurer følgende miljøvariabler:
MYSQL_HOST=musicbase.mysql.database.azure.com
MYSQL_DATABASE=musicbase_db
MYSQL_USER=musicbase_admin
MYSQL_PASSWORD=Kea12345
MYSQL_CERT=true 
- Start serveren: `npm start`

## Eksempelklient

5. Åbn en webbrowser og besøg `https://musicbasebe.azurewebsites.net/` for at bruge applikationen.



- Gennemse artister, albums og tracks.
- Gennemse

## Autor

Dette projekt blev udviklet af Nouhayla Oubelaid, Adam Warfa, Mads Magnus og Yousra Diab
