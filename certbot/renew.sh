# Sleep to avoid running on any exact time
SECONDS="$(awk 'BEGIN{srand(); print int(rand()*(3600+1))}')"
echo "Sleeping for $SECONDS seconds"
sleep $SECONDS

echo "stopping nginx"
docker stop nginx_proxy

echo "renewing certs"
docker run -it --rm --name certbot \
        -v "/etc/letsencrypt:/etc/letsencrypt" \
        -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
	-p 80:80 \
	-p 443:443 \
        certbot/certbot renew

echo "starting nginx again"
docker start nginx_proxy
