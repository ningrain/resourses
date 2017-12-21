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
SELECT * FROM TIFCCT;