WITH cfg AS (
  SELECT *
  FROM airline_demo.bronze.airports
  WHERE state = :state
)
SELECT * FROM cfg;