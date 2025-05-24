-- Active: 1747635927694@@localhost@5432@conservation_db@public
CREATE DATABASE conservation_db;

-- Create the rangers table
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    ranger_name VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL
);


-- Create the species table
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(150) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(50) DEFAULT 'Unknown'
);

-- Create the sightings table
CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    location VARCHAR(100) NOT NULL,
    sighting_time TIMESTAMP NOT NULL,
    notes TEXT
);


SELECT * FROM rangers;
SELECT * FROM species;
SELECT * FROM sightings;