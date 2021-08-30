-- https://www.hackerrank.com/challenges/the-report/problem
-- The Report

SELECT IF(GRADE >= 8, NAME, NULL) NAME,
        GRADE,
        MARKS
FROM STUDENTS S
LEFT JOIN GRADES G
    ON MAX_MARK >= MARKS
    AND MARKS >= MIN_MARK
ORDER BY GRADE DESC,
        (CASE
            WHEN GRADE >= 8 THEN NAME
            ELSE MARKS
        END)
;