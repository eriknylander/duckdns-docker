FROM alpine:3.7
RUN apk add --no-cache curl
COPY start.sh /
CMD ["sh", "start.sh"]
