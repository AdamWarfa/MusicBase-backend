import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import { getAllArtists, getAllAlbums, getArtistById, getAlbumById, getAllTracks, getTrackById } from "./controllers.js";

const app = express();
const port = process.env.PORT || 5000;
app.use(cors());
app.use(express.json());
dotenv.config();

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.get("/artists", getAllArtists);

app.get("/albums", getAllAlbums);

app.get("/artists/:id", getArtistById);

app.get("/albums/:id", getAlbumById);

app.get("/tracks", getAllTracks);

app.get("/tracks/:id", getTrackById);

app.listen(port, () => {
  console.log(`Server is running on port: ${port}`);
});
