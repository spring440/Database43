USE [s17guest43]
GO
BACKUP DATABASE s17guest43
 TO DISK = 'C:\s17guest43.Backup.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLSaturday_Backup',
      NAME = 'Full Backup of SQLSaturday';
GO