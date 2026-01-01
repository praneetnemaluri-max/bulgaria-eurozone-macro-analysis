DROP DATABASE IF EXISTS bulgaria_euro;

CREATE DATABASE bulgaria_euro;
USE bulgaria_euro;

CREATE TABLE bulgaria_macro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    indicator VARCHAR(30),
    year INT,
    value DECIMAL(10,2)
);
INSERT INTO bulgaria_macro (indicator, year, value) VALUES
('real_gdp', 2000, 5.7),
('real_gdp', 2001, 5.3),
('real_gdp', 2002, 4.2),
('real_gdp', 2003, 3.0);
SELECT *
FROM bulgaria_macro
ORDER BY year;
INSERT INTO bulgaria_macro (indicator, year, value) VALUES
('unemployment', 2000, 16.4),
('unemployment', 2001, 19.3),
('unemployment', 2002, 17.9),
('unemployment', 2003, 13.7);
INSERT INTO bulgaria_macro (indicator, year, value) VALUES
('inflation', 2000, 10.3),
('inflation', 2001, 7.4),
('inflation', 2002, 5.8),
('inflation', 2003, 2.3);
SELECT *
FROM bulgaria_macro
ORDER BY indicator, year;
-- Average GDP growth in these years
SELECT AVG(value) AS avg_gdp
FROM bulgaria_macro
WHERE indicator = 'real_gdp';

-- Average unemployment in these years
SELECT AVG(value) AS avg_unemployment
FROM bulgaria_macro
WHERE indicator = 'unemployment';

-- See all indicators by year
SELECT year, indicator, value
FROM bulgaria_macro
ORDER BY year, indicator;
SELECT year, indicator, value
FROM bulgaria_macro
ORDER BY year, indicator;
-- Average GDP growth
SELECT AVG(value) AS avg_gdp_growth
FROM bulgaria_macro
WHERE indicator = 'real_gdp';

-- Average unemployment
SELECT AVG(value) AS avg_unemployment
FROM bulgaria_macro
WHERE indicator = 'unemployment';

-- Average inflation
SELECT AVG(value) AS avg_inflation
FROM bulgaria_macro
WHERE indicator = 'inflation';
SELECT
  year,
  MAX(CASE WHEN indicator = 'real_gdp'     THEN value END) AS real_gdp,
  MAX(CASE WHEN indicator = 'unemployment' THEN value END) AS unemployment,
  MAX(CASE WHEN indicator = 'inflation'    THEN value END) AS inflation
FROM bulgaria_macro
GROUP BY year
ORDER BY year;
SELECT
  year,
  MAX(CASE WHEN indicator = 'real_gdp'     THEN value END) AS real_gdp,
  MAX(CASE WHEN indicator = 'unemployment' THEN value END) AS unemployment,
  MAX(CASE WHEN indicator = 'inflation'    THEN value END) AS inflation
FROM bulgaria_macro
GROUP BY year
ORDER BY year;
INSERT INTO bulgaria_macro (indicator, year, value) VALUES
('real_gdp', 2004, 6.5),
('real_gdp', 2005, 7.1),
('real_gdp', 2006, 6.8),
('real_gdp', 2007, 6.7),
('real_gdp', 2008, 6.1),
('real_gdp', 2009, -3.3),
('real_gdp', 2010, 1.6);
SELECT year, indicator, value
FROM bulgaria_macro
ORDER BY year, indicator;
SELECT
  year,
  MAX(CASE WHEN indicator = 'real_gdp'     THEN value END) AS real_gdp,
  MAX(CASE WHEN indicator = 'unemployment' THEN value END) AS unemployment,
  MAX(CASE WHEN indicator = 'inflation'    THEN value END) AS inflation
FROM bulgaria_macro
GROUP BY year
ORDER BY year;
-- GDP growth before vs after 2007
SELECT
  CASE WHEN year <= 2006 THEN 'before_2007' ELSE 'after_2007' END AS period,
  AVG(value) AS avg_gdp_growth
FROM bulgaria_macro
WHERE indicator = 'real_gdp'
  AND year BETWEEN 2000 AND 2010
