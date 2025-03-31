CREATE DATABASE journals; -- database creation --
USE journals; 
SELECT * FROM journals; -- view database --
DESC journals; -- describe the columns--

-- PRICE X SUBSCRIBERS CORRELATION --
CREATE VIEW Price_Subs AS 
SELECT price, AVG(subs) AS Subs
FROM journals
GROUP BY price
ORDER BY price DESC;

-- Do student newspapers have more subscribers than regular ones? --
CREATE VIEW Society_Subs AS 
SELECT society, AVG(subs) AS Subs
FROM journals
GROUP BY society;

-- Which publishers publish the most influential newspapers (by citation)? --
	-- We can assume that a newspaper with many situations tends to be more reliable and to show data that has already been researched, therefore, they are more relevant newspapers.--
CREATE VIEW Influence AS 
SELECT publisher,AVG(citations) AS Citations
FROM journals
GROUP BY publisher
ORDER BY Influence DESC;

-- field of study with most subscribers Average and count --
	-- AVG --
CREATE VIEW Field_Avg_Subs AS 
SELECT subject, AVG(subs) as Subs_Avg
FROM journals
GROUP BY subject
ORDER BY Subs_By_Field_Avg DESC;

	-- COUNT--
CREATE VIEW Field_Sum_Subs AS 
SELECT subject, SUM(subs) AS Subs_Sum
FROM journals
GROUP BY subject
ORDER BY Subs_By_Field_Count DESC;

-- CORRELATION BETWEEN NEWSPAPER SIZE (PAGES) X SUBSCRIBERS--
	-- Do longer newspapers attract more attention from subscribers? --
CREATE VIEW Pages_Subs AS 
SELECT pages,AVG(subs) as Subs
FROM journals
GROUP BY pages
ORDER BY pages DESC;

-- Is there a correlation between number of characters and subscribers? --
	-- Too many characters makes the newspaper boring, tiring...however, a newspaper with few characters can be very vague. --
CREATE VIEW Charpp_Subs AS 
SELECT charpp, AVG(subs) as Subs
FROM journals
GROUP BY charpp
ORDER BY charpp DESC;


