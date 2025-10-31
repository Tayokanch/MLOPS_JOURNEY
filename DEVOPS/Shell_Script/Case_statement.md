# CASE STATEMENT

* This is used in exchange of if statement

- Example 1.

while true
do
    echo "1. Shutdown"
    echo "2. Restart"
    echo "3. Exit Menu"
    read -p "Enter choice: " choice
    case $choice in
        1) shutdown now ;;
        2) shutdown -r now ;;
        3) break ;;
        *) continue ;;
    esac
done

- Example 2.

**os=$1**

case $os in
  "Fedora") echo "Uses RPM package manager" ;;

  "RHEL") echo "Uses RPM package manager" ;;

  "CentOS") echo "Uses RPM package manager" ;;

  "Debian") echo "Uses DEB package manager" ;;

  "Ubuntu") echo "Uses DEB package manager" ;;
esac

Run : bash file_name.sh Centos =   echo "Uses RPM package manager