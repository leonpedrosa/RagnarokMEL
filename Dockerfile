# docker build -f Dockerfile -t leondeoliveirapedrosa/tutuco:dev . && docker push leondeoliveirapedrosa/tutuco:dev
FROM nginx
RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80
