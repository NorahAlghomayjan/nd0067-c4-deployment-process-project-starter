## Infrastructure Needs;

Udagram is deployed using AWS Services:

### - Postgres RDS: to Host the postgres database:

Connect to the project using the generated [rds url](database-2.cdubabhratqm.us-east-1.rds.amazonaws.com).

### - S3 Bucket: Contains the udagraam-frontend files.

Created Empty S3 Bucket and then push the udagram-frontend files by adding the name of the bucket (`myproject4212`) to the script in bin/deploy.sh , url is created to get access to the application [udagram-frontend](http://myproject4212.s3-website-us-east-1.amazonaws.com).

### - EB: Contains the Udagram-api backend files.

Create EB Environemnt and EB Application to contain the backend udagram-api files, they are pushed using the command `eb deploy` , once this command is excuted the AWS EB is going to create S3 Bucket to conatin zipped udagram-api files, url is created to get access to udagram-api backend [udagram-api](http://udagram-env.eba-ttjjw93i.us-east-1.elasticbeanstalk.com/).

### Diagram Show the Process of Deploying an App using AWS Services:

![The different AWS services used for hosting the API, Frontend, and the DB.](/Docs/AWS.drawio.png "Used AWS Services").
