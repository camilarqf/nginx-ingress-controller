FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

HEALTHCHECK --interval=30s --timeout=10s --retries=3 --start-period=1m \
    CMD curl -f http://localhost/healthcheck || exit 1

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
