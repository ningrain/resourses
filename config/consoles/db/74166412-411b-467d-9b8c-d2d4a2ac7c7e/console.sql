INSERT INTO statement_amount
  (SELECT
     seq_statement_amount.nextval,
     t1.*
   FROM (SELECT
           s1.statement_cde AS code,
           to_date('2015-01-22', 'yyyy-MM-dd'),
           nvl(t1.sumamt, 0) +
           decode(s1.statement_cde
           , '39'
           , 0
           , '40'
           , 0
           , '38'
           , 0
           , (nvl((SELECT s2.amount
                   FROM statement_amount s2
                   WHERE s2.act_dat =
                         (to_date('2015-01-22', 'yyyy-MM-dd') - 1)
                         AND s1.statement_cde = s2.code)
           , 0)))           AS amountfrom
         FROM statements s1
           LEFT JOIN (SELECT
                        t1.parent_cde  AS statement_cde,
                        sum(t2.sumamt) AS sumamt
                      FROM statements t1
                        LEFT JOIN (SELECT
                                     t1.statement_cde,
                                     sum(t1.txn_amt) AS sumamt
                                   FROM (SELECT
                                           CASE
                                           WHEN t2.plus_status IS NULL
                                             THEN
                                               0
                                           WHEN t2.plus_status = '0'
                                             THEN
                                               (0 - t1.txn_amt)
                                           ELSE
                                             t1.txn_amt
                                           END AS txn_amt,
                                           t3.statement_cde
                                         FROM (SELECT
                                                 t1.trx_cde,
                                                 CASE
                                                 WHEN t2.cur_cde <> '01'
                                                   THEN
                                                     (SELECT (t1.rat_val / 100)
                                                      FROM pifxrt t1
                                                      WHERE t1.cur_cde =
                                                            t2.cur_cde
                                                            AND t1.sec_ccy = '01'
                                                            AND t1.use_status = 'Y'
                                                            AND t1.xrt_cde = 1
                                                            AND t1.eff_tim <=
                                                                sysdate) *
                                                     t2.txn_amt
                                                 WHEN t2.txn_amt = 0 AND
                                                      t1.fee_amt IS NOT NULL AND
                                                      t1.fee_amt <> 0
                                                   THEN
                                                     t1.fee_amt
                                                 ELSE
                                                   t2.txn_amt
                                                 END AS txn_amt,
                                                 t1.fee_amt,
                                                 t2.itm_cde,
                                                 t2.dcr_flg
                                               FROM tifjnl t1, tifvch t2
                                               WHERE t2.jrn_num =
                                                     t1.jrn_key
                                                     AND t1.rec_sts = 'P'
                                                     AND t2.rec_sts = 'P'
                                                     AND t2.trx_dat =
                                                         to_date('2015-01-22'
                                                         , 'yyyy-MM-dd')) t1,
                                           itmdcr t2,
                                           itmstatement t3
                                         WHERE t1.itm_cde = t2.itm_cde
                                               AND t1.dcr_flg = t2.dcr_flg
                                               AND t3.itm_cde = t1.itm_cde) t1
                                   GROUP BY t1.statement_cde) t2
                          ON t1.statement_cde = t2.statement_cde
                      GROUP BY t1.parent_cde
                      UNION ALL
                      SELECT
                        t1.statement_cde,
                        sum(t1.txn_amt) AS sumamt
                      FROM (SELECT
                              CASE
                              WHEN t2.plus_status IS NULL
                                THEN
                                  0
                              WHEN t2.plus_status = '0'
                                THEN
                                  (0 - t1.txn_amt)
                              ELSE
                                t1.txn_amt
                              END AS txn_amt,
                              t3.statement_cde
                            FROM (SELECT
                                    t1.trx_cde,
                                    CASE
                                    WHEN t2.cur_cde <> '01'
                                      THEN
                                        (SELECT (t1.rat_val / 100)
                                         FROM pifxrt t1
                                         WHERE t1.cur_cde = t2.cur_cde
                                               AND t1.sec_ccy = '01'
                                               AND t1.use_status = 'Y'
                                               AND t1.xrt_cde = 1
                                               AND t1.eff_tim <= sysdate) *
                                        t2.txn_amt
                                    WHEN t2.txn_amt = 0 AND
                                         t1.fee_amt IS NOT NULL AND
                                         t1.fee_amt <> 0
                                      THEN
                                        t1.fee_amt
                                    ELSE
                                      t2.txn_amt
                                    END AS txn_amt,
                                    t1.fee_amt,
                                    t2.itm_cde,
                                    t2.dcr_flg
                                  FROM tifjnl t1, tifvch t2
                                  WHERE t2.jrn_num = t1.jrn_key
                                        AND t1.rec_sts = 'P'
                                        AND t2.rec_sts = 'P'
                                        AND t2.trx_dat =
                                            to_date('2015-01-22'
                                            , 'yyyy-MM-dd')) t1,
                              itmdcr t2,
                              itmstatement t3
                            WHERE t1.itm_cde = t2.itm_cde
                                  AND t1.dcr_flg = t2.dcr_flg
                                  AND t3.itm_cde = t1.itm_cde) t1
                      GROUP BY t1.statement_cde) t1
             ON s1.statement_cde = t1.statement_cde) t1)
