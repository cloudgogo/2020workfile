OPTIONS (skip=1)
LOAD DATA
INFILE "/dw-data/EBS-REPORT-AUD/20190410/csv/20190410_plsheet_2019-03.csv"
append
INTO TABLE EBS_PLSHEET_LINE
fields terminated by "^*"
Optionally enclosed by '"'
trailing nullcols
(
report_id,
ITEM_NAME,
LINE_NUM,
DEPT_PTD_0602800001 "to_number(:DEPT_PTD_0602800001)",
DEPT_PTD_0602800002 "to_number(:DEPT_PTD_0602800002)",
DEPT_PTD_0602800003 "to_number(:DEPT_PTD_0602800003)",
DEPT_PTD_0602800004 "to_number(:DEPT_PTD_0602800004)",
DEPT_PTD_0602800005 "to_number(:DEPT_PTD_0602800005)",
DEPT_PTD_0602800006 "to_number(:DEPT_PTD_0602800006)",
DEPT_PTD_0602800007 "to_number(:DEPT_PTD_0602800007)",
DEPT_PTD_0602800008 "to_number(:DEPT_PTD_0602800008)",
DEPT_PTD_0602800009 "to_number(:DEPT_PTD_0602800009)",
DEPT_PTD_0602800010 "to_number(:DEPT_PTD_0602800010)",
DEPT_PTD_0602800011 "to_number(:DEPT_PTD_0602800011)",
DEPT_PTD_0602800012 "to_number(:DEPT_PTD_0602800012)",
DEPT_PTD_0602800013 "to_number(:DEPT_PTD_0602800013)",
DEPT_PTD_9999999 "to_number(:DEPT_PTD_9999999)",
DEPT_PTD_0 "to_number(:DEPT_PTD_0)",
DEPT_YTD_0602800001 "10",
DEPT_YTD_0602800002 "10",
DEPT_YTD_0602800003 "10",
DEPT_YTD_0602800004 "10",
DEPT_YTD_0602800005 "10",
DEPT_YTD_0602800006 "10",
DEPT_YTD_0602800007 "10",
DEPT_YTD_0602800008 "10",
DEPT_YTD_0602800009 "10",
DEPT_YTD_0602800010 "10",
DEPT_YTD_0602800011 "10",
DEPT_YTD_0602800012 "10",
DEPT_YTD_0602800013 "10",
DEPT_YTD_9999999 "10",
DEPT_YTD_0 "10",
etl_date "sysdate",
period_date "'2019-03'",
data_date "(select data_date from etl_control.ctl_general_parameter)"
)
