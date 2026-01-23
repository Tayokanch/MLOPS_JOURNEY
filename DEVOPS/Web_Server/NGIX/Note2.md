  expose:
    - "3000"      # for other containers like Nginx
  ports:
    - "3000:3000" # host access, so Insomnia can reach it

# How to reload an Nginx container without shutting down

sudo docker exec nginx nginx -t
sudo docker exec nginx nginx -s reload
sudo docker exec -it <nginx_container_id> nginx -s reload

