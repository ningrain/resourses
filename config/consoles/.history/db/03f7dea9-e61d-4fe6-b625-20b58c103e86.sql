drop TABLE TIFCCT
;-- -. . -..- - / . -. - .-. -.--
create table TIFCCT
(
  COI_KEY CHAR(8),
  FIT_COE VARCHAR2(3),
  CEE_STS CHAR,
  SAT_COE VARCHAR2(18),
  FIH_COE VARCHAR2(18),
  AMOUNT NUMBER,
  REC_STS CHAR,
  ID NUMBER(8) not null
)
;-- -. . -..- - / . -. - .-. -.--
comment on column TIFCCT.COI_KEY is '凭证库箱存记录键'
;-- -. . -..- - / . -. - .-. -.--
comment on column TIFCCT.FIT_COE is '冠字号'
;-- -. . -..- - / . -. - .-. -.--
comment on column TIFCCT.CEE_STS is '凭证状态'
;-- -. . -..- - / . -. - .-. -.--
comment on column TIFCCT.SAT_COE is '起始号'
;-- -. . -..- - / . -. - .-. -.--
comment on column TIFCCT.FIH_COE is '结束号'
;-- -. . -..- - / . -. - .-. -.--
comment on column TIFCCT.AMOUNT is '数量'
;-- -. . -..- - / . -. - .-. -.--
comment on column TIFCCT.REC_STS is '记录状态'
;-- -. . -..- - / . -. - .-. -.--
comment on column TIFCCT.ID is 'id'
;-- -. . -..- - / . -. - .-. -.--
SELECT * from TIFCCT
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE TABLE TIFCCT
;-- -. . -..- - / . -. - .-. -.--
DECLARE
  i NUMBER;
BEGIN
  i := 502;
  WHILE i <= 1001 LOOP
    INSERT INTO tifcct (coi_key, fit_coe, cee_sts, sat_coe, fih_coe, amount, rec_sts, id) VALUES
      ('10' || lpad(i, 3, 0) || '001', '000', '0', lpad((i - 2) || '000', 8, 0), lpad((i - 2) || '999', 8, 0), 1000,
       'P', SEQ_TIFCCT.NEXTVAL);

    INSERT INTO tifcct (coi_key, fit_coe, cee_sts, sat_coe, fih_coe, amount, rec_sts, id) VALUES
      ('10' || lpad(i, 3, 0) || '002', '000', '0', lpad((i - 2) || '000', 8, 0), lpad((i - 2) || '999', 8, 0), 1000,
       'P', SEQ_TIFCCT.NEXTVAL);

    INSERT INTO tifcct (coi_key, fit_coe, cee_sts, sat_coe, fih_coe, amount, rec_sts, id) VALUES
      ('10' || lpad(i, 3, 0) || '604', '000', '0', lpad((i - 2) || '000', 8, 0), lpad((i - 2) || '999', 8, 0), 1000,
       'P', SEQ_TIFCCT.NEXTVAL);

    INSERT INTO tifcct (coi_key, fit_coe, cee_sts, sat_coe, fih_coe, amount, rec_sts, id) VALUES
      ('10' || lpad(i, 3, 0) || '605', '000', '0', lpad((i - 2) || '000', 8, 0), lpad((i - 2) || '999', 8, 0), 1000,
       'P', SEQ_TIFCCT.NEXTVAL);

    INSERT INTO tifcct (coi_key, fit_coe, cee_sts, sat_coe, fih_coe, amount, rec_sts, id) VALUES
      ('10' || lpad(i, 3, 0) || '902', '000', '0', '6216616902' || lpad((i - 2) || '000', 8, 0),
       '6216616902' || lpad((i - 2) || '999', 8, 0), 1000, 'P', SEQ_TIFCCT.NEXTVAL);

    INSERT INTO tifcct (coi_key, fit_coe, cee_sts, sat_coe, fih_coe, amount, rec_sts, id) VALUES
      ('10' || lpad(i, 3, 0) || '903', '000', '0', '6216616903' || lpad((i - 2) || '000', 8, 0),
       '6216616903' || lpad((i - 2) || '999', 8, 0), 1000, 'P', SEQ_TIFCCT.NEXTVAL);

    i := i + 1;
  END LOOP;
END;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM TIFCCT