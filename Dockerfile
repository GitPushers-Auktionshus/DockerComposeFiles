FROM hashicorp/vault:latest

# Copy the setup_vault.sh script into the container
COPY populate_vault.sh /app/populate_vault.sh

# Set execute permissions for the setup_vault.sh script
RUN chmod +x /app/populate_vault.sh

# Copy the docker-compose.yml file into the container
COPY docker-compose-vault.yml /docker-compose-vault.yml

# Execute the setup_vault.sh script and start the Docker Compose services
CMD vault server -dev -dev-root-token-id="00000000-0000-0000-0000-000000000000" -dev-listen-address="0.0.0.0:8200" & sleep 5 && /app/populate_vault.sh && docker-compose -f /docker-compose-vault.yml up -d