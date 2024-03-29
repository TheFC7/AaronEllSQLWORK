USE [msdb]
GO

GO    
IF  EXISTS (SELECT job_id FROM msdb.dbo.sysjobs_view WHERE name = N'Backup of Database GamingProject')
EXEC sp_delete_job @job_name = N'Backup of Database GamingProject' , @delete_unused_schedule=1 ;  
GO  


DECLARE @jobId BINARY(16)
EXEC  msdb.dbo.sp_add_job @job_name=N'Backup of Database GamingProject', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_netsend=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'Backup of Database GamingProject ', 
		@category_name=N'Database Maintenance', 
		@owner_login_name=N'ACNZ02\ames', @job_id = @jobId OUTPUT
select @jobId
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'Backup of Database GamingProject', @server_name = N'B14\MSSQLSERVER_AARO'
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'Backup of Database GamingProject', @step_name=N'Backup GamingProject', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'BACKUP DATABASE [GamingProject] TO  DISK = N''D:\Aaron''''s gaming Project\Backup Of gamingproject'' WITH NOFORMAT, NOINIT,  NAME = N''GamingProject-Full Database Backup'', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
', 
		@database_name=N'GamingProject', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'Backup of Database GamingProject', @step_name=N'Log Backups', 
		@step_id=2, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_fail_action=2, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'BACKUP LOG [GamingProject] TO  DISK = N''D:\Aaron''''s gaming Project\Log Files of gaming project'' WITH NOFORMAT, NOINIT,  NAME = N''GamingProject-Full Database Backup'', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
', 
		@database_name=N'GamingProject', 
		@flags=0
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'Backup of Database GamingProject', 
		@enabled=1, 
		@start_step_id=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_netsend=2, 
		@notify_level_page=2, 
		@delete_level=0, 
		@description=N'Backup of Database GamingProject ', 
		@category_name=N'Database Maintenance', 
		@owner_login_name=N'ACNZ02\ames', 
		@notify_email_operator_name=N'', 
		@notify_netsend_operator_name=N'', 
		@notify_page_operator_name=N''
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'Backup of Database GamingProject', @name=N'Backup 1 time', 
		@enabled=1, 
		@freq_type=1, 
		@freq_interval=1, 
		@freq_subday_type=0, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20160929, 
		@active_end_date=99991231, 
		@active_start_time=170000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO
