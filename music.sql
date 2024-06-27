CREATE DATABASE music;

USE music;

CREATE TABLE artist (
artist_id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(100) NOT NULL
);

CREATE TABLE genre (
genre_id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(100) NOT NULL
);

CREATE TABLE albums (
album_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
genre_id INT NOT NULL,
FOREIGN KEY (genre_id) REFERENCES genre(genre_id),
release_year INT,
total_tracks INT
);

ALTER TABLE albums
ADD duration VARCHAR (100);