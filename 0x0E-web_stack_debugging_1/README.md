0.  find out what’s keeping your Ubuntu container’s Nginx installation from listening on port 80
sudo certbot certonly --standalone --preferred-challenges http --http-01-port 80 -d davyies.tech -d www.davyies.tech
DOMAIN='www.davyies.tech' sudo -E bash -c 'cat /etc/letsencrypt/live/$DOMAIN/fullchain.pem /etc/letsencrypt/live/$DOMAIN/privkey.pem > /etc/haproxy/certs/$DOMAIN.pem'