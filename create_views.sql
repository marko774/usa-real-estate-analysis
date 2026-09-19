--Analiza po gradovima
CREATE OR REPLACE VIEW view_city_summary AS
SELECT 
    "Town" AS town,
    COUNT(*) AS total_properties,
    ROUND(AVG("Sale Amount")::numeric, 2) AS avg_sale_price,
    ROUND(AVG("Assessed Value")::numeric, 2) AS avg_assessed_value
FROM real_estate
WHERE "Sale Amount" IS NOT NULL AND "Town" IS NOT NULL
GROUP BY "Town"
HAVING COUNT(*) >= 5
ORDER BY avg_sale_price DESC;

--Analiza po tipu nekretnine
CREATE OR REPLACE VIEW view_property_type_summary AS
SELECT 
    "Property Type" AS property_type,
    COUNT(*) AS total_properties,
    ROUND(AVG("Sale Amount")::numeric, 2) AS avg_sale_price
FROM real_estate
WHERE "Property Type" IS NOT NULL
GROUP BY "Property Type"
ORDER BY total_properties DESC;