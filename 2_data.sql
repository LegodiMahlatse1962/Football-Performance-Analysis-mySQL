#INSERT DATA

#Insert into teams
INSERT INTO teams VALUES
(1, 'Simo Connect FC', 'Coach Mahlatse'),
(2, 'RESA FC', 'Coach Sandile');


#Insert into players
INSERT INTO players VALUES
(1, 'Akia', 'Forward', 18, 1),
(2, 'Rele', 'Winger', 17, 1),
(3, 'Cairo', 'Right Back', 19, 1),
(4, 'Bongz', 'Midfielder', 20, 1),
(5, 'Moses', 'Center Back', 21, 1);


#Insert into matches
INSERT INTO matches VALUES
(1,1,2, '2026-03-01'),
(2,2,1, '2026-01-10');


#Insert into players_stats 
INSERT INTO player_stats VALUES
(1, 1, 1, 2, 1, 90),
(2, 2, 1, 1, 1, 85),
(3, 3, 1, 0, 1, 90),
(4, 4, 1, 0, 2, 90),
(5, 1, 2, 1, 0, 90),
(6, 2, 2, 0, 1, 90);

