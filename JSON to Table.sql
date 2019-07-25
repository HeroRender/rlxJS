DECLARE @json NVARCHAR(MAX) 
SET @json = '[{"WorkSchedTempID":13,"WeekdayName":"MONDAY","PeriodIN":"8:00AM","PeriodOut":"12:00PM","Weekday":2},{"WorkSchedTempID":13,"WeekdayName":"MONDAY","PeriodIN":"1:00PM","PeriodOut":"6:00PM","Weekday":2},{"WorkSchedTempID":13,"WeekdayName":"TUESDAY","PeriodIN":"8:00AM","PeriodOut":"12:00PM","Weekday":3},{"WorkSchedTempID":13,"WeekdayName":"TUESDAY","PeriodIN":"1:00PM","PeriodOut":"6:00PM","Weekday":3},{"WorkSchedTempID":13,"WeekdayName":"WEDNESDAY","PeriodIN":"8:00AM","PeriodOut":"12:00PM","Weekday":4},{"WorkSchedTempID":13,"WeekdayName":"WEDNESDAY","PeriodIN":"1:00PM","PeriodOut":"6:00PM","Weekday":4},{"WorkSchedTempID":13,"WeekdayName":"THURSDAY","PeriodIN":"8:00AM","PeriodOut":"12:00PM","Weekday":5},{"WorkSchedTempID":13,"WeekdayName":"THURSDAY","PeriodIN":"1:00PM","PeriodOut":"6:00PM","Weekday":5},{"WorkSchedTempID":13,"WeekdayName":"FRIDAY","PeriodIN":"8:00AM","PeriodOut":"12:00PM","Weekday":6},{"WorkSchedTempID":13,"WeekdayName":"FRIDAY","PeriodIN":"1:00PM","PeriodOut":"5:00PM","Weekday":6}]'




SELECT * FROM OPENJSON(@json) 
	WITH (
		/*dito ide-declare yung fields ba ilalabas sa table*/
		[WorkSchedTempID] INT  'strict $.WorkSchedTempID',
		WeekdayName NVARCHAR(MAX)  '$.WeekdayName',
		PeriodIN NVARCHAR(MAX)  '$.PeriodIN',
		PeriodOut NVARCHAR(MAX)  '$.PeriodOut',
		[Weekday] INT  '$.Weekday')
