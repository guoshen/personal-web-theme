FROM jekyll/jekyll:latest

ADD / /srv
RUN chown -R jekyll:jekyll /srv
WORKDIR /srv
RUN find . -type d -exec chmod +rx {} \;
RUN jekyll build 


RUN npm install -g http-server

EXPOSE 8080

CMD ["http-server", "./_site"  ]