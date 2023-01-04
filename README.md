# Hosting a Full-Stack Application

### project overview

Udagram is an application to post and share images, users should sign-up to be able to post images.

### Tools and Softwares:

- Udagram is built in using:
  1. [Angular](https://angular.io/) For the Front-end - Single Page Application Framework.
  2. [Express](https://expressjs.com/) For the Backend-end - Javascript API Framework.
  3. [Node](https://nodejs.org) - Javascript Runtime.


- Udagram Is Deployed in AWS Services, using:
    1. [RDS] (https://us-east-1.console.aws.amazon.com/rds/home?region=us-east-1) - to host Postgres Database.
    2. [S3] (https://s3.console.aws.amazon.com/s3/home?region=us-east-1) - Bucket for the front-end (angular).
    3. [EB] (https://us-east-1.console.aws.amazon.com/elasticbeanstalk/home?region=us-east-1#/environments) - for the backend.

### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

```

### Getting Started:

#### Udagram Home URL

Users Can Access Website Using the following Link:

[Udagram Home Page](http://myproject4212.s3-website-us-east-1.amazonaws.com/home).

![Udagram home page](/assets/homepage.png "home page")

#### Signing-Up and Signing-In

Click Register in the Top-Right Corner to Sign-Up:

![Registering](nd0067-c4-deployment-process-project-starter/assets/registering.png "Registering")

Once User is Registered, the Email will be Showed in the Top-Right Corner instead of the Registered button :

![Registered](nd0067-c4-deployment-process-project-starter/assets/registered.png "Registered")

Registered Users Can Sign-In using Email & Password (case sensetive):

![Sign-In](nd0067-c4-deployment-process-project-starter/assets/sign-in.png "Sign-In")

### Documentaions:

1. Screenshots of the AWS can be found in: /assets/AWS
2. A screenshot of CircleCI Pipeline can be found in: /assets/CircleCI-Screenshots
3. A screenshot of CircleCI Environment variables can be found in: /assets/CircleCI-Screenshots/circleci-env-variables.png
4. A screenshot of CircleCI Config File can be found in: /assets/CircleCI-Screenshots/circleci-config.png
5. Docs folder in : /Docs