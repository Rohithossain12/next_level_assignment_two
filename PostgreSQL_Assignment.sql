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
    "location" VARCHAR(100) NOT NULL,
    sighting_time TIMESTAMP NOT NULL,
    notes TEXT
);


DROP TABLE sightings;


SELECT * FROM rangers;
SELECT * FROM species;
SELECT * FROM sightings;


-- Data Insert


-- rangers
INSERT INTO rangers (ranger_name ,region) VALUES
('Alice Green', 'Northern Hills'),
('Bob White', 'River Delta'),
('Carol King', 'Mountain Range'),
('Derek Fox', 'Coastal Plains'),
('Esha Ray', 'Deep Jungle');

-- species
INSERT INTO species(common_name,scientific_name,discovery_date,conservation_status) VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered'),
('Golden Langur', 'Trachypithecus geei', '1953-01-01', 'Rare');


-- sightings
INSERT INTO sightings (ranger_id, species_id, "location", sighting_time, notes) VALUES
(1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(2, 1, 'Snowfall Pass', '2024-05-18 18:30:00', NULL),
(4, 5, 'Coastal Cliff', '2024-05-20 06:15:00', 'Rare sighting reported'),
(5, 4, 'Deep Jungle Camp', '2024-05-22 14:00:00', 'Group of elephants observed');
