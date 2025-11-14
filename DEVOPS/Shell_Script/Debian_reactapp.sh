#!/bin/bash

# ----------------------------------------
# VARIABLES
# ----------------------------------------
DOMAIN="vouguenest.duckdns.org"
APP_DIR="/var/www/vouguenest"
GIT_REPO="git@github.com:Tayokanch/VogueNest-client.git"

# ----------------------------------------
# STEP 0: Detect Host-Only IP (simplified)
# ----------------------------------------
HOSTONLY_IP=$(ip -4 addr show enp0s8 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "Detected Host-Only IP: $HOSTONLY_IP"

# ----------------------------------------
# STEP 1: Update system and install dependencies
# ----------------------------------------
echo "Updating system and installing Apache, Git, Node.js..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y apache2 git curl

# Install Node.js LTS & npm
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# ----------------------------------------
# STEP 2: Prepare project directory & clone repository
# ----------------------------------------
sudo mkdir -p $APP_DIR
sudo chown $USER:$USER $APP_DIR

# Clone repo if not already cloned
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
VHOST_FILE="/etc/apache2/sites-available/vouguenest.conf"

sudo bash -c "cat > $VHOST_FILE <<EOL
<VirtualHost *:80>
    ServerName $DOMAIN
    DocumentRoot $APP_DIR/build

    <Directory $APP_DIR/build>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/vouguenest_error.log
    CustomLog \${APACHE_LOG_DIR}/vouguenest_access.log combined
</VirtualHost>
EOL"

# Enable rewrite module & reload Apache
sudo a2enmod rewrite
sudo systemctl reload apache2

# ----------------------------------------
# STEP 5: Set permissions
# ----------------------------------------
sudo chown -R www-data:www-data $APP_DIR/build
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
