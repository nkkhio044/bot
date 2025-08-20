FROM node:lts-buster

# Clone repo into /root/bot
RUN git clone https://github.com/nkkhio044/bot.git /root/bot
WORKDIR /root/bot

# Install dependencies & pm2
RUN npm install -g pm2 && (npm install || yarn install --network-concurrency 1)

# Copy extra files (if needed, otherwise remove this)
# COPY . .

# Expose port
EXPOSE 9090

# Start app
CMD ["npm", "start"]
