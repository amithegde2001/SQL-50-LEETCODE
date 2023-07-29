-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50

SELECT a1.machine_id,round(avg(a2.timestamp-a1.timestamp),3) AS processing_time FROM Activity AS a1 join Activity AS a2 ON a1.machine_id=a2.machine_id  WHERE a1.activity_type='start' AND  a2.activity_type='end' GROUP BY a1.machine_id;
