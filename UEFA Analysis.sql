 --1) Top team by home victories
  --select TOP 1 count( HOME_TEAM_ID) AS HomeTeamCount, HOME_TEAM_ID, TEAM_NAME
  --from uefa.ucl.matches
  --join uefa.ucl.teams
  --on uefa.ucl.matches.HOME_TEAM_ID = uefa.ucl.teams.team_id
  --where HOME_TEAM_SCORE > AWAY_TEAM_SCORE 
  --group by HOME_TEAM_ID, TEAM_NAME
  --order by HomeTeamCount desc

 
 --2)  Largest Stadium By Capacity
 --select TOP 1 *
 --from UEFA.UCL.Stadiums
 --ORDER BY CAPACITY DESC

 --3) Youngest Manager In The League
  --select TOP 1*
  --from UEFA.UCL.Managers
  --order by DOB DESC

 --4) Coach With Most Games Managed
 --SELECT TOP 1 count (HOME_TEAM_ID) as HomeCount, HOME_TEAM_ID, FIRST_NAME, LAST_NAME
 -- FROM uefa.ucl.Matches
 -- join uefa.ucl.Managers
 --  on uefa.ucl.Matches. Home_Team_ID = uefa.ucl.Managers. Team
 --  group by HOME_TEAM_ID, FIRST_NAME, LAST_NAME
 --  order by HomeCount desc


   --5) Teams With Most Away Wins
   --select TOP 1 COUNT (AWAY_TEAM_ID) AS AwayCount, AWAY_TEAM_ID, TEAM_NAME
   --from uefa.ucl.matches
   --join uefa.ucl.teams
   --on uefa.ucl.matches.away_team_id = uefa.ucl.teams. team_id
   --where AWAY_TEAM_SCORE > HOME_TEAM_SCORE
   --GROUP BY AWAY_TEAM_ID, TEAM_NAME
   --ORDER BY AwayCount DESC
   

   --6) Stadium With The Most Matches
 --select TOP 2 COUNT (STADIUM) AS STADIUMCOUNT, STADIUM
 --from uefa.ucl.Stadiums
 --join uefa.ucl.Matches
 --on uefa.ucl.Stadiums.NAME = uefa.ucl.Matches.STADIUM
 --GROUP BY STADIUM
 --ORDER BY STADIUMCOUNT DESC

 --7) Stadiums By Country
--select COUNT(NAME) AS StadiumCount, COUNTRY
--from uefa.ucl.Stadiums
--GROUP BY COUNTRY
--order by StadiumCount desc

--8) Most Experienced Players
--select *
--from uefa.ucl.Players
--order by DOB asc

--9) Team With Widest Goal Margin Victory
--select Top 3 (HOME_TEAM_SCORE - AWAY_TEAM_SCORE) AS HomeDiff, HOME_TEAM_ID, TEAM_NAME
--from uefa.ucl.Matches
--join uefa.ucl.Teams
--on uefa.ucl.Matches.HOME_TEAM_ID = uefa.ucl.Teams.TEAM_ID
--order by HomeDiff Desc


--10) Most Travelled Team
--select top 1 count (AWAY_TEAM_ID) AS AwayCount, AWAY_TEAM_ID, TEAM_NAME
--from uefa.ucl.Matches
-- join uefa.ucl.Teams
-- on uefa.ucl.Matches.away_team_id = uefa.ucl.Teams.team_id 
--GROUP BY AWAY_TEAM_ID, TEAM_NAME
--order by AwayCount desc

--11) Rankings Of The Most Popular Home Venues
--select ROUND (AVG(ATTENDANCE), 0) AS AvgAtnd, Stadium
--from UEFA.UCL.Matches
--group by STADIUM
--order by AvgAtnd desc

--12)Ranking Teams With Most Diverse Nationalities
--select Count(distinct Nationality) AS Diversity, Team, TEAM_NAME
--from uefa.ucl.players
--join uefa.ucl.teams
--on uefa.ucl.Players.team = uefa.ucl.Teams.TEAM_ID
--group by Team, TEAM_NAME
--order by Diversity desc

--13)Teams With Most Home Draws
--SELECT TOP 1 COUNT( HOME_TEAM_ID) AS HOMEDRAWCOUNT, HOME_TEAM_ID, TEAM_NAME
--FROM UEFA.UCL.MATCHES
--JOIN UEFA.UCL.TEAMS
--ON UEFA.UCL.MATCHES.HOME_TEAM_ID = UEFA.UCL.TEAMS.TEAM_ID
--WHERE HOME_TEAM_SCORE = AWAY_TEAM_SCORE
--GROUP BY HOME_TEAM_ID, TEAM_NAME
--ORDER BY HOMEDRAWCOUNT DESC

--14)Top Scoring Team Without Home Advantage Over The Last Three Seasons
--select top 1 SUM(AWAY_TEAM_SCORE) AS GoalCount, AWAY_TEAM_ID, TEAM_NAME
--from uefa.ucl.matches
--join uefa.ucl.teams
--on uefa.ucl.matches.away_team_id = uefa.ucl.teams.team_id
--where SEASON = '2019-2020'
--OR SEASON = '2020-2021' 
--OR SEASON = '2021-2022'
--GROUP BY AWAY_TEAM_ID, TEAM_NAME
--order by GoalCount desc

--15)Most Consistent Home Team
--select HOME_TEAM_ID, MAX(ATTENDANCE) AS MaxiAtnd, MIN(ATTENDANCE) AS MiniAtnd, MAX(ATTENDANCE) - MIN(ATTENDANCE) AS AtndDiff
--from uefa.ucl.matches
--group by HOME_TEAM_ID
--order by AtndDiff asc

--16)Best Defensive Away Team
--select SUM(HOME_TEAM_SCORE) AS GoalConceded, AWAY_TEAM_ID, TEAM_NAME
--from uefa.ucl.matches
--join uefa.ucl.teams
--on uefa.ucl.matches.away_team_id = uefa.ucl.teams.team_id
--group by AWAY_TEAM_ID, TEAM_NAME
--order by GoalConceded asc

--17)Young Managers In The League
--select *
-- from UEFA.UCL.Managers
-- where age < 40
 --alter table UEFA.UCL.Managers add age as datediff(year, dob, getdate());

 --18)Home Fotress - Average Goals Scored Per Home Game
 --select round (avg( HOME_TEAM_SCORE), 2) as HomeGoals, HOME_TEAM_ID, TEAM_NAME
 --from uefa.ucl.Matches
 --join UEFA.UCL.TEAMS
 --ON UEFA.UCL.MATCHES.HOME_TEAM_ID = UEFA.UCL.TEAMS.TEAM_ID
 --group by HOME_TEAM_ID, TEAM_NAME
 --order by HomeGoals desc 

 --19) Most Frequently used Stadium
 --select count ( STADIUM) StadCount, HOME_TEAM_ID, STADIUM
 --from uefa.ucl.Matches
 --group by HOME_TEAM_ID, STADIUM
 --order by StadCount desc

 ----20)Longest Serving Team - Earliest Recorded Match
 --select DATE_TIME, TEAM_NAME
 --from uefa.ucl.matches
 --join UEFA.UCL.TEAMS
 --ON UEFA.UCL.MATCHES.HOME_TEAM_ID = UEFA.UCL.TEAMS.TEAM_ID
 --order by DATE_TIME asc

 








