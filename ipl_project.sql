--Number of matches played per year of all the years in IPL
SELECT season,COUNT(season) AS matchesPlayed
FROM matches
GROUP BY season
ORDER BY season;

--Number of matches won of all teams over all the years of IPL
SELECT winner AS Team,COUNT(winner) AS Wins
FROM  matches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY wins DESC;

--For the year 2016 get the extra runs conceded per team
SELECT d.bowling_team AS team,SUM(d.extra_runs) AS conceded_runs
FROM matches AS m
JOIN deliveries AS d
ON m.id=d.match_id
WHERE m.season=2016
GROUP BY d.bowling_team
ORDER BY conceded_runs DESC;

--For the year 2015 get the top economical bowlers
SELECT d.bowler,
SUM(d.wide_runs+d.noball_runs+d.batsman_runs)
        /(SUM (CASE
               WHEN (d.wide_runs=0 AND d.noball_runs=0) THEN 1
	           ELSE 0
	           END)
	           /6.0) AS economy_rate
FROM matches AS m
JOIN deliveries AS d
ON m.id=d.match_id
WHERE season=2015
GROUP BY d.bowler
ORDER BY economy_rate
LIMIT 5;