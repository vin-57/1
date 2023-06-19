FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
ENV STATIC_URL /static
ENV STATIC_PATH /usr/lib/cgi-bin/static
COPY index.html /usr/lib/cgi-bin/static
EXPOSE 80
CMD ["nginx", '"-g", "daemon pff;"]
