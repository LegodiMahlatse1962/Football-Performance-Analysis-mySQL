#POWERFUL QUERIES

#Top Goal Scorer
SELECT p.player_name, SUM(ps.goals) AS total_goals
FROM players p
JOIN player_stats ps ON p.players_id = ps.players_id
GROUP BY p.player_name
ORDER BY total_goals DESC;


#Best Player Overall
SELECT p.player_name, SUM(ps.goals + ps.assists) AS contributions
FROM players p
JOIN player_stats ps ON p.players_id = ps.players_id
GROUP BY p.player_name
ORDER BY contributions DESC;


#Consistency
SELECT p.player_name, AVG(ps.goals + ps.assists) AS avg_contribution
FROM players p
JOIN player_stats ps ON p.players_id = ps.players_id
GROUP BY p.player_name
ORDER BY avg_contribution DESC;





