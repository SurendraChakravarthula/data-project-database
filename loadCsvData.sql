CREATE TABLE matches (
  id int DEFAULT NULL,
  season int DEFAULT NULL,
  city text,
  date text,
  team1 text,
  team2 text,
  toss_winner text,
  toss_decision text,
  result text,
  dl_applied int DEFAULT NULL,
  winner text,
  win_by_runs int DEFAULT NULL,
  win_by_wickets int DEFAULT NULL,
  player_of_match text,
  venue text,
  umpire1 text,
  umpire2 text,
  umpire3 text
);

COPY matches
FROM '/tmp/matches.csv'
WITH (FORMAT csv, HEADER true);
