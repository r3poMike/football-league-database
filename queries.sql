-- Total touchdowns per player
SELECT p.name, SUM(s.touchdowns) AS total_tds
FROM stats s
JOIN players p ON s.player_id = p.id
GROUP BY p.name
ORDER BY total_tds DESC;

-- Win/loss record for each team
SELECT
    t.name,
    SUM(CASE WHEN g.home_team_id = t.id AND g.home_score > g.away_score THEN 1
             WHEN g.away_team_id = t.id AND g.away_score > g.home_score THEN 1
             ELSE 0 END) AS wins,
    SUM(CASE WHEN g.home_team_id = t.id AND g.home_score < g.away_score THEN 1
             WHEN g.away_team_id = t.id AND g.away_score < g.home_score THEN 1
             ELSE 0 END) AS losses
FROM teams t
LEFT JOIN games g ON t.id = g.home_team_id OR t.id = g.away_team_id
GROUP BY t.name;

-- Coaches and their teams
SELECT c.name AS coach, t.name AS team
FROM coaches c
JOIN teams t ON c.team_id = t.id;
