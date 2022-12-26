# Hosting a Full-Stack Application

 **This is the third project in Advanced Full-Stack Web Developer track in Udacity training.**

---

The purpose of this project to demonstrate how to take a newly developed Full-Stack application built for a retailer and deploy it to a cloud service provider so that it is available to customers. We used AWS console to start and configure the services the application needs such as elastic beanstack, RDS postgres database and S3 buckets to store product information and a web server allowing the site to be discovered by potential customers.


<img src="Documents/beanstalk-diagrm.jpeg" alt="Udagram AWS infrastructure" title="Udagram AWS infrastructure">


First project with the fixes uploaded to a github repository to integrate with CircleCI. CircleCI is used for CI/CD automation process by creating a pipleline with predefined environment variables in CircleCi organization settings context.


<img src="Documents/pipeline-diagram.jpeg" alt="Udagram CircleCI pipeline" title="Udagram CircleCI pipeline">


### Udagram

This application is provided by Udacity as a 3-tiers application (frontend, backend api and database) to demonstrate skills of hosting a full application probably. 


### AWS infrastrcture

- AWS S3 bucket to host frontend UI
- AWS elastic beanstack as an orchestration service to create EC2 instances, Loadbalancer, security gruops and more services to perfectly hose a backend api application.
- AWS RDS postgres database to act as application database


### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent

- AWS CLI v2

- EB CLI v1

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

```

### Installation steps

Before starting to work on automation process, insure that the frontend and backend working probably.
1. test CircleCI config.yml code to insure its validity.
2. config.yml file start with installation of project dependencies python,node, AWS CLI and EB CLI
3. install dependencies for frontend with `npm run frontend:install`
4. install dependencies for backend with `npm run backend:install`
5. build frontend app with `npm run frontend:build`
6. install backend api with `npm run backend:build`
after succefully installation and build process complete the deploy process start
7. deploy environment variables to beanstalk application with executing  `bash udagram/udagram-api/bin/eb-env-sh`
8. finally deploying both applications with `npm run deploy`, this command will deploy frontend to S3 bucket and backend to EC2 instance. 


## Pipeline process

### Orbs

Here in the orb we stated that we will need node version 5.0.2, elastic-beanstalk cli version 2.0.1 and aws cli version 3.1.1

### Build job

In the build job we are using the docker image created by circlec, for the steps we are installing node version 14.15 then downloading the code from our github repository using the checkout command, then we are installing the dependencies for the frontend using the commane ` npm run frontend:install `, then we are doing the same for the backend using the command  ` npm run api:install ` then we are linting the frontend using the root level package.json with the command `npm run frontend:lint`, finally we are building the frontend and the backend using the commands `npm run frontend:build` and `npm run backend:build` respectively.

### Deploy job

for the depoly job we are stating that we will use the circleci docker image then we are installing the elastic beanstalk cli and the aws cli, finally we run the depoly script for the frontend and the backend using the command `npm run deploy`.

### Workflow

In the workflow we are stating that we will first run the build job then wait for approval from the user the we specify that we only want to listen to the master branch then we run the deploy job. 
