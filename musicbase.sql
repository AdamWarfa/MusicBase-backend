DROP DATABASE IF EXISTS musicbase_db;

CREATE DATABASE musicbase_db;
USE musicbase_db;


CREATE TABLE artists (
id VARCHAR(255) not null primary key,
artistName VARCHAR(255),
artistImage TEXT,
shortDescription TEXT
);

INSERT INTO artists (id, artistName, artistImage, shortDescription) VALUES
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'Adele', 'https://e3.365dm.com/23/08/768x432/skynews-adele-brit-school_6256656.jpg?20230829093606', 'Grammy-winning British singer-songwriter'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', 'Ed Sheeran', 'https://dynamicmedia.livenationinternational.com/Media/j/u/p/c529e4d9-b640-45a9-9ee7-2e55541ffe32.jpg', 'Chart-topping English musician and songwriter'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'Dave', 'https://www.thesun.co.uk/wp-content/uploads/2018/02/NINTCHDBPICT000523447570.jpg', 'English rapper. He has gained acclaim for his socially conscious lyricism and wordplay.'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','Central Cee', 'https://soundvenue.com/wp-content/uploads/2022/11/4C4A98740059-920x920.jpg', 'British rapper and songwriter');


CREATE TABLE albums (
id VARCHAR(255) not null primary key,
albumTitle VARCHAR(255),
yearPublished int,
albumCover TEXT
);

