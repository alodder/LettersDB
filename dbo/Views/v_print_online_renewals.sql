CREATE view [dbo].[v_print_online_renewals] as
SELECT p1.pkey,
       p1.printdate,
	   p1.entrydate,
	   p1.record,
	   p1.lettername,
	   p1.template,
	   t1.path,
	   p1.barcode,
	   p1.letterdata
  FROM letters_v2_beta.dbo.printdata AS p1
 INNER JOIN letters_v2_beta.dbo.templatedata AS t1
    ON (p1.section = t1.section AND p1.template = t1.name)
 WHERE p1.section = -3