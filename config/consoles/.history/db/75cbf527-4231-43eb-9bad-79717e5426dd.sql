INSERT INTO students VALUES ("姜小宁", "男", 2, 23, "", 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students VALUES (17,"姜小宁", "男", 2, 23, "", 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students VALUES (18,"姜小宁", "男", 2, 23, "", 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students VALUES (19,"姜小宁", "男", 2, 23, "", 0)
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM students WHERE id IN (18, 19)
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM students WHERE id IN (17)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students VALUES (18,"姜小宁", "男", 2, 23, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students VALUES (19,"姜小宁", "男", 2, 23, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students VALUES (18, '姜小宁', '男', 2, 23, NULL, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students VALUES (19, '姜小宁', '男', 2, 23, NULL, 0)
;-- -. . -..- - / . -. - .-. -.--
BEGIN
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM students
WHERE id IN (18, 19)
;-- -. . -..- - / . -. - .-. -.--
COMMIT
;-- -. . -..- - / . -. - .-. -.--
CREATE INDEX name_index ON students(name)
;-- -. . -..- - / . -. - .-. -.--
DROP INDEX name_index ON students
;-- -. . -..- - / . -. - .-. -.--
SHOW INDEX FROM students
;-- -. . -..- - / . -. - .-. -.--
SELECT version()
;-- -. . -..- - / . -. - .-. -.--
SELECT database()
;-- -. . -..- - / . -. - .-. -.--
SELECT user()
;-- -. . -..- - / . -. - .-. -.--
SHOW STATUS
;-- -. . -..- - / . -. - .-. -.--
SHOW VARIABLES
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students VALUES ( '姜小宁', '男', 2, 23, NULL, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students (name, sex, c_id, age, pic, islogin) 
  VALUE ('将小宁', '男', 2, 24, NULL, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO students (name, sex, c_id, age, pic, islogin)
  VALUE ('将小宁', '男', 2, 24, NULL, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('name1', '男', 1, 100, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('name2', '女', 1, 102, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('name3', '男', 0, 103, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('圆圆', '女', 2, 21, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('欢欢', '女', 2, 13, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('李华', '女', 3, 13, null, 1)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('王明', '男', 3, 20, null, 1)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('张飞', '男', 3, 32, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('赵云', '男', 3, 22, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('孙权', '男', 2, 33, null, 1)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('周瑜', '男', 2, 31, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('王云', '女', 1, 13, null, 1)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('Lily', '女', 2, 22, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('za', '男', 1, 2, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('qqqq', '女', 2, 2, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('qq', '女', 2, 12, null, 0)
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO demo.students (name, sex, c_id, age, pic, islogin) VALUES ('将小宁', '男', 2, 24, null, 0)