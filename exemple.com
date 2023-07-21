 server {
    listen 80;
    listen [::]:80;
    server_name  victis.fr;

    root /var/www/example.com;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}

