# Conditional Statement
* if [ $rocket_status = "failed" ]; then
    echo rocket_debug $mission_name
  elif [$rocket_status = "success"]
    echo "This is successful"
  fi


# Conditional Operator
- = : This is used to compare 2 strings
- != : This is use if string is not equal to string
- -eq: If number is equal to number
- -ne: If number is not equal to number
- -gt: if number1 is greater than number2
- -lt: if number1 is less than number2
- -e : If file exists
- -d : if file exists and is a directory
- -s : if file exists and has size greater than 0
- -x : if the file is executable
- -w : if the file is writeable
- -z : If a string is empty


# Double Condition

- [Cond1] && [Cond2]: If cond1 and Cond2 are true
- [Cond1] || [Cond2]: if one of the Condition is true

OR

- [[Cond1 && Cond2]]
- [[Cond1 || Cond2]]