SELECT *
FROM girl
;-- -. . -..- - / . -. - .-. -.--
SELECT
  t.id,
  t.age,
  t.cup_size
FROM girl t
WHERE t.id = 1
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO girl VALUES (23, "C")
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO girl (age, cup_size) VALUES (23, "C")
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM girl