SELECT
  m.ID              AS m_id,
  m.MAJOR_NUM       AS m_mclassNum,
  m.DEPARTMENT_ID   AS m_mclassId,
  m.MAJOR_NAME      AS m_majorName,
  m.PRINCIPAL       AS m_principal,
  m.MAJOR_INFO      AS m_mclassInfo,
  m.CREATE_TIME     AS m_createTime,
  d.ID              AS d_id,
  d.DEPARTMENT_NUM  AS d_departmentNum,
  d.DEPARTMENT_NAME AS d_departmentName,
  d.PRINCIPAL       AS d_principal,
  d.DEPARTMENT_INFO AS d_departmentInfo,
  d.CREATE_TIME     AS d_createTime,
  c.ID              AS c_id,
  c.CLASS_NAME      AS c_mclassName,
  c.HEAD_TEACHER    AS c_headTeacher,
  c.GRADE           AS c_grade,
  c.CREATE_TIME     AS c_createTime,
  c.TOTAL           AS c_total,
  c.CREATE_DATE     AS c_createDate
FROM ClASS c LEFT JOIN MAJOR m ON m.ID = c.MAJOR_ID
  LEFT JOIN DEPARTMENT d ON c.DEPARTMENT_ID = d.ID
  LEFT JOIN TEACHERANDCLASS T ON C.ID = T.CLASS_ID
WHERE c.DEPARTMENT_ID = 2 AND T.TEACHER_ID = 2
;-- -. . -..- - / . -. - .-. -.--
SELECT
  m.ID              AS m_id,
  m.MAJOR_NUM       AS m_mclassNum,
  m.DEPARTMENT_ID   AS m_mclassId,
  m.MAJOR_NAME      AS m_majorName,
  m.PRINCIPAL       AS m_principal,
  m.MAJOR_INFO      AS m_mclassInfo,
  m.CREATE_TIME     AS m_createTime,
  d.ID              AS d_id,
  d.DEPARTMENT_NUM  AS d_departmentNum,
  d.DEPARTMENT_NAME AS d_departmentName,
  d.PRINCIPAL       AS d_principal,
  d.DEPARTMENT_INFO AS d_departmentInfo,
  d.CREATE_TIME     AS d_createTime,
  c.ID              AS c_id,
  c.CLASS_NAME      AS c_mclassName,
  c.HEAD_TEACHER    AS c_headTeacher,
  c.GRADE           AS c_grade,
  c.CREATE_TIME     AS c_createTime,
  c.TOTAL           AS c_total,
  c.CREATE_DATE     AS c_createDate
FROM ClASS c LEFT JOIN MAJOR m ON m.ID = c.MAJOR_ID
  LEFT JOIN DEPARTMENT d ON c.DEPARTMENT_ID = d.ID
  LEFT JOIN teacherandclass A ON A.class_id = C.ID
WHERE c.MAJOR_ID = 2 AND A.teacher_id = 2
;-- -. . -..- - / . -. - .-. -.--
SELECT * from Ciftlr
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(SCORE)
FROM GAME_THEROY_INPUT
WHERE STUDENT_NUMBER = '110305016' AND S_GAME_ID = '2' AND QUESTION_TYPE = 1
;-- -. . -..- - / . -. - .-. -.--
SELECT * from GAME_THEROY_INPUT
;-- -. . -..- - / . -. - .-. -.--
SELECT
  sg.ID              AS "sgId",
  sg.NAME            AS "sgName",
  sgs.SCORE          AS "score",
  sgs.H_SCORE        AS "hscore",
  sgs.STUDENT_NUMBER AS "studentNum"
FROM SECONDARY_GAME sg LEFT JOIN (SELECT *
                                  FROM STUDENT_GAME_SCORE
                                  WHERE STUDENT_NUMBER = '110305016') sgs ON SGS.S_GAME_ID = sg.ID
WHERE SG.PRIMARY_ID = 1
;-- -. . -..- - / . -. - .-. -.--
SELECT *
                                  FROM STUDENT_GAME_SCORE
                                  WHERE STUDENT_NUMBER = '110305016'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  student_num,
  cla_id,
  course_id,
  course_name,
  stu_id,
  student_name,
  class_name,
  release_type                            AS releaseType,
  test_paper_name                         AS testPaperName,
  test_paper_id                           AS testPaperId,
  sum(score)                              AS score,
  dense_rank()
  OVER (
    PARTITION BY cla_id, course_id, test_paper_id
    ORDER BY sum(score) DESC NULLS LAST ) AS rank
FROM (SELECT
        d.student_num AS student_num,
        b.paper_type,
        b.course_id,
        b.test_paper_name,
        b.test_paper_id,
        h.course_name,
        d.id          AS stu_id,
        d.student_name,
        k.class_name,
        k.id          AS cla_id,
        b.release_type,
        a.score       AS score
      FROM OPERATE_AUTHORITY e LEFT JOIN configuration b ON e.test_paper_id = b.test_paper_id
        LEFT JOIN course h ON h.id = b.course_id
        LEFT JOIN class k ON k.id = e.class_id
        LEFT JOIN teacher c ON b.owner_id = c.id
        LEFT JOIN student d ON e.class_id = d.class_id
        LEFT JOIN student_score a ON e.test_paper_id = a.test_paper_id AND d.id = a.stu_id
      WHERE b.paper_type = '0' AND b.RELEASE_TYPE = '0' AND c.id = 2 AND h.id = '1' AND
            k.ID IN (SELECT class_id
                     FROM teacherandclass
                     WHERE teacher_id = 2)
      UNION ALL SELECT
                  d.student_num AS student_num,
                  b.paper_type,
                  b.course_id,
                  b.test_paper_name,
                  b.test_paper_id,
                  i.course_name,
                  d.id          AS stu_id,
                  d.student_name,
                  j.class_name,
                  j.id          AS cla_id,
                  b.release_type,
                  a.score       AS score
                FROM
                  OPERATE_AUTHORITY e LEFT JOIN configuration b ON e.test_paper_id = b.test_paper_id
                  LEFT JOIN class j ON j.id = e.class_id
                  LEFT JOIN course i ON i.id = b.course_id
                  LEFT JOIN teacher c ON b.owner_id = c.id
                  LEFT JOIN student d ON e.class_id = d.class_id
                  LEFT JOIN train_score a ON e.test_paper_id = a.test_id AND d.id = a.user_code
                WHERE b.paper_type = '1' AND b.RELEASE_TYPE = '0' AND c.id = 2 AND i.id = '1' AND
                      j.ID IN (SELECT class_id
                               FROM teacherandclass
                               WHERE teacher_id = 2))
WHERE student_name IS NOT NULL AND student_num IS NOT NULL
GROUP BY course_id, course_name, cla_id, class_name, stu_id, student_num, student_name, release_type,
  test_paper_name, test_paper_id
;-- -. . -..- - / . -. - .-. -.--
SELECT
  b.student_num,
  b.student_name,
  c.class_name,
  d.course_name,
  a.score,
  dense_rank()
  OVER (
    PARTITION BY a.class_id
    ORDER BY a.score DESC ) AS class_ranking,
  a.statistics_date
FROM synthetical_score a LEFT JOIN student b ON a.student_id = b.id
  LEFT JOIN class c ON c.id = a.class_id
  LEFT JOIN course d ON d.id = a.course_id
WHERE a.statistics_date = (SELECT max(statistics_date)
                           FROM synthetical_score) AND b.class_id IN (SELECT class_id
                                                                      FROM teacherandclass
                                                                      WHERE teacher_id = 2)
;-- -. . -..- - / . -. - .-. -.--
select * from TEACHER