FROM sj26/mailcatcher:latest

ENV MAIL_PORT=25
ENV WEB_PORT=8080

EXPOSE 25 8080

# This nessesary to set listen ports via ENV vars
ENTRYPOINT ["/bin/sh", "-c", "exec /usr/local/bundle/bin/mailcatcher --foreground --ip=0.0.0.0 --smtp-port=${MAIL_PORT} --http-port=${WEB_PORT}"]
