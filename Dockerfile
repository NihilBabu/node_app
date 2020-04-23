FROM node:10-alpine
COPY app.js app.js
EXPOSE 3000

RUN adduser -r -u 1001 -g root nonroot
RUN addgroup -S appgroup && adduser -S nonroot -G appgroup
RUN chown -R nonroot app.js
USER nonroot


CMD [ "node","app.js" ]