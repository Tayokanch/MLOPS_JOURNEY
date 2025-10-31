# WHile Loop
- This is used when we want to run a script as long as a condition is still true.
- This is used to execute a set of commands multiple times when you're not sure how many times
- To create infinite loops
- To Execute a set of commands until a specific condition occurs

- `mission_name =$1`
- `rocket-add $mission_name`
- `rocket-internal-power $mission_name`
- `rocket-start-engine $mission_name`
- `rocket-lift-off $mission_name`
- `rocket_status = $mission_name`

*Example 1*

`while [ $rocket_status = "launching" ]`
`do`
`sleep 2` : wait for 2 seconds

`rocket_status=$mission_name` : then check the status again, keeps doing the same until `rocket_status != launching`, then breaks out of the loop and continue with the rest of the script 

`done`
`if [ $rocket_status = "failed ]; then`
    `rocket-debug $mission_name`
`fi`


*Example 2*

while true
Do
    echo "1 shutdown
    echo "2 Restart"
    echo "3 Exit Menu"
    read -p "Enter your choice: " choice
    if [ $choice -eq 1]; then
        shutdown now
    elif [ $choice -eq 2]; then
        shutdown -r now
    elif [ $choice -eq 3]; then
        break
    else
        continue : if the choice isn't 1 -3, then continue
    fi
done
