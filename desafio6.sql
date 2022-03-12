SELECT 
    CONCAT(FIRST_NAME, + ' ', + LAST_NAME) AS 'Nome completo',
    JOB_TITLE AS 'Cargo',
    START_DATE AS 'Data de início do cargo',
    DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS j
        INNER JOIN
    jobs AS jo ON j.JOB_ID = jo.JOB_ID
        INNER JOIN
    hr.departments AS d ON j.DEPARTMENT_ID = d.DEPARTMENT_ID
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY `Nome Completo` DESC , `Cargo`;
