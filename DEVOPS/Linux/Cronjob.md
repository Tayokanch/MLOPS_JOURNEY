* **Crobjob** : This is usedfor scheuduling a repetitive task, to run automatically at the scheuduled time 

**HOW TO SCHEDULE A TASK/JOB**
- crontab -e remote_user (NO SUDO)
  - A file will open with Vi editon
  - The first five fields are used to specify the exact shcedule to run the task.
  - The sixth field is the command to run