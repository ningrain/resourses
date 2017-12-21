UPDATE tifcrg t
SET t.REC_STS = 'I' WHERE t.RGT_CDE = '00001201201501210003'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM TIFVLT
WHERE VLT_KEY = '100121010000' AND REC_STS = 'P'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM TIFVLT t
WHERE t.VLT_KEY = '100121010000' AND t.REC_STS = 'P'
;-- -. . -..- - / . -. - .-. -.--
select *
FROM TIFVLT t
WHERE t.VLT_KEY = '100121010000' AND t.REC_STS = 'P'
;-- -. . -..- - / . -. - .-. -.--
declare
  i number;
begin
  i := 502;
  while i <= 1000 loop
    insert into TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    values ('10'|| LPad(i, 3, 0) ||'001', '10' || LPad(i, 3, 0), '001', '0  ', 1000, to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    insert into TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    values ('10'|| LPad(i, 3, 0) ||'002', '10' || LPad(i, 3, 0), '002', '0  ', 1000, to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    insert into TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    values ('10'|| LPad(i, 3, 0) ||'604', '10' || LPad(i, 3, 0), '604', '0  ', 1000, to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    insert into TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    values ('10'|| LPad(i, 3, 0) ||'605', '10' || LPad(i, 3, 0), '605', '0  ', 1000, to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    insert into TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    values ('10'|| LPad(i, 3, 0) ||'902', '10' || LPad(i, 3, 0), '902', '0  ', 1000, to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    insert into TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    values ('10'|| LPad(i, 3, 0) ||'903', '10' || LPad(i, 3, 0), '903', '0  ', 1000, to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    i := i + 1;
  end loop;
end;
;-- -. . -..- - / . -. - .-. -.--
DECLARE
  i NUMBER;
BEGIN
  i := 502;
  WHILE i <= 1000 LOOP
    INSERT INTO TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    VALUES ('10' || LPad(i, 3, 0) || '001', '10' || LPad(i, 3, 0), '001', '0  ', 1000,
            to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    INSERT INTO TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    VALUES ('10' || LPad(i, 3, 0) || '002', '10' || LPad(i, 3, 0), '002', '0  ', 1000,
            to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    INSERT INTO TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    VALUES ('10' || LPad(i, 3, 0) || '604', '10' || LPad(i, 3, 0), '604', '0  ', 1000,
            to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    INSERT INTO TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    VALUES ('10' || LPad(i, 3, 0) || '605', '10' || LPad(i, 3, 0), '605', '0  ', 1000,
            to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    INSERT INTO TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    VALUES ('10' || LPad(i, 3, 0) || '902', '10' || LPad(i, 3, 0), '902', '0  ', 1000,
            to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    INSERT INTO TIFCOI (coi_key, vbt_num, cee_coe, cee_tye, cbl_num, lst_dat, bal_flg, rec_sts)
    VALUES ('10' || LPad(i, 3, 0) || '903', '10' || LPad(i, 3, 0), '903', '0  ', 1000,
            to_date('01-06-2016 16:46:27', 'dd-mm-yyyy hh24:mi:ss'), '0', 'P');

    i := i + 1;
  END LOOP;
END;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM INFBLH h
WHERE h.int_act = '0112111100000074011401' AND h.blh_dat BETWEEN '2015-01-20 00:00:00.0' AND '2015-01-22 00:00:00.0' AND h.rec_sts = 'P'
ORDER BY h.blh_dat