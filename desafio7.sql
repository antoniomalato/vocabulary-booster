SELECT 
    UCASE(CONCAT(j.FIRST_NAME, ' ', j.LAST_NAME)) AS 'Nome completo',
    j.SALARY AS 'Salário',
    h.START_DATE AS 'Data de início'
FROM
    hr.employees AS j
        INNER JOIN
    hr.job_history AS h ON j.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
    MONTH(h.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome Completo`;
