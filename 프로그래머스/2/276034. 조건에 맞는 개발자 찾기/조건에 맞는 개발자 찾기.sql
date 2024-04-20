SELECT DISTINCT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS A JOIN SKILLCODES B
ON A.SKILL_CODE & B.CODE
WHERE B.NAME IN ('Python','C#')
ORDER BY ID ASC
