-- Teams
INSERT INTO teams (name, city, stadium) VALUES
('Lions', 'Detroit', 'Ford Field'),
('Giants', 'New York', 'MetLife Stadium'),
('Patriots', 'New England', 'Gillette Stadium');

-- Coaches
INSERT INTO coaches (name, team_id, role) VALUES
('Dan Campbell', 1, 'Head Coach'),
('Brian Daboll', 2, 'Head Coach'),
('Bill Belichick', 3, 'Head Coach');

-- Players
INSERT INTO players (name, position, team_id, jersey_number) VALUES
('Jared Goff', 'QB', 1, 16),
('Saquon Barkley', 'RB', 2, 26),
('Mac Jones', 'QB', 3, 10);

-- Games
INSERT INTO games (home_team_id, away_team_id, date, home_score, away_score) VALUES
(1, 2, '2024-10-01', 24, 20),
(3, 1, '2024-10-15', 17, 31);

-- Stats
INSERT INTO stats (game_id, player_id, touchdowns, passing_yards, rushing_yards) VALUES
(1, 1, 2, 250, 20),
(1, 2, 1, 0, 85),
(2, 3, 1, 210, 0);
