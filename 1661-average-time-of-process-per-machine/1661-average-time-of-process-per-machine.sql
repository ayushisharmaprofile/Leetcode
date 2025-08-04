# Write your MySQL query statement below
SELECT
  sActivity.machine_id,
  ROUND(
    AVG(eActivity.timestamp - sActivity.timestamp),
    3
  ) AS processing_time
FROM Activity AS sActivity
INNER JOIN Activity AS eActivity
  USING (machine_id, process_id)
WHERE
  sActivity.activity_type = 'start'
  AND eActivity.activity_type = 'end'
GROUP BY 1;