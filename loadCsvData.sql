--create matches table and copy data from matches.csv
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

--create deliveries and copy data from delievries.csv
CREATE TABLE deliveries (
  match_id int DEFAULT NULL,
  inning int DEFAULT NULL,
  batting_team text,
  bowling_team text,
  over int DEFAULT NULL,
  ball int DEFAULT NULL,
  batsman text,
  non_striker text,
  bowler text,
  is_super_over double DEFAULT NULL,
  wide_runs int DEFAULT NULL,
  bye_runs int DEFAULT NULL,
  legbye_runs int DEFAULT NULL,
  noball_runs int DEFAULT NULL,
  penalty_runs int DEFAULT NULL,
  batsman_runs int DEFAULT NULL,
  extra_runs int DEFAULT NULL,
  total_runs int DEFAULT NULL,
  player_dismissed text,
  dismissal_kind text,
  fielder text
)

COPY deliveries
FROM '/tmp/deliveries.csv'
WITH (FORMAT csv, HEADER true);
