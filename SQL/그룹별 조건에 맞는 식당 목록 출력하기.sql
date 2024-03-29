SELECT A.MEMBER_NAME as MEMBER_NAME, B.REVIEW_TEXT as REVIEW_TEXT, DATE_FORMAT(B.REVIEW_DATE,'%Y-%m-%d') as REVIEW_DATE
FROM MEMBER_PROFILE A JOIN REST_REVIEW B
ON A.MEMBER_ID=B.MEMBER_ID
WHERE B.MEMBER_ID =(SELECT MEMBER_ID 
                      FROM REST_REVIEW 
                      GROUP BY MEMBER_ID 
                      ORDER BY COUNT(REVIEW_ID) DESC LIMIT 1) #내림차순으로 1개
ORDER BY REVIEW_DATE ASC, REVIEW_TEXT ASC