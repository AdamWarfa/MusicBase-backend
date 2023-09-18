import { error } from "console";
import db from "./database.js";

function getAllArtists(req, res) {
  const query = "SELECT * FROM artists ORDER BY name;";
  db.query(query, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

function getAllAlbums(req, res) {
  const query = "SELECT * FROM albums ORDER BY name;";
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
  const query = "SELECT * FROM tracks ORDER BY name;";
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

async function deleteArtistById(req, res) {
  console.log(req.params.id);
  const id = req.params.id;
  const query = `
  DELETE FROM artist_tracks WHERE artistId = ?;
  DELETE FROM album_artists WHERE artistId = ?;
  DELETE FROM artists WHERE id = ?;
  `;
  const values = [id, id, id];

  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
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

  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
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

  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
}

async function updateArtistById(req, res) {
  console.log(req.body);
  const { id, name, image, shortDescription } = req.body;
  const query = `UPDATE artists SET name = ?, image = ?, shortDescription = ? WHERE id = ?`;
  const values = [name, image, shortDescription, id];

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
  const { id, name, yearPublished, image } = req.body;
  const query = `UPDATE albums SET name = ?, yearPublished = ?, image = ? WHERE id = ?`;
  const values = [name, yearPublished, image, id];

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
  const { id, name } = req.body;
  const query = `UPDATE tracks SET name = ? WHERE id = ?`;
  const values = [name, id];

  db.query(query, values, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
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
  deleteArtistById,
  deleteAlbumById,
  deleteTrackById,
  updateArtistById,
  updateAlbumById,
  updateTrackById,
};
