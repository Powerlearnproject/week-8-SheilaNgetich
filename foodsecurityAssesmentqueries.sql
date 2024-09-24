-- Query 1: Analyze total grain demand over the years
SELECT year, 
       SUM(millions_metric_tonnes) AS total_grain_demand
FROM GrainData
WHERE element = 'total grain demand'
GROUP BY year;

-- Query 2: Analyze regions with the highest implied additional supply required
SELECT region, 
       SUM(millions_metric_tonnes) AS total_implied_supply
FROM GrainData
WHERE element = 'Implied additional supply required'
GROUP BY region
ORDER BY total_implied_supply DESC;

-- Query 3: Analyze grain production by subregion
SELECT subregion, 
       SUM(millions_metric_tonnes) AS total_production
FROM GrainData
WHERE element = 'grain production'
GROUP BY subregion;
