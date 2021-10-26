# nginx-certbot

## Prerequisites:
Be sure that your DNS records are pointing to the IP or domain of the host.
Be sure that ports 80 and 443 are open in the host machine.

## Steps
1. Add the desired domain name to the `certify.sh` script and run it.

2. Add desired domain name and configurations to the nginx.conf file.

3. `docker-compose up -d`

4. Run `./certbot/add-auto-renew.sh`. Be sure that the script is invoked in the project root.
