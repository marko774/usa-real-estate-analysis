-- POGLED 1: Analiza cijena i ponude po gradovima i državama
CREATE OR REPLACE VIEW view_city_summary AS
SELECT 
    state,
    city,
    COUNT(*) AS total_properties,
    ROUND(AVG(price)::numeric, 2) AS avg_price,
    ROUND(AVG(house_size)::numeric, 2) AS avg_sqft
FROM real_estate
WHERE price IS NOT NULL AND house_size IS NOT NULL
GROUP BY state, city
HAVING COUNT(*) >= 10
ORDER BY avg_price DESC;

-- POGLED 2: Analiza utjecaja broja soba na prosječnu cijenu
CREATE OR REPLACE VIEW view_bedroom_summary AS
SELECT 
    bed AS bedrooms,
    COUNT(*) AS total_properties,
    ROUND(AVG(price)::numeric, 2) AS avg_price
FROM real_estate
WHERE bed IS NOT NULL
GROUP BY bed
ORDER BY bed ASC;