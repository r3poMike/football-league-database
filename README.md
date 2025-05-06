# 🏈 Football League Database

This project uses PostgreSQL to model a simplified American football league database. It includes teams, players, coaches, games, and player statistics. It demonstrates SQL relationships, key constraints, and query logic.

## 📂 Structure

- `schema.sql` — Defines the tables and relationships
- `seed.sql` — Populates sample football data
- `queries.sql` — Runs sample analysis and reporting queries
- `ERD.png` — Diagram showing table relationships

## 📊 Tables

- `teams`
- `players`
- `coaches`
- `games`
- `stats`

## 📈 Sample Insights

- Top players by touchdowns
- Win/loss record for each team
- Coach assignments per team

## 🛠️ How to Use

1. Clone the repo
2. Start PostgreSQL: `psql -U postgres`
3. Execute the scripts:
   ```bash
   \i schema.sql
   \i seed.sql
   \i queries.sql
   ```

## 📸 ERD

![ERD](ERD.png)
