FROM node:8.15.0-alpine

ADD _site /site


RUN npm install -g http-server

EXPOSE 80

CMD ["http-server", "./site",  "-p", "80"  ]
