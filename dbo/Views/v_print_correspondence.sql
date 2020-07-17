CREATE view [dbo].[v_print_correspondence] as
select
 p1.pkey,
 p1.printdate,
 p1.entrydate,
 p1.letterdata,
 t1.section,
 p1.lettercode,
 p1.actioncode,
 p1.actioncode_comments,
 p1.actioncode_dollar,
 p1.template,
 p1.questys,
 p1.record,
 p1.lettername,
 p1.userid,
 p1.printcopies,
 t1.name,
 t1.path,
 p1.barcode
from
 letters_v2_beta.dbo.printdata as p1 with (nolock)
 inner join letters_v2_beta.dbo.templatedata as t1
 on (p1.section = t1.section and p1.template = t1.name)