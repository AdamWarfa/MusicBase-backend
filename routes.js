import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import {
  getAllArtists,
  getAllAlbums,
  getArtistById,
  getAlbumById,
  getAllTracks,
  getTrackById,
  getAlbumsByArtistId,
  getTracksByAlbumId,
  getTracksByArtistId,
  deleteArtistById,
  deleteAlbumById,
  deleteTrackById,
  updateArtistById,
  updateAlbumById,
  updateTrackById,
  postTrack,
  postArtist,
  postAlbum,
} from "./controllers.js";

const app = express();
const port = process.env.PORT || 5001;
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

app.get("/artists/:id/albums", getAlbumsByArtistId);

app.get("/albums/:id/tracks", getTracksByAlbumId);

app.get("/artists/:id/tracks", getTracksByArtistId);

app.post("/artists", postArtist);

app.post("/tracks", postTrack);

app.post("/albums", postAlbum);

app.put("/artists/:id", updateArtistById);

app.put("/albums/:id", updateAlbumById);

app.put("/tracks/:id", updateTrackById);

app.delete("/artists/:id", deleteArtistById);

app.delete("/albums/:id", deleteAlbumById);

app.delete("/tracks/:id", deleteTrackById);

app.listen(port, () => {
  console.log(`Server is running on port: ${port}`);
});
