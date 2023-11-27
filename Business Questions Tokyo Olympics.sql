-- Total Number of Athletes by Country:

-- Question: How many athletes are there in each country?

SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country;

-- Top Coaches by Event Participation:

-- Question: Who are the top coaches based on the number of events they participate in?

SELECT Name, COUNT(Event) AS EventCount
FROM coaches
GROUP BY Name
ORDER BY EventCount DESC;

-- Gender Distribution in Each Discipline:

-- Question: What is the gender distribution for each discipline?

SELECT Discipline, Female, Male, Total
FROM entriesgender
ORDER BY Total DESC;

-- Medal Count by Team:

-- Question: How many gold, silver, and bronze medals has each team won?

SELECT Team_Country, SUM(Gold) AS TotalGold, SUM(Silver) AS TotalSilver, SUM(Bronze) AS TotalBronze
FROM medals
GROUP BY Team_Country;

-- Ranking of Teams by Total Medals:

-- Question: What is the ranking of teams based on the total number of medals they have won?

SELECT Team_Country, Rank_by_Total
FROM medals
ORDER BY Rank_by_Total;

-- Disciplines Represented by Teams:

-- Question: Which disciplines are represented by each team?

SELECT TeamName, STRING_AGG(Discipline, ', ') AS Disciplines
FROM teams
GROUP BY TeamName;

-- Athletes without Coaches:

-- Question: Are there any athletes without coaches?

SELECT a.PersonName, a.Country, a.Discipline
FROM athletes a
LEFT JOIN coaches c ON a.Country = c.Country AND a.Discipline = c.Discipline
WHERE c.Name IS NULL;

-- Average Medals per Country:

-- Question: What is the average number of medals won by each country?

SELECT Team_Country, AVG(Gold + Silver + Bronze) AS AvgMedals
FROM medals
GROUP BY Team_Country
ORDER BY AvgMedals DESC;

-- Teams with Female Athletes Only:

-- Question: Are there any teams with only female athletes?

SELECT TeamName, COUNT(DISTINCT t.Discipline) AS NumDisciplines
FROM teams t
JOIN athletes a ON t.Country = a.Country AND t.Discipline = a.Discipline
-- WHERE a.Country IN (
--   SELECT e.Country
--   FROM entriesgender e
--   WHERE e.Female > 0 AND e.Male = 0
-- )
GROUP BY TeamName
HAVING COUNT(DISTINCT t.Discipline) = (SELECT COUNT(DISTINCT Discipline) FROM entriesgender WHERE Female > 0 AND Male = 0);










