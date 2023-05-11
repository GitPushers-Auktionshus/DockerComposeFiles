FROM mongo:latest

# Copy initialization script
COPY mongo-init.js /docker-entrypoint-initdb.d/
