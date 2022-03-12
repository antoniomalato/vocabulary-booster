DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM hr.employees AS e
JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE LIKE Cargo;
END $$

DELIMITER 
