# CircleCi Pipeline

## What is A Pipeline:

Pipeline helps speed-up, automate deployment, also finding bugs using the principle of CI/CD (Continuous Integration / Continuous Delivery).

### .circleci/config.yml:

This file contains:

1. **version** : the circleci version that is being used.
2. **orbs**: set of instructions to instruct the server to setup specific softwares on the server in order to excute the pipleine.
3. **jobs**: groups of command to run in order, we have 2 sets (build & deploy).
4. **workflows**: instructions to excute jobs in specific order.

## version:

cicelci 2.1

## orbs:

in Udagram, we need 3 softwares to be installed and set in the server (Node , EB , AWS-CLI).

## jobs:

We have 2 sets (build & deploy).

### build:

1. base docker image.
2. install node.
3. run the commands (it going to trigger the commands in root package.json):
   1. Install Front-End Dependencies, that are listed in udagram-frontend/package.json.
   2. Install API Dependencies,that are listed in udagram-api/package.json.
   3. Run lint for the front-end to fix the problems in code.
   4. Build the front-end: these are the files that is going to be uploaded in S3 Bucket.
   5. Build the API: these are the files that is going to be uploaded in EB.

### deploy:

1. docker.
2. install node 14.15, eb , aws-cli , checkout
3. run:
   1. deploy the app : it going to trigger the command in root package.json deploy

## workflows:

The circleci will excute the jobs in the following order:

1. build:
   docker/image > steps/node/install > steps/checkout > steps/run
2. hold:
   wait for an approval from the owner.
3. deploy:
   docker/image > steps/node/install > steps/eb/setup > steps/aws-cli/setup > checkout > steps/run