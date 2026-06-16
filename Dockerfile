FROM node:10.21.0

RUN npm install -g serve@6.5.8

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /app

EXPOSE 5000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["serve", "-s", "build", "-p", "5000", "-n"]
