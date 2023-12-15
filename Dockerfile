FROM oven/bun:latest

# Create and change to the app directory.
WORKDIR /app

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure both package.json AND package-lock.json are copied.
# Copying this separately prevents re-running npm install on every code change.
# COPY package*.json ./
COPY src/. /app/
# Install dependencies.
# If you add a package-lock.json speed your build by switching to 'npm ci'.
# RUN npm ci --only=production
RUN bun install
EXPOSE 8080
# Copy local code to the container image.
# COPY . ./

# Run the web service on container startup.
# CMD ["bun", "run", "dev"]
# CMD []
CMD [ "bun", "run", "dev"]