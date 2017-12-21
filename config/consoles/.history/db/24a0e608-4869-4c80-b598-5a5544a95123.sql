SELECT * from FOREXMANAGE
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM CIFTLR
WHERE TLR_IDT NOT LIKE '66%' 
  AND BEL_BDT = '0000100' 
  AND TLR_IDT <> '000012'
  AND REC_STS = 'P'
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM CIFTLR