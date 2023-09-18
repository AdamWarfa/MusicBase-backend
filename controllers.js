import { error } from "console";
import db from "./database.js";
import { v4 as uuidv4 } from "uuid";

function getAllArtists(req, res) {
  const query = "SELECT * FROM artists ORDER BY artistName;";
  db.query(query, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

function getAllAlbums(req, res) {
  const query = "SELECT * FROM albums ORDER BY albumTitle;";
  db.query(query, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

function getArtistById(req, res) {
  const id = req.params.id;
  const query = "SELECT * FROM artists WHERE id = ?;";
  const values = [id];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results[0]);
    }
  });
}

async function getAlbumById(req, res) {
  const id = req.params.id;
  const query = "SELECT * FROM albums WHERE id = ?;";
  const values = [id];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results[0]);
    }
  });
}

async function getAllTracks(req, res) {
  const query = "SELECT * FROM tracks ORDER BY trackName;";
  db.query(query, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

(req, res) => {
  res.send("Hello World!");
};

async function getTrackById(req, res) {
  const id = req.params.id;
  const query = "SELECT * FROM tracks WHERE id = ?;";
  const values = [id];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results[0]);
    }
  });
}

async function getAlbumsByArtistId(req, res) {
  const id = req.params.id;
  const query = `
  SELECT *
  FROM album_artists 
  JOIN albums ON album_artists.albumId = albums.id
  JOIN artists ON album_artists.artistId = artists.id
  WHERE artistId = ?;
  `;
  const values = [id];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

async function getTracksByAlbumId(req, res) {
  const id = req.params.id;
  const query = `
  SELECT *
  FROM album_tracks
  JOIN albums ON album_tracks.albumId = albums.id
  JOIN tracks ON album_tracks.trackId = tracks.id
  WHERE albumId = ?;
  `;
  const values = [id];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

async function getTracksByArtistId(req, res) {
  const id = req.params.id;
  const query = `
  SELECT *
  FROM artist_tracks
  JOIN artists ON artist_tracks.artistId = artists.id
  JOIN tracks ON artist_tracks.trackId = tracks.id
  WHERE artistId = ?;
  `;
  const values = [id];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

async function postArtist(req, res) {
  const artist = req.body;
  const artistId = uuidv4();
  const query = ` 
  INSERT INTO artists (artistName, artistImage, shortDescription, id)
  VALUES (?, ?, ?, ?);
  `;
  const values = [artist.artistName, artist.artistImage, artist.shortDescription, artistId];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      console.log("Artist added");
      res.json(results);
    }
  });
}

async function postTrack(req, res) {
  const track = req.body;
  const trackId = uuidv4();
  const query = `
  INSERT INTO tracks (trackName, id)
  VALUES (?, ?);
  INSERT INTO artist_tracks (artistId, trackId)
  VALUES (?, ?);
  `;

  const values = [track.trackName, trackId, track.artistId, trackId];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      console.log("Track added");
      res.json(results);
    }
  });
}

async function postAlbum(req, res) {
  const album = req.body;
  const albumId = uuidv4();
  const query = `
  INSERT INTO albums (albumTitle, yearPublished, albumCover, id)
  VALUES (?, ?, ?, ?);
  INSERT INTO album_artists (albumId, artistId)
  VALUES (?, ?);
  INSERT INTO album_tracks (albumId, trackId)
  VALUES (?, ?);
  `;
  const values = [album.albumTitle, album.yearPublished, album.albumCover, albumId, albumId, album.artistId, albumId, album.trackId];
  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      console.log("Album added");
      res.json(results);
    }
  });
}

async function updateArtistById(req, res) {
  console.log(req.body);
  const { id, artistName, artistImage, shortDescription } = req.body;
  const query = `UPDATE artists SET artistName = ?, artistImage = ?, shortDescription = ? WHERE id = ?`;
  const values = [artistName, artistImage, shortDescription, id];

  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

async function updateAlbumById(req, res) {
  console.log(req.body);
  const { id, albumName, yearPublished, albumImage } = req.body;
  const query = `UPDATE albums SET name = ?, yearPublished = ?, albumImage = ? WHERE id = ?`;
  const values = [albumName, yearPublished, albumImage, id];

  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}
async function updateTrackById(req, res) {
  console.log(req.body);
  const { id, trackName } = req.body;
  const query = `UPDATE tracks SET trackName = ? WHERE id = ?`;
  const values = [trackName, id];

  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

async function deleteArtistById(req, res) {
  console.log(req.params.id);
  const id = req.params.id;
  const query = `
  DELETE FROM artist_tracks WHERE artistId = ?;
  DELETE FROM album_artists WHERE artistId = ?;
  DELETE FROM artists WHERE id = ?;
  `;
  const values = [id, id, id];
}

async function deleteAlbumById(req, res) {
  console.log(req.params.id);
  const id = req.params.id;
  const query = `
  DELETE FROM album_tracks WHERE albumId = ?;
  DELETE FROM album_artists WHERE albumId = ?;
  DELETE FROM albums WHERE id = ?;
  `;
  const values = [id, id, id];
}

async function deleteTrackById(req, res) {
  console.log(req.params.id);
  const id = req.params.id;
  const query = `
  DELETE FROM album_tracks WHERE trackId = ?;
  DELETE FROM artist_tracks WHERE trackId = ?;
  DELETE FROM tracks WHERE id = ?;
  `;
  const values = [id, id, id];
}

export {
  getAllArtists,
  getAllAlbums,
  getArtistById,
  getAlbumById,
  getAllTracks,
  getTrackById,
  getAlbumsByArtistId,
  getTracksByAlbumId,
  getTracksByArtistId,
  postArtist,
  postTrack,
  postAlbum,
  deleteArtistById,
  deleteAlbumById,
  deleteTrackById,
  updateArtistById,
  updateAlbumById,
  updateTrackById,
};
