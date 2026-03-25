SELECT COUNT(*) AS total_players FROM players;

SELECT p.player_name, t.team_name
FROM players p
JOIN teams t ON p.team_id = t.team_id;

SELECT *
FROM players
WHERE player_name IS NULL OR player_position IS NULL;

SELECT * 
FROM player_stats ps
LEFT JOIN players p ON ps.players_id = p.players_id
WHERE p.players_id IS NULL;


SELECT player_name, SUM(goals) AS total_goals
FROM players p
JOIN player_stats ps ON p.players_id = ps.players_id
GROUP BY player_name