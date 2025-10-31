#!/bin/bash

# ----------------------------------------
# VARIABLES
# ----------------------------------------
DOMAIN="vouguenest.duckdns.org"
APP_DIR="/var/www/vouguenest"
GIT_REPO="git@github.com:Tayokanch/VogueNest-client.git"
INTERFACE="enp0s8"  # Host-only interface

# ----------------------------------------
# STEP 0: Detect Host-Only IP
# ----------------------------------------
HOSTONLY_IP=$(ip -4 addr show $INTERFACE | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "Detected Host-Only IP: $HOSTONLY_IP"

# ----------------------------------------
# STEP 1: Update system and install dependencies
# ----------------------------------------
echo "Updating system and installing Apache, Git, Node.js..."
sudo dnf update -y
sudo dnf install -y httpd git curl

# Install Node.js LTS & npm
curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo dnf install -y nodejs

# Enable and start Apache
sudo systemctl enable httpd
sudo systemctl start httpd

# ----------------------------------------
# STEP 2: Prepare project directory & clone repository
# ----------------------------------------
sudo mkdir -p $APP_DIR
sudo chown $USER:$USER $APP_DIR

if [ ! -d "$APP_DIR/.git" ]; then
    git clone $GIT_REPO $APP_DIR
else
    echo "Repository already exists. Pulling latest changes..."
    cd $APP_DIR
    git reset --hard
    git pull
fi

# ----------------------------------------
# STEP 3: Build React project
# ----------------------------------------
cd $APP_DIR
npm install
npm run build   # Generates /build folder

# ----------------------------------------
# STEP 4: Configure Apache Virtual Host
# ----------------------------------------
VHOST_FILE="/etc/httpd/conf.d/vouguenest.conf"

sudo bash -c "cat > $VHOST_FILE <<EOL
<VirtualHost *:80>
    ServerName $DOMAIN
    DocumentRoot $APP_DIR/build

    <Directory $APP_DIR/build>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog /var/log/httpd/vouguenest_error.log
    CustomLog /var/log/httpd/vouguenest_access.log combined
</VirtualHost>
EOL"

# Reload Apache to apply changes
sudo systemctl reload httpd

# ----------------------------------------
# STEP 5: Set permissions
# ----------------------------------------
sudo chown -R apache:apache $APP_DIR/build
sudo chmod -R 755 $APP_DIR/build

# ----------------------------------------
# STEP 6: Configure /etc/hosts for local testing
# ----------------------------------------
# Add localhost mapping if it doesn't exist
if ! grep -q "^127.0.0.1.*$DOMAIN" /etc/hosts; then
    echo "127.0.0.1 $DOMAIN" | sudo tee -a /etc/hosts
fi

# Add host-only mapping if it doesn't exist
if ! grep -q "^$HOSTONLY_IP.*$DOMAIN" /etc/hosts; then
    echo "$HOSTONLY_IP $DOMAIN" | sudo tee -a /etc/hosts
fi

# ----------------------------------------
# FINISHED
# ----------------------------------------
echo "----------------------------------------"
echo "React app deployed successfully!"
echo "VM Host-Only IP: $HOSTONLY_IP"
echo "Access the app locally at: http://$DOMAIN or http://127.0.0.1"
