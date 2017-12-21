select * from user
;-- -. . -..- - / . -. - .-. -.--
SELECT u.NAME, u.AGE FROM USER u WHERE u.NAME = 'AAA'
;-- -. . -..- - / . -. - .-. -.--
SELECT
  u.NAME,
  u.AGE
FROM USER u
WHERE u.NAME LIKE 'AAA'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM USER u
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM USER
;-- -. . -..- - / . -. - .-. -.--
SELECT
  u.USERNAME,
  u.USERNAME
FROM USER u
WHERE u.ID = 2
AND u.USERNAME LIKE admi
;-- -. . -..- - / . -. - .-. -.--
SELECT
  u.USERNAME,
  u.USERNAME
FROM USER u
WHERE u.ID = 2
AND u.USERNAME LIKE "admi"
;-- -. . -..- - / . -. - .-. -.--
SELECT u.USERNAME, u.USERNAME FROM USER u WHERE u.ID = 2