FROM nginx:alpine

# Copy built React apps into the Nginx directory
COPY ./lerna/ /usr/share/nginx/html/lerna/
COPY ./new/ /usr/share/nginx/html/new/

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/nginx.conf
