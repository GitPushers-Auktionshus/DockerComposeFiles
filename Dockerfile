FROM hashicorp/vault:latest

# Copy the setup_vault.sh script into the container
COPY fill.sh fill.sh

# Set execute permissions for the setup_vault.sh script
RUN chmod +x fill.sh

# Execute the setup_vault.sh script and start the Docker Compose services
CMD sleep 5 && fill.sh