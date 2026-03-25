CREATE DATABASE Football_db;
USE Football_db;

DROP DATABASE Footbal_db;

#CREATE TABLES

#teams table
CREATE TABLE teams 
(
  team_id INT PRIMARY KEY,
  team_name VARCHAR(50),
  coach VARCHAR(50)
);


#players table
CREATE TABLE players
(
  players_id INT PRIMARY KEY,
  player_name VARCHAR(50),
  player_position VARCHAR(20),
  player_age INT,
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES teams(team_id)
);


#matches table
CREATE TABLE matches
( 
  match_id INT PRIMARY KEY,
  team1_id INT,
  team2_id INT,
  match_date DATE,
  FOREIGN KEY (team1_id) REFERENCES teams(team_id),
  FOREIGN KEY (team2_id) REFERENCES teams(team_id)
);


#player stats table
CREATE TABLE player_stats
(
  stat_id INT PRIMARY KEY,
  players_id INT,
  match_id INT,
  goals INT,
  assists INT,
  minutes_played INT,
  FOREIGN KEY (players_id) REFERENCES players(players_id),
  FOREIGN KEY (match_id) REFERENCES matches(match_id)
);