INSERT INTO albums (id, albumTitle, yearPublished, albumCover) VALUES
('c78e176f-b8a7-482e-b5d4-f0facf594e60','21', 2011, 'https://ichef.bbci.co.uk/news/466/mcs/media/images/49747000/jpg/_49747558_adele_21_cover_300dpi_251010.jpg'),
('dbed2506-da74-4b93-b476-f1580302feb2', '25', 2015, 'https://upload.wikimedia.org/wikipedia/en/9/96/Adele_-_25_%28Official_Album_Cover%29.png'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','÷ (Divide)', 2017, 'https://www.soundcph.dk/wp-content/uploads/2017/12/ed-sheeran-divide-vinyl-cd.jpg'),
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','÷ (Divide) Deluxe', 2017, 'https://www.soundcph.dk/wp-content/uploads/2017/12/ed-sheeran-divide-vinyl-cd.jpg'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', 'x (Multiply)', 2014, 'https://upload.wikimedia.org/wikipedia/en/a/ad/X_cover.png'),
('b40762f3-e435-4f31-b6bd-e284b5146a93', 'Psychodrama', 2019, 'https://upload.wikimedia.org/wikipedia/en/7/75/Dave_Psychodrama.jpeg'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57', 'We''re All Alone In This Together', 2021, 'https://upload.wikimedia.org/wikipedia/en/3/3d/Dave_-_We%27re_All_Alone_in_This_Together.jpg'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0', 'Wild West', 2021, 'https://images.genius.com/be2209817e6c0e3060a4c0bf89fb3229.1000x1000x1.png'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a', '23', 2022, 'https://images.genius.com/e2e71c4727c43b794627d6f6e31b603a.1000x1000x1.png'),
('3bd28517-c3d3-4578-b99f-f6794ecbcb5b', 'Split Decision', 2023, 'https://grmdaily.com/wp-content/uploads/2023/06/SPLIT-DECISION.jpg'),
('eb088e62-7756-4620-b9af-f3a925b0ade1', 'Daves Greatest Hits', 2023, 'https://m.media-amazon.com/images/M/MV5BMmZmNDEyYzktMDUxZS00Mzg5LWFkYTEtYWRkYjcwNWVjY2YxXkEyXkFqcGdeQXVyNTIyNTMyMA@@._V1_.jpg'),


CREATE TABLE tracks (
id VARCHAR(255) not null primary key,
trackName VARCHAR(255)
);

INSERT INTO tracks (id, trackName) VALUES
-- Adele, 21
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
-- Adele, 25
('1948ef5d-cb29-4a38-8f6c-73bf38492c1a', 'Hello'),
('63a63563-e14e-41e9-877d-53e4823cf088', 'Send My Love (To Your New Lover)'),
('aa97041a-34f1-4427-8b13-68817cd34306', 'I Miss You'),
('ec03d867-96cf-4f39-b547-378b1719c508', 'When We Were Young'),
('89091d59-52c7-43f4-8852-7ad91e9a9871', 'Remedy'),
('3c62057b-d8e1-452c-98c7-daf1c62a8102', 'Water Under the Bridge'),
('a813efce-4ea0-4711-b870-964944f07556', 'River Lea'),
('ccd2d88f-509b-4b62-9432-28bb8ea67e8d', 'Love in the Dark'),
('ce0ccab4-54bf-48aa-b5e9-12f09cd8104e', 'Million Years Ago'),
('e25c225b-6629-4646-897f-9064a99e5a2d', 'All I Ask'),
('f53a5ae1-14ff-4a84-94bb-39d1ec90d21b', 'Sweetest Devotion'),

-- Ed Sheeran, Divide 
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

-- Ed Sheeran, Divide Deluxe 
('92228a65-cd53-4180-be78-dc7836f2ba3d','Barcelona'),
('012c3a4b-b918-4c34-88f4-0817014f853f','Bibia Be Ye Ye'),
('76524ac9-20ea-49b2-872e-887608cea5c6', 'Nancy Mulligan'),
('d2cda4e5-f245-4de6-9cc9-46825c306439','Save Myself'),

-- Ed Sheeran, Multiply
('0fb41cfc-28c8-46ef-b117-8ebe125a1589', 'One'),
('a9282307-4a4f-49a6-b5a2-d85f355d3817', 'I''m a Mess'),
('d799bd21-be4b-44f8-ab80-3140708412fa', 'Sing'),
('a539fa7e-8224-476d-bc41-dc7d2401c945', 'Don''t'),
('75552412-756f-432c-8ca0-f095b33be3de', 'Nina'),
('2d7ccd0a-272e-4dc1-9252-f4ad9f10e6f5', 'Photograph'),
('8be747ba-f1f2-4078-8483-c4e386f67e01', 'Bloodstream'),
('2f8240a7-3fc8-482d-9016-479207d3fd6a', 'Tenerife Sea'),
('845ab914-b1ce-41c4-9f30-432225b08501', 'Runaway'),
('4e19989b-0513-40ac-a0f8-79438043bbfc', 'The Man'),
('835803df-3153-4d4a-8c1e-c59cb5a64662', 'Thinking Out Loud'),
('5955f719-6d5e-49b2-8509-f125c982ff26', 'Afire Love'),
-- Dave, Psychodrama
('87271e11-1808-4daa-ba24-be9c1ae3e739', 'Psycho'),
('0f43ef89-b9df-40d2-a3fb-6d34a04e60ff', 'Streatham'),
('e2f50063-6df2-4794-a3a1-6097500ac592', 'Black'),
('2bccd48a-79fd-4696-9355-e2b364593860','Purple Heart'),
('ea3eb7cb-0a7f-4b21-976a-8f3fc7e757a0', 'Location'),
('e43cf596-61e4-4d93-8852-22674d8a10a7', 'Disaster'),
('1cbba231-5fd8-418b-b0d6-d4db8583fb84', 'Screwface Capital'),
('503078bc-77ba-4790-9c29-99da533a450b', 'Environment'),
('c4b61bc1-d321-46c4-8578-896ae18edfbd', 'Lesley'),
('b8da0a1d-8d09-4369-8007-3e373f54697a', 'Voices'),
('118a25fa-3daa-4574-9730-6097e3c2dc34', 'Drama'),

-- Dave, We're All Alone In This Together
('a481d7ba-eaaa-42cc-bc78-913869c613e0','We''re All Alone'),
('9cca914d-21bc-4467-aeb9-745e2ee797de','Verdansk'),
('76abce77-4e3c-47af-9845-4d59082944ce','Clash'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0', 'In The Fire'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a', 'Three Rivers'),
('3bd28517-c3d3-4578-b99f-f6794ecbcb5b', 'System'),
('10617137-f427-49f1-821c-3d2af31200ed', 'Lazarus'),
('a3ef208f-99f2-4036-8077-ef76374342b9','Law Of Attraction'),
('4e6f96ac-4eb1-41a4-8dbd-b642da19c7b4','Both Side Of A Smile'),
('619f66dc-5dfa-4c44-886d-c5449a5402aa','Twenty To One'),
('f047ba54-1990-436c-a7a8-0945952c3eea','Heart Attack'),
('5849ed8a-de4e-496f-a148-eedb17f45b88', 'Survivors''s Guilt'),

-- Central Cee, 23
('552d2095-c2df-4407-868e-31f90fe060d6', 'Khabib'),
('0eaf5aa9-5e0c-4272-b6da-be21f8b267b4', 'Straight Back to It'),
('a83968b2-528d-4dcb-aedb-29ea5465f81b', 'Ungrateful'),
('38213845-acd5-4b64-8266-cba2d8462342', 'Bunda'),
('8fd65b5c-afbd-41e1-8936-62101a8390ea', 'Retail Therapy'),
('23472b10-d847-4dc3-b1ec-491addc13399', 'Eurovision'),
('a331646b-b52c-42a2-b9c0-7bfc1c73d1fa', 'Cold Shoulder'),
('c69666e2-d248-4e85-9410-6f1b505ff6de', 'Mrs'),
('69379210-1f28-4746-b7d4-1cb1ddfa98bc', 'Air Bnb'),
('95ad9eea-c3de-45fa-b07e-f45fb443c6b5', 'No Pain'),
('87cf9945-1199-4310-a394-597c16fe6457', 'Terminal 5'),
('fbaf6693-5216-4ef0-8f3a-b287653f9367', 'Obsessed With You'),
('3a02580d-9af8-48b4-8798-5f2f7f2071ed', '8 Ball'),
('81748286-be71-4275-8595-b82417ffc771', 'Lil Bro'),
('bf1caa67-d5bd-434c-87cf-dfeed5b08139', 'End of the Beginning'),

-- Central Cee, Wild West
('a2345178-42b8-4df0-8ac6-5d051b15b03e','6 For 6'),
('1b52f92c-44b4-435d-99cc-4e5cc5d8d8f2', 'Fraud'),
('f7276fa9-f73c-4c87-8812-0885a1c2c7bb', 'Pinging (6 Figures)'),
('0c4eda56-9af5-43c8-a9ab-2f96e418f111', 'The Bag'),
('b7e6cb2e-c42a-4af9-9410-5d55b7f0d030', 'Day In The Life'),
('826c5fb5-57e1-48a5-9904-503df62a2395', 'Dun Deal'),
('f1c6472b-d15c-47b8-9295-7eaa7ed77e1b', 'Commintment Issues'),
('f16f1823-a606-40dc-b8fa-0b7b28a094f6', 'Sex Money Drugs'),
('7fbccdb0-dee2-4b11-aef8-8c6c070623f5', 'Ruby'),
('4d829324-aa79-489b-aace-53530c595895', 'Hate it Or Luv It'),
('add377ad-1ad7-43f3-8fca-b41004430534', 'Xmas Eve'),
('0ad25b60-7594-4aa3-b7b1-ffde9b1e5a03', 'Loading'),
('e66d85cb-2a3c-4d61-a612-23df477a1838', 'Tension'),
('8fd65b5c-afbd-41e1-8936-62101a8390ei', 'Gangbiz'),

-- Central Cee & Dave, Split Decision
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', 'Trojan Horse'),
('3455eddf-62d7-40cc-925f-14a78b361dae', 'Sprinter'),
('e7323ee2-d0c6-47cd-bc98-2e8c6d06d647', 'Our 25th Birthday'),
('34c87bf6-36bf-4ac0-8c8a-80b2bf51e424', 'UK Rap');

CREATE TABLE album_tracks (
albumId VARCHAR(255) not null,
trackId VARCHAR(255) not null,
primary key(albumId, trackId),
foreign key(albumId) references albums(id) ON DELETE CASCADE,
foreign key(trackId) references tracks(id) ON DELETE CASCADE
);

INSERT INTO album_tracks (albumId, trackId) VALUES
-- Adele, 21
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
-- Adele, 25
('dbed2506-da74-4b93-b476-f1580302feb2', '1948ef5d-cb29-4a38-8f6c-73bf38492c1a'),
('dbed2506-da74-4b93-b476-f1580302feb2', '63a63563-e14e-41e9-877d-53e4823cf088'),
('dbed2506-da74-4b93-b476-f1580302feb2', 'aa97041a-34f1-4427-8b13-68817cd34306'),
('dbed2506-da74-4b93-b476-f1580302feb2', 'ec03d867-96cf-4f39-b547-378b1719c508'),
('dbed2506-da74-4b93-b476-f1580302feb2', '89091d59-52c7-43f4-8852-7ad91e9a9871'),
('dbed2506-da74-4b93-b476-f1580302feb2', '3c62057b-d8e1-452c-98c7-daf1c62a8102'),
('dbed2506-da74-4b93-b476-f1580302feb2', 'a813efce-4ea0-4711-b870-964944f07556'),
('dbed2506-da74-4b93-b476-f1580302feb2', 'ccd2d88f-509b-4b62-9432-28bb8ea67e8d'),
('dbed2506-da74-4b93-b476-f1580302feb2', 'ce0ccab4-54bf-48aa-b5e9-12f09cd8104e'),
('dbed2506-da74-4b93-b476-f1580302feb2', 'e25c225b-6629-4646-897f-9064a99e5a2d'),
('dbed2506-da74-4b93-b476-f1580302feb2', 'f53a5ae1-14ff-4a84-94bb-39d1ec90d21b'),
-- Ed Sheeran, Divide
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','c3d4e5f6-69c1-4f97-9ac1-d21e1f6c8f5e'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','d4e5f6g7-69c1-4f97-9ac1-d21e1f6c8f5e'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','c574d0c8-3d35-4898-a40a-6aa3bb0cb417'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','b3c4d5e6-69c1-4f97-9ac1-d21e1f6c8f5e'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','c4d5e6f7-69c1-4f97-9ac1-d21e1f6c8f5e'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','2b5e2783-4b5a-4fac-aad0-bb1962d787e7'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','432eb3ad-bd80-4cfa-91e5-da3b1abf8fe1'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','a7051b03-a763-4ef0-aae8-72608123ab73'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','ad75e9f9-a11f-4601-8dbc-8bca958ca932'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','fd648774-1829-4edb-860f-3ce8659058a4'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','3deb13c5-fd4f-4f42-bdb1-3bf34f3eec80'),
('33fe38f3-a92d-453d-84c5-6d7ccc897ffe','2763369c-13aa-42e6-a7ba-b1d8825d21ae'),
-- Ed Sheeran, Divide (Deluxe)
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
('76d1426a-840f-48b9-a0d5-e9aa4cd2280d','88909321-f718-4eed-b1bf-d33a1ce2a94c'),
-- Ed Sheeran, Multiply
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '0fb41cfc-28c8-46ef-b117-8ebe125a1589'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', 'a9282307-4a4f-49a6-b5a2-d85f355d3817'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', 'd799bd21-be4b-44f8-ab80-3140708412fa'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', 'a539fa7e-8224-476d-bc41-dc7d2401c945'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '75552412-756f-432c-8ca0-f095b33be3de'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '2d7ccd0a-272e-4dc1-9252-f4ad9f10e6f5'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '8be747ba-f1f2-4078-8483-c4e386f67e01'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '2f8240a7-3fc8-482d-9016-479207d3fd6a'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '845ab914-b1ce-41c4-9f30-432225b08501'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '4e19989b-0513-40ac-a0f8-79438043bbfc'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '835803df-3153-4d4a-8c1e-c59cb5a64662'),
('2e7ad4e0-865a-49db-ac98-9031095a4b7c', '5955f719-6d5e-49b2-8509-f125c982ff26'),
-- Dave, Psychodrama
('b40762f3-e435-4f31-b6bd-e284b5146a93','87271e11-1808-4daa-ba24-be9c1ae3e739'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','0f43ef89-b9df-40d2-a3fb-6d34a04e60ff'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','e2f50063-6df2-4794-a3a1-6097500ac592'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','2bccd48a-79fd-4696-9355-e2b364593860'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','ea3eb7cb-0a7f-4b21-976a-8f3fc7e757a0'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','e43cf596-61e4-4d93-8852-22674d8a10a7'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','1cbba231-5fd8-418b-b0d6-d4db8583fb84'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','503078bc-77ba-4790-9c29-99da533a450b'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','c4b61bc1-d321-46c4-8578-896ae18edfbd'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','b8da0a1d-8d09-4369-8007-3e373f54697a'),
('b40762f3-e435-4f31-b6bd-e284b5146a93','118a25fa-3daa-4574-9730-6097e3c2dc34'),

-- Dave, We're All Alone In This Together
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','a481d7ba-eaaa-42cc-bc78-913869c613e0'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','9cca914d-21bc-4467-aeb9-745e2ee797de'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','76abce77-4e3c-47af-9845-4d59082944ce'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','a80e9174-61eb-444e-b9e5-ba7e483185b0'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','e4f7186f-667e-4b0b-b7b9-995812a89f6a'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','3bd28517-c3d3-4578-b99f-f6794ecbcb5b'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','10617137-f427-49f1-821c-3d2af31200ed'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','a3ef208f-99f2-4036-8077-ef76374342b9'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','4e6f96ac-4eb1-41a4-8dbd-b642da19c7b4'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','619f66dc-5dfa-4c44-886d-c5449a5402aa'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','f047ba54-1990-436c-a7a8-0945952c3eea'),
('ac3d0ae1-6dab-4492-97b2-b81621f22e57','5849ed8a-de4e-496f-a148-eedb17f45b88'),

-- Central Cee, 23
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','552d2095-c2df-4407-868e-31f90fe060d6'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','0eaf5aa9-5e0c-4272-b6da-be21f8b267b4'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','a83968b2-528d-4dcb-aedb-29ea5465f81b'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','38213845-acd5-4b64-8266-cba2d8462342'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','8fd65b5c-afbd-41e1-8936-62101a8390ea'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','23472b10-d847-4dc3-b1ec-491addc13399'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','a331646b-b52c-42a2-b9c0-7bfc1c73d1fa'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','c69666e2-d248-4e85-9410-6f1b505ff6de'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','69379210-1f28-4746-b7d4-1cb1ddfa98bc'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','87cf9945-1199-4310-a394-597c16fe6457'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','fbaf6693-5216-4ef0-8f3a-b287653f9367'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','3a02580d-9af8-48b4-8798-5f2f7f2071ed'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','81748286-be71-4275-8595-b82417ffc771'),
('e4f7186f-667e-4b0b-b7b9-995812a89f6a','bf1caa67-d5bd-434c-87cf-dfeed5b08139'),


-- Central Cee, Wild West
('a80e9174-61eb-444e-b9e5-ba7e483185b0','a2345178-42b8-4df0-8ac6-5d051b15b03e'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','1b52f92c-44b4-435d-99cc-4e5cc5d8d8f2'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','f7276fa9-f73c-4c87-8812-0885a1c2c7bb'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','0c4eda56-9af5-43c8-a9ab-2f96e418f111'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','b7e6cb2e-c42a-4af9-9410-5d55b7f0d030'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','826c5fb5-57e1-48a5-9904-503df62a2395'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','f1c6472b-d15c-47b8-9295-7eaa7ed77e1b'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','f16f1823-a606-40dc-b8fa-0b7b28a094f6'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','7fbccdb0-dee2-4b11-aef8-8c6c070623f5'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','4d829324-aa79-489b-aace-53530c595895'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','add377ad-1ad7-43f3-8fca-b41004430534'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','0ad25b60-7594-4aa3-b7b1-ffde9b1e5a03'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','e66d85cb-2a3c-4d61-a612-23df477a1838'),
('a80e9174-61eb-444e-b9e5-ba7e483185b0','8fd65b5c-afbd-41e1-8936-62101a8390ei'),

-- Central Cee & Dave, Split Decision
('3bd28517-c3d3-4578-b99f-f6794ecbcb5b', '2e7ad4e0-865a-49db-ac98-9031095a4b7c'),
('3bd28517-c3d3-4578-b99f-f6794ecbcb5b', '3455eddf-62d7-40cc-925f-14a78b361dae'),
('3bd28517-c3d3-4578-b99f-f6794ecbcb5b', 'e7323ee2-d0c6-47cd-bc98-2e8c6d06d647'),
('3bd28517-c3d3-4578-b99f-f6794ecbcb5b', '34c87bf6-36bf-4ac0-8c8a-80b2bf51e424'),

-- Daves Greatest Hits
('eb088e62-7756-4620-b9af-f3a925b0ade1','619f66dc-5dfa-4c44-886d-c5449a5402aa'),
('eb088e62-7756-4620-b9af-f3a925b0ade1','f047ba54-1990-436c-a7a8-0945952c3eea'),
('eb088e62-7756-4620-b9af-f3a925b0ade1','5849ed8a-de4e-496f-a148-eedb17f45b88'),
('eb088e62-7756-4620-b9af-f3a925b0ade1','2bccd48a-79fd-4696-9355-e2b364593860'),
('eb088e62-7756-4620-b9af-f3a925b0ade1','ea3eb7cb-0a7f-4b21-976a-8f3fc7e757a0'),
('eb088e62-7756-4620-b9af-f3a925b0ade1','e43cf596-61e4-4d93-8852-22674d8a10a7');

CREATE TABLE artist_tracks (
artistId VARCHAR(255) not null,
trackId VARCHAR(255) not null,
primary key(artistId, trackId),
foreign key(artistId) references artists(id) ON DELETE CASCADE,
foreign key(trackId) references tracks(id) ON DELETE CASCADE
);


INSERT INTO artist_tracks( artistId, trackId) VALUES
-- Adele 21
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
-- Adele 25
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', '1948ef5d-cb29-4a38-8f6c-73bf38492c1a'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', '63a63563-e14e-41e9-877d-53e4823cf088'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'aa97041a-34f1-4427-8b13-68817cd34306'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'ec03d867-96cf-4f39-b547-378b1719c508'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', '89091d59-52c7-43f4-8852-7ad91e9a9871'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', '3c62057b-d8e1-452c-98c7-daf1c62a8102'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'a813efce-4ea0-4711-b870-964944f07556'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'ccd2d88f-509b-4b62-9432-28bb8ea67e8d'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'ce0ccab4-54bf-48aa-b5e9-12f09cd8104e'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'e25c225b-6629-4646-897f-9064a99e5a2d'),
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e', 'f53a5ae1-14ff-4a84-94bb-39d1ec90d21b'),
-- Ed Sheeran, Multiply
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '0fb41cfc-28c8-46ef-b117-8ebe125a1589'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', 'a9282307-4a4f-49a6-b5a2-d85f355d3817'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', 'd799bd21-be4b-44f8-ab80-3140708412fa'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', 'a539fa7e-8224-476d-bc41-dc7d2401c945'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '75552412-756f-432c-8ca0-f095b33be3de'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '2d7ccd0a-272e-4dc1-9252-f4ad9f10e6f5'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '8be747ba-f1f2-4078-8483-c4e386f67e01'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '2f8240a7-3fc8-482d-9016-479207d3fd6a'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '845ab914-b1ce-41c4-9f30-432225b08501'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '4e19989b-0513-40ac-a0f8-79438043bbfc'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '835803df-3153-4d4a-8c1e-c59cb5a64662'),
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a', '5955f719-6d5e-49b2-8509-f125c982ff26'),
-- Ed Sheeran, Divide
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
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','88909321-f718-4eed-b1bf-d33a1ce2a94c'),
-- Central Cee, Split Decisions
('f1f1c933-8007-4294-bfbe-25fddee181d0', '2e7ad4e0-865a-49db-ac98-9031095a4b7c'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '3455eddf-62d7-40cc-925f-14a78b361dae'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', 'e7323ee2-d0c6-47cd-bc98-2e8c6d06d647'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '34c87bf6-36bf-4ac0-8c8a-80b2bf51e424'),
-- Central Cee, 23
('f1f1c933-8007-4294-bfbe-25fddee181d0', '552d2095-c2df-4407-868e-31f90fe060d6'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '0eaf5aa9-5e0c-4272-b6da-be21f8b267b4'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', 'a83968b2-528d-4dcb-aedb-29ea5465f81b'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '38213845-acd5-4b64-8266-cba2d8462342'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '8fd65b5c-afbd-41e1-8936-62101a8390ea'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '23472b10-d847-4dc3-b1ec-491addc13399'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', 'a331646b-b52c-42a2-b9c0-7bfc1c73d1fa'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', 'c69666e2-d248-4e85-9410-6f1b505ff6de'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '69379210-1f28-4746-b7d4-1cb1ddfa98bc'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '95ad9eea-c3de-45fa-b07e-f45fb443c6b5'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '87cf9945-1199-4310-a394-597c16fe6457'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', 'fbaf6693-5216-4ef0-8f3a-b287653f9367'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '3a02580d-9af8-48b4-8798-5f2f7f2071ed'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', '81748286-be71-4275-8595-b82417ffc771'),
('f1f1c933-8007-4294-bfbe-25fddee181d0', 'bf1caa67-d5bd-434c-87cf-dfeed5b08139'),
-- Central Cee, Wild West
('f1f1c933-8007-4294-bfbe-25fddee181d0','a2345178-42b8-4df0-8ac6-5d051b15b03e'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','1b52f92c-44b4-435d-99cc-4e5cc5d8d8f2'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','f7276fa9-f73c-4c87-8812-0885a1c2c7bb'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','0c4eda56-9af5-43c8-a9ab-2f96e418f111'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','b7e6cb2e-c42a-4af9-9410-5d55b7f0d030'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','826c5fb5-57e1-48a5-9904-503df62a2395'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','f1c6472b-d15c-47b8-9295-7eaa7ed77e1b'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','f16f1823-a606-40dc-b8fa-0b7b28a094f6'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','7fbccdb0-dee2-4b11-aef8-8c6c070623f5'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','4d829324-aa79-489b-aace-53530c595895'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','add377ad-1ad7-43f3-8fca-b41004430534'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','0ad25b60-7594-4aa3-b7b1-ffde9b1e5a03'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','e66d85cb-2a3c-4d61-a612-23df477a1838'),
('f1f1c933-8007-4294-bfbe-25fddee181d0','8fd65b5c-afbd-41e1-8936-62101a8390ei'),

-- Dave, Split Decisions
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '2e7ad4e0-865a-49db-ac98-9031095a4b7c'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '3455eddf-62d7-40cc-925f-14a78b361dae'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'e7323ee2-d0c6-47cd-bc98-2e8c6d06d647'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '34c87bf6-36bf-4ac0-8c8a-80b2bf51e424'),

-- Dave, Psychodrama
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','87271e11-1808-4daa-ba24-be9c1ae3e739'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','0f43ef89-b9df-40d2-a3fb-6d34a04e60ff'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','e2f50063-6df2-4794-a3a1-6097500ac592'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','2bccd48a-79fd-4696-9355-e2b364593860'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','ea3eb7cb-0a7f-4b21-976a-8f3fc7e757a0'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','e43cf596-61e4-4d93-8852-22674d8a10a7'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','1cbba231-5fd8-418b-b0d6-d4db8583fb84'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','503078bc-77ba-4790-9c29-99da533a450b'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','c4b61bc1-d321-46c4-8578-896ae18edfbd'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','b8da0a1d-8d09-4369-8007-3e373f54697a'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','118a25fa-3daa-4574-9730-6097e3c2dc34'),

-- Dave, We are all in this togehter
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'a481d7ba-eaaa-42cc-bc78-913869c613e0'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '9cca914d-21bc-4467-aeb9-745e2ee797de'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '76abce77-4e3c-47af-9845-4d59082944ce'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'a80e9174-61eb-444e-b9e5-ba7e483185b0'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'e4f7186f-667e-4b0b-b7b9-995812a89f6a'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '3bd28517-c3d3-4578-b99f-f6794ecbcb5b'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '10617137-f427-49f1-821c-3d2af31200ed'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'a3ef208f-99f2-4036-8077-ef76374342b9'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '4e6f96ac-4eb1-41a4-8dbd-b642da19c7b4'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '619f66dc-5dfa-4c44-886d-c5449a5402aa'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'f047ba54-1990-436c-a7a8-0945952c3eea'),
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '5849ed8a-de4e-496f-a148-eedb17f45b88');


CREATE TABLE album_artists (
albumId VARCHAR(255) not null,
artistId VARCHAR(255) not null,
primary key(albumId, artistId),
foreign key(albumId) references albums(id) ON DELETE CASCADE,
foreign key(artistId) references artists(id) ON DELETE CASCADE
);

INSERT INTO album_artists (artistId, albumId) VALUES
-- Adele, 21
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','c78e176f-b8a7-482e-b5d4-f0facf594e60'),
-- Adele, 25
('d756b6d4-69c1-4f97-9ac1-d21e1f6c8f5e','dbed2506-da74-4b93-b476-f1580302feb2'),
-- Ed Sheeran, Divide
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','33fe38f3-a92d-453d-84c5-6d7ccc897ffe'),
-- Ed Sheeran, Divide (deluxe)
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','76d1426a-840f-48b9-a0d5-e9aa4cd2280d'),
-- Ed Sheeran, Multiply
('b744da0a-9140-4e88-a6c0-976b6a9e2c6a','2e7ad4e0-865a-49db-ac98-9031095a4b7c'),
-- Split Decision, Central Cee
('f1f1c933-8007-4294-bfbe-25fddee181d0', '3bd28517-c3d3-4578-b99f-f6794ecbcb5b'),
-- Split Decision, Dave
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', '3bd28517-c3d3-4578-b99f-f6794ecbcb5b'),

-- Dave Psychodrama
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'b40762f3-e435-4f31-b6bd-e284b5146a93'),
-- Dave, We are alone in the together
('ec14f6bb-98e5-45a6-9980-92168c95dcb5', 'ac3d0ae1-6dab-4492-97b2-b81621f22e57'),
-- Central Cee, 23
('f1f1c933-8007-4294-bfbe-25fddee181d0', 'e4f7186f-667e-4b0b-b7b9-995812a89f6a'),
-- Central Cee, Wild West
('f1f1c933-8007-4294-bfbe-25fddee181d0','a80e9174-61eb-444e-b9e5-ba7e483185b0'),
-- Daves Greatest Hits 
('ec14f6bb-98e5-45a6-9980-92168c95dcb5','eb088e62-7756-4620-b9af-f3a925b0ade1');