- **Crobjob** : This is usedfor scheuduling a repetitive task, to run automatically at the scheuduled time

**HOW TO SCHEDULE A CRONJOB TO RUN TASK/JOB/SCRIPT**

- <**crontab -e remote_user**> (NO SUDO)
  - A file will open with Vi editon
  - The first five fields are used to specify the exact shcedule to run the task.
  - The sixth field is the command to run
  
- <**crontab -l**> : To list all the Task or Jobs scheduled
  
- <**cat /tmp/system-report.txt**> or <**tail /var/log/syslog**> : This is to validate of the task as run

_HOW TO SET TIME AND DATE_

- min(10) hr(8) day(19) month(2) (1)(day of the weeke) = 19th February 08:10am Monday

- min(10) hr(8) day(19) month(2) (\*)(any weekday) = 19th February 08:10am weekday

- min(10) hr(8) day(19) month(_) (_)(any weekday) = 19th of Every Month 08:10am weekday
- min(10) hr(_) day(_) month(_) (_)(any weekday) = Every 10mins of all days of the months
- min(_) hr(_) day(_) month(_) (\*)(any weekday) = Every minute of all days of the months
