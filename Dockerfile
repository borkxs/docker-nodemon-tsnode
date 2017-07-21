FROM nodesource/node:4

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

COPY voldock /home/nodejs/app
RUN npm install --production

# RUN groupadd -r nodejs \
#    && useradd -m -r -g nodejs nodejs
# USER nodejs

CMD [ "npm", "run", "start" ]
