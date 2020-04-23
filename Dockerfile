FROM node:10-alpine
COPY app.js app.js
EXPOSE 3000
RUN useradd -u 8877 john
USER john
CMD [ "node","app.js" ]