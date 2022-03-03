# Sleep to avoid running on any exact time
SECONDS="$(awk 'BEGIN{srand(); print int(rand()*(3600+1))}')"
echo "Sleeping for $SECONDS seconds"
sleep $SECONDS

docker run -it --rm --name certbot \
        -v "/etc/letsencrypt:/etc/letsencrypt" \
        -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
        certbot/certbot renew -q

