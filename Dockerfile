FROM node:10-alpine
COPY app.js app.js
EXPOSE 3000


RUN addgroup -S myawesomegroup
RUN adduser -S myawesomeuser -G myawesomegroup
USER myawesomeuser
CMD [ "node","app.js" ]