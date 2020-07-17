ALTER ROLE [db_owner] ADD MEMBER [CCB\DbConnDev];


GO
ALTER ROLE [db_owner] ADD MEMBER [SQLPortal];


GO
ALTER ROLE [db_owner] ADD MEMBER [SQLUser1];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [CCB\report];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [CCB\DbConnDev];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [CCB\dbconnprod];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [report];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [SQLPortal];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [CCB\GrahamM];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [SQLUser1];


GO
ALTER ROLE [db_datareader] ADD MEMBER [CCB\report];


GO
ALTER ROLE [db_datareader] ADD MEMBER [CCB\DbConnDev];


GO
ALTER ROLE [db_datareader] ADD MEMBER [CCB\dbconnprod];


GO
ALTER ROLE [db_datareader] ADD MEMBER [CCB\mageen];


GO
ALTER ROLE [db_datareader] ADD MEMBER [report];


GO
ALTER ROLE [db_datareader] ADD MEMBER [SQLPortal];


GO
ALTER ROLE [db_datareader] ADD MEMBER [CCB\GrahamM];


GO
ALTER ROLE [db_datareader] ADD MEMBER [SQLUser1];

