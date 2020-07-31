FROM alpine:latest
LABEL description="nginx"
RUN apk --update add bash nginx \&& rm -rf /var/cache/apk/*
RUN mkdir -p /html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
