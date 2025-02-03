FROM node:20-alpine As development

# Create app directory
WORKDIR /usr/src/app
COPY . ./
RUN npm install
RUN npm i @aws-amplify/ui-react aws-amplify

EXPOSE 3000
CMD ["npm", "run", "dev"] 