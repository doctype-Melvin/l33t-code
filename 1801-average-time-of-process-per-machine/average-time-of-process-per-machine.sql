# Write your MySQL query statement below

SELECT
    a2.machine_id,
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) as processing_time
FROM
    activity a1
JOIN activity a2
    ON a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
    AND a1.activity_type = 'start'
    AND a2.activity_type = 'end'
GROUP BY a2.machine_id
;