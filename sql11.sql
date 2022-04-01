SELECT * FROM lesson6.`2020_happiness_data(1)`;
SELECT * FROM lesson6.`2019_happiness_data(1)`;


-- Find the sum of Healthy life expectancy
SELECT sum(Generosity) AS "Total Generosity"
FROM lesson6.`2020_happiness_data(1)`;

SELECT SUM(Score) AS "Total Score"
FROM lesson6.`2019_happiness_data(1)`;

-- Count the number of Countries
SELECT COUNT('country name') AS "Count of Countries"
FROM lesson6.`2020_happiness_data(1)`;

SELECT * FROM lesson6.`2020_happiness_data(1)`;
SELECT * FROM lesson6.`2019_happiness_data(1)`;

SELECT COUNT('country name') AS "Count of Countries"
FROM lesson6.`2019_happiness_data(1)`;

SELECT COUNT('Regional indicator') AS  "Total R I"
FROM lesson6.`2020_happiness_data(1)`;

-- Find the Average Healthy life expectancy
SELECT AVG('Healthy life expectancy') AS "Average Healthy life expectancy"
FROM lesson6.`2020_happiness_data(1)`;

SELECT AVG('Ladder score') AS "Total Ladder score"
FROM lesson6.`2020_happiness_data(1)`;

-- Group by
SELECT * FROM lesson6.`2020_happiness_data(1)`;
SELECT * FROM lesson6.`2019_happiness_data(1)`;

SELECT "Regional indicator", COUNT('Ladder score') FROM lesson6.`2020_happiness_data(1)`
GROUP BY "Regional indicator";

-- Where 
SELECT * FROM lesson6.`2020_happiness_data(1)`;

SELECT upperwhisker,lowerwhisker FROM lesson6.`2020_happiness_data(1)`
WHERE lowerwhisker < 3;

SELECT lowerwhisker, upperwhisker FROM lesson6.`2020_happiness_data(1)`
WHERE upperwhisker < 6;

-- CASE WHEN
SELECT * FROM lesson6.`2020_happiness_data(1)`;

SELECT upperwhisker, lowerwhisker,
CASE
WHEN lowerwhisker < 3 THEN "Below 3"
WHEN lowerwhisker > 7 THEN "Above 7"
ELSE "Between 3 and 7" END AS "lowerwhisker Bracket"
FROM lesson6.`2020_happiness_data(1)`;

-- Joins
SELECT * FROM lesson6.`2020_happiness_data(1)`;
SELECT * FROM lesson6.`2019_happiness_data(1)`;

SELECT * FROM lesson6.`2020_happiness_data(1)` table1
INNER JOIN lesson6.`2019_happiness_data(1)` table2
ON table1.Generosity = table2.Generosity;











