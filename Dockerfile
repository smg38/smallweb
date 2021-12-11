FROM nginx:alpine
LABEL org.opencontainers.image.authors="SMG38@mail.ru"
ENV PORT=88
WORKDIR /www
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

COPY ./www /www/

#RUN apk add bash mc
EXPOSE ${PORT}/tcp
HEALTHCHECK --interval=1m --timeout=3s \
  CMD curl -f http://localhost:${PORT}/ || exit 1

