
# Pipeline process

### Orbs

Here in the orb we stated that we will need node version 5.0.2, elastic-beanstalk cli version 2.0.1 and aws cli version 3.1.1

### Build job

In the build job we are using the docker image created by circlec, for the steps we are installing node version 14.15 then downloading the code from our github repository using the checkout command, then we are installing the dependencies for the frontend using the commane ` npm run frontend:install `, then we are doing the same for the backend using the command  ` npm run api:install ` then we are linting the frontend using the root level package.json with the command `npm run frontend:lint`, finally we are building the frontend and the backend using the commands `npm run frontend:build` and `npm run api:build` respectively.

### Deploy job

for the depoly job we are stating that we will use the circleci docker image then we are installing the elastic beanstalk cli and the aws cli, finally we run the depoly script for the frontend and the backend using the command `npm run deploy`.

### Workflow

In the workflow we are stating that we will first run the build job then wait for approval from the user the we specify that we only want to listen to the master branch then we run the deploy job. 