GROUP BY period;
-- Unemployment before vs after 2007
SELECT
  CASE WHEN year <= 2006 THEN 'before_2007' ELSE 'after_2007' END AS period,
  AVG(value) AS avg_unemployment
FROM bulgaria_macro
WHERE indicator = 'unemployment'
  AND year BETWEEN 2000 AND 2010
GROUP BY period;

-- Inflation before vs after 2007
SELECT
  CASE WHEN year <= 2006 THEN 'before_2007' ELSE 'after_2007' END AS period,
  AVG(value) AS avg_inflation
FROM bulgaria_macro
WHERE indicator = 'inflation'
  AND year BETWEEN 2000 AND 2010
GROUP BY period;
SELECT
  CASE WHEN year < 2026 THEN 'before_2026' ELSE 'after_2026' END AS period,
  AVG(value) AS avg_gdp_growth
FROM bulgaria_macro
WHERE indicator = 'real_gdp'
GROUP BY period;
SELECT
  year,
  MAX(CASE WHEN indicator = 'real_gdp'     THEN value END) AS real_gdp,
  MAX(CASE WHEN indicator = 'unemployment' THEN value END) AS unemployment,
  MAX(CASE WHEN indicator = 'inflation'    THEN value END) AS inflation
FROM bulgaria_macro
GROUP BY year
ORDER BY year;
INSERT INTO bulgaria_macro (indicator, year, value) VALUES
('real_gdp', 2004, 6.5),
('real_gdp', 2005, 7.1),
('real_gdp', 2006, 6.8),
('real_gdp', 2007, 6.7),
('real_gdp', 2008, 6.1),
('real_gdp', 2009, -3.3),
('real_gdp', 2010, 1.6);

INSERT INTO bulgaria_macro (indicator, year, value) VALUES
('unemployment', 2004, 12.0),
('unemployment', 2005, 11.5),
('unemployment', 2006, 10.7),
('unemployment', 2007, 9.5),
('unemployment', 2008, 6.3),
('unemployment', 2009, 6.8),
('unemployment', 2010, 10.3);
INSERT INTO bulgaria_macro (indicator, year, value) VALUES
('inflation', 2004, 6.1),
('inflation', 2005, 6.0),
('inflation', 2006, 7.4),
('inflation', 2007, 7.6),
('inflation', 2008, 12.0),
('inflation', 2009, 2.5),
('inflation', 2010, 3.0);
SELECT
  year,
  MAX(CASE WHEN indicator = 'real_gdp'     THEN value END) AS real_gdp,
  MAX(CASE WHEN indicator = 'unemployment' THEN value END) AS unemployment,
  MAX(CASE WHEN indicator = 'inflation'    THEN value END) AS inflation
FROM bulgaria_macro
GROUP BY year
ORDER BY year;
SELECT
  year,
  MAX(CASE WHEN indicator = 'real_gdp'     THEN value END) AS real_gdp,
  MAX(CASE WHEN indicator = 'unemployment' THEN value END) AS unemployment,
  MAX(CASE WHEN indicator = 'inflation'    THEN value END) AS inflation
FROM bulgaria_macro
GROUP BY year
ORDER BY year;
-- GDP growth
SELECT
  CASE WHEN year <= 2006 THEN 'before_2007' ELSE 'after_2007' END AS period,
  AVG(value) AS avg_gdp_growth
FROM bulgaria_macro
WHERE indicator = 'real_gdp'
  AND year BETWEEN 2000 AND 2010
GROUP BY period;

-- Unemployment
SELECT
  CASE WHEN year <= 2006 THEN 'before_2007' ELSE 'after_2007' END AS period,
  AVG(value) AS avg_unemployment
FROM bulgaria_macro
WHERE indicator = 'unemployment'
  AND year BETWEEN 2000 AND 2010
GROUP BY period;

-- Inflation
SELECT
  CASE WHEN year <= 2006 THEN 'before_2007' ELSE 'after_2007' END AS period,
  AVG(value) AS avg_inflation
FROM bulgaria_macro
WHERE indicator = 'inflation'
  AND year BETWEEN 2000 AND 2010
GROUP BY period;

