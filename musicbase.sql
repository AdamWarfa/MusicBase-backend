DROP DATABASE IF EXISTS musicbase_db;

CREATE DATABASE musicbase_db;
USE musicbase_db;


CREATE TABLE artists (
id VARCHAR(255) not null primary key,
name VARCHAR(255),
image TEXT,
shortDescription TEXT
);

INSERT INTO artists (id, name, image, shortDescription)
VALUES ('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'Adele', 'https://e3.365dm.com/23/08/768x432/skynews-adele-brit-school_6256656.jpg?20230829093606', 'Grammy-winning British singer-songwriter');

INSERT INTO artists (id, name, image, shortDescription)
VALUES('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', 'Ed Sheeran', 'https://dynamicmedia.livenationinternational.com/Media/j/u/p/c529e4d9-b640-45a9-9ee7-2e55541ffe32.jpg', 'Chart-topping English musician and songwriter');


CREATE TABLE albums (
id VARCHAR(255) not null primary key,
name VARCHAR(255),
yearPublished int,
image TEXT,
artistId VARCHAR(255) not null
);

INSERT INTO albums (id, name, yearPublished, image, artistId)
VALUES ('c78e176f-b8a7-482e-b5d4-f0facf594e60','21', 2011, 'https://ichef.bbci.co.uk/news/466/mcs/media/images/49747000/jpg/_49747558_adele_21_cover_300dpi_251010.jpg','d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e');

INSERT INTO albums (id, name, yearPublished, image, artistId)
VALUES ('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','÷ (Divide)', 2017, 'https://www.soundcph.dk/wp-content/uploads/2017/12/ed-sheeran-divide-vinyl-cd.jpg','b744da0a-9140-4e88-a6c0-976b6a9e2c6a');


CREATE TABLE tracks (
id VARCHAR(255) not null primary key,
name VARCHAR(255)
);

INSERT INTO tracks (id, name) VALUES 
('a1b2c3d4-69c1-4f97-9ac1-d21e1f6c8f5e','Rolling in the Deep'),
('b2c3d4e5-69c1-4f97-9ac1-d21e1f6c8f5e','Rumour Has It'),
('a5224f30-7622-481f-8486-26e8eb40dd1e','Someone like You'),
('a45a5a7b-3c77-4bf7-a724-902451cab17c','Turning Tables'),
('b30ba8b1-52f9-421e-9fa7-447e56cda41b','Don''t You Remember'),
('dfcbc904-a796-427d-bafa-fa0ed04115da','Set Fire to the Rain'),
('df7ba30c-cc89-4286-bbfd-d8aca94aeb16','He Won''t Go'),
('c918fe0e-5fe1-443a-9293-4a710e239ec2','Take It All'),
('33270b2e-efb1-4026-8ca1-8b4ad8c11297','I''ll Be Waiting'),
('6ecf819c-6de4-4f1a-ba93-c03d3a5f71eb','One and Only'),
('caa6f1a3-c9b3-4570-9263-411d40482c83','Lovesong'),
('c3d4e5f6-69c1-4f97-9ac1-d21e1f6c8f5e','Eraser'),
('d4e5f6g7-69c1-4f97-9ac1-d21e1f6c8f5e','Castle on the Hill'),
('c574d0c8-3d35-4898-a40a-6aa3bb0cb417','dive'),
('b3c4d5e6-69c1-4f97-9ac1-d21e1f6c8f5e','Shape of You'),
('c4d5e6f7-69c1-4f97-9ac1-d21e1f6c8f5e','Perfect'),
('2b5e2783-4b5a-4fac-aad0-bb1962d787e7','Galway Girl'),
('432eb3ad-bd80-4cfa-91e5-da3b1abf8fe1','Happier'),
('a7051b03-a763-4ef0-aae8-72608123ab73','New Man'),
('ad75e9f9-a11f-4601-8dbc-8bca958ca932','Hearts Don''t Break Around Here'),
('fd648774-1829-4edb-860f-3ce8659058a4','What Do I Know?'),
('3deb13c5-fd4f-4f42-bdb1-3bf34f3eec80','How Would You Feel (Paean)'),
('2763369c-13aa-42e6-a7ba-b1d8825d21ae','Supermarket Flowers'),
('30a93505-8d94-4cdb-a1a8-94c1618208d6','Barcelona'),
('f863d365-fbdf-4e2f-a330-c934b91ce8ba','Bibia Be Ye Ye'),
('80b90811-2ecf-42c0-9a67-344bacd70af2', 'Nancy Mulligan'),
('88909321-f718-4eed-b1bf-d33a1ce2a94c','Save Myself');

CREATE TABLE album_tracks (
albumId VARCHAR(255) not null,
trackId VARCHAR(255) not null,
primary key(albumId, trackId),
foreign key(albumId) references albums(id),
foreign key(trackId) references tracks(id)
);

INSERT INTO album_tracks (albumId, trackId) VALUES 
('c78e176f-b8a7-482e-b5d4-f0facf594e60','a1b2c3d4-69c1-4f97-9ac1-d21e1f6c8f5e'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','b2c3d4e5-69c1-4f97-9ac1-d21e1f6c8f5e'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','a5224f30-7622-481f-8486-26e8eb40dd1e'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','a45a5a7b-3c77-4bf7-a724-902451cab17c'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','b30ba8b1-52f9-421e-9fa7-447e56cda41b'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','dfcbc904-a796-427d-bafa-fa0ed04115da'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','df7ba30c-cc89-4286-bbfd-d8aca94aeb16'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','c918fe0e-5fe1-443a-9293-4a710e239ec2'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','33270b2e-efb1-4026-8ca1-8b4ad8c11297'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','6ecf819c-6de4-4f1a-ba93-c03d3a5f71eb'),
('c78e176f-b8a7-482e-b5d4-f0facf594e60','caa6f1a3-c9b3-4570-9263-411d40482c83'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','c3d4e5f6-69c1-4f97-9ac1-d21e1f6c8f5e'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','d4e5f6g7-69c1-4f97-9ac1-d21e1f6c8f5e'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','c574d0c8-3d35-4898-a40a-6aa3bb0cb417'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','b3c4d5e6-69c1-4f97-9ac1-d21e1f6c8f5e'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','c4d5e6f7-69c1-4f97-9ac1-d21e1f6c8f5e'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','2b5e2783-4b5a-4fac-aad0-bb1962d787e7'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','432eb3ad-bd80-4cfa-91e5-da3b1abf8fe1'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','a7051b03-a763-4ef0-aae8-72608123ab73'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','ad75e9f9-a11f-4601-8dbc-8bca958ca932'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','fd648774-1829-4edb-860f-3ce8659058a4'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','3deb13c5-fd4f-4f42-bdb1-3bf34f3eec80'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','2763369c-13aa-42e6-a7ba-b1d8825d21ae'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','30a93505-8d94-4cdb-a1a8-94c1618208d6'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','f863d365-fbdf-4e2f-a330-c934b91ce8ba'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','80b90811-2ecf-42c0-9a67-344bacd70af2'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','88909321-f718-4eed-b1bf-d33a1ce2a94c');


CREATE TABLE artist_tracks (
artistId VARCHAR(255) not null,
trackId VARCHAR(255) not null,
primary key(artistId, trackId),
foreign key(artistId) references artists(id),
foreign key(trackId) references tracks(id)
);


INSERT INTO artist_tracks( artistId, trackId) VALUES 
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','a1b2c3d4-69c1-4f97-9ac1-d21e1f6c8f5e'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','b2c3d4e5-69c1-4f97-9ac1-d21e1f6c8f5e'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','a5224f30-7622-481f-8486-26e8eb40dd1e'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','a45a5a7b-3c77-4bf7-a724-902451cab17c'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','b30ba8b1-52f9-421e-9fa7-447e56cda41b'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','dfcbc904-a796-427d-bafa-fa0ed04115da'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','df7ba30c-cc89-4286-bbfd-d8aca94aeb16'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','c918fe0e-5fe1-443a-9293-4a710e239ec2'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','33270b2e-efb1-4026-8ca1-8b4ad8c11297'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','6ecf819c-6de4-4f1a-ba93-c03d3a5f71eb'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','caa6f1a3-c9b3-4570-9263-411d40482c83'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','c3d4e5f6-69c1-4f97-9ac1-d21e1f6c8f5e'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','d4e5f6g7-69c1-4f97-9ac1-d21e1f6c8f5e'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','c574d0c8-3d35-4898-a40a-6aa3bb0cb417'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','b3c4d5e6-69c1-4f97-9ac1-d21e1f6c8f5e'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','c4d5e6f7-69c1-4f97-9ac1-d21e1f6c8f5e'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','2b5e2783-4b5a-4fac-aad0-bb1962d787e7'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','432eb3ad-bd80-4cfa-91e5-da3b1abf8fe1'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','a7051b03-a763-4ef0-aae8-72608123ab73'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','ad75e9f9-a11f-4601-8dbc-8bca958ca932'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','fd648774-1829-4edb-860f-3ce8659058a4'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','3deb13c5-fd4f-4f42-bdb1-3bf34f3eec80'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','2763369c-13aa-42e6-a7ba-b1d8825d21ae'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','30a93505-8d94-4cdb-a1a8-94c1618208d6'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','f863d365-fbdf-4e2f-a330-c934b91ce8ba'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','80b90811-2ecf-42c0-9a67-344bacd70af2'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','88909321-f718-4eed-b1bf-d33a1ce2a94c');

CREATE TABLE album_artists (
albumId VARCHAR(255) not null,
artistId VARCHAR(255) not null,
primary key(albumId, artistId),
foreign key(albumId) references albums(id),
foreign key(artistId) references artists(id)
);

INSERT INTO album_artists (artistId, albumId) VALUES 
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','c78e176f-b8a7-482e-b5d4-f0facf594e60'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','76d1426a-840f-48b9-a0d5-e9aa4cd2280d');