

# format for writting script
 Example 1

GREEN="\033[0;32m"
NC="\033[0m"
# -------------Install and Configure Firewalld
echo -e "${GREEN}Installing Firewalld...${NV}" : This echo Install Firewalld in color green
sudo yum install -y firewalld

Example 32
function print_green(){
    GREEN="\033[0;32m"
    NC="\033[0m"

    echo -e "${GREEN} $1 ${NC}
}

# -------------Install and Configure Firewalld -----------

print_green "Installing Firewalld
sudo yum install -y firewalld
sudo service systemctl start
sudo sytemctl enable firewalld

Example 3

function print_color() {
    case $1 in
        "green") COLOR="\033[0;32m" ;;
        "red")   COLOR="\033[0;31m" ;;
        *)       COLOR="\033[0m" ;; # default to no color
    esac
    NC="\033[0m"
    echo -e "${COLOR}$2${NC}"
}

# ---------- function to check if a service is active ----------
function check_service_status() {
    is_service_active=$(systemctl is-active "$1")
    if [ "$is_service_active" = "active" ]; then
        print_color "green" "$1 service is active"
    else
        print_color "red" "$1 service is not active"
        exit 1
    fi
}

# -------------Install and Configure Firewalsld -----------

print_color "green" "Installing Firewalld..."
sudo yum install -y firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld
check_service_status "firewalld"


# ---------- function to check if a particular port is configured on firewalld ----------
function is_firewalld_rule_configured() {
    firewalld_port=$(sudo firewall-cmd --list-all --zone=public | grep ports)
    if [[ $firewalld_port == *$1* ]]; then
        print_color "green" "Port $1 is configured"
    else
        print_color "red" "Port $1 is not configured"
        exit 1
    fi
}

# ---------- function to list all the firewall ports configured ----------
function list_all_ports() {
    firewalld_ports=$(sudo firewall-cmd --list-all --zone=public)
    print_color "green" "$firewalld_ports"
}
