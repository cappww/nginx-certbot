# Nginx must be off or not on port 80
# The --standalone flag and http challenge will not work for wildcard domains
# Wildcard domains require --manual and dns challenge
sudo docker run -it --rm --name certbot \
	-v "/etc/letsencrypt:/etc/letsencrypt" \
	-v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
	-p 80:80 \
	-p 443:443 \
	certbot/certbot certonly \
		--standalone \
		-d <sub.domain-name.com> \
		--preferred-challenges http

# TODO: Add certify script for wildcard domains