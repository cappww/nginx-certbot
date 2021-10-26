# This script must be invoked at the project root directory
echo "0 0 1 * * $(pwd)/certbot/renew.sh" | sudo tee -a /var/spool/cron/"$USER"