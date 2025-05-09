CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    city TEXT NOT NULL,
    stadium TEXT
);

CREATE TABLE coaches (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    team_id INTEGER REFERENCES teams(id),
    role TEXT NOT NULL
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    position TEXT,
    team_id INTEGER REFERENCES teams(id),
    jersey_number INTEGER
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    home_team_id INTEGER REFERENCES teams(id),
    away_team_id INTEGER REFERENCES teams(id),
    date DATE NOT NULL,
    home_score INTEGER,
    away_score INTEGER
);

CREATE TABLE stats (
    id SERIAL PRIMARY KEY,
    game_id INTEGER REFERENCES games(id),
    player_id INTEGER REFERENCES players(id),
    touchdowns INTEGER DEFAULT 0,
    passing_yards INTEGER DEFAULT 0,
    rushing_yards INTEGER DEFAULT 0
);
