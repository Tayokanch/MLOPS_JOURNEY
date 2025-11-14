- for  mission in $(cat mission-name.txt)
  do
   create-and-launch $mission
  done

- for mission in 1 2 3 4 5 6
  do 
  create-and-launch-rocket mission-$mission
  done



- for mission n {0..100}
  do 
  create-launch-rocket mission-$mission
  done

- for (( mission = 0 ; mission <= 100; mission++))
   do
   create-launch-rocket mission-$mission
   done


- #!/bin/bash

for image in /home/bob/images/*; do
    if [[ "$image" == *.jpeg ]]; then
        new_name="${image%.jpeg}.jpg"
        mv "$image" "$new_name"
        echo "Renamed: $image → $new_name"
    fi
done

**Explanation**

1. for image in /home/bob/images/* → loops through all files in the directory.

2. [[ "$image" == *.jpeg ]] → checks if the filename ends with .jpeg (this is the right syntax for string pattern matching in Bash).

3. "${image%.jpeg}.jpg" → replaces the .jpeg suffix with .jpg.

4. mv → renames the file.