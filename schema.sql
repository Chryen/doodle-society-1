DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS friends;
DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS doodles;
DROP TABLE IF EXISTS comments;

CREATE TABLE users (
  id serial PRIMARY KEY,
  googleId VARCHAR (50) UNIQUE NOT NULL,
  email VARCHAR (50) NOT NULL,
  name VARCHAR (50) NOT NULL,
  imageUrl VARCHAR (255) NOT NULL,
  accessToken VARCHAR (255) NOT NULL
);

CREATE TABLE friends (
  id serial PRIMARY KEY,
  user_id int NOT NULL,
  friend_id int NOT NULL
);

CREATE TABLE images (
  id serial PRIMARY KEY,
  url VARCHAR (255) NOT NULL,
  uploader_id int NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE doodles (
  id serial PRIMARY KEY,
  url TEXT NOT NULL,
  caption VARCHAR(255),
  original_id int NOT NULL,
  doodler_id int NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comments (
  id serial PRIMARY KEY,
  comment VARCHAR(500),
  doodle_id int NOT NULL,
  user_id int NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)