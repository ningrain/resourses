BEGIN;
INSERT INTO students VALUES (18, '姜小宁', '男', 2, 23, NULL, 0);
INSERT INTO students VALUES (19, '姜小宁', '男', 2, 23, NULL, 0);

INSERT INTO students (name, sex, c_id, age, pic, islogin)
  VALUE ('将小宁', '男', 2, 24, NULL, 0);

COMMIT;
BEGIN;
DELETE FROM students
WHERE id IN (18, 19);
COMMIT;

CREATE INDEX name_index
  ON students (name);

SHOW INDEX FROM students;

DROP INDEX name_index
ON students;

SELECT version();
SELECT database();
SELECT user();
SHOW STATUS;
SHOW VARIABLES;