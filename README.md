# Lets build it :)

Hey! First of all, thank you for interviewing with GovPredict.If you’ve made it this far, it means we’re already impressed with your background, abilities, and potential to fit in with our team.

## Objective

Your objective is run this rails application in PRODUCTION mode!

## Containers, Docker e Kubernetes

You must create containers to each of these services:

- Application
- PostgreSQL
- ElasticSearch
- Redis
- RabbitMQ

The orchestration of these containers must performed by Kubernetes.

## What will be evaluated?

We will evaluate the performance and quality of all Dockerfiles and Kubernete file.
The rails application is already configurated using enviroment variables to each service, just use it to connect your services.

## How should I configure?

We set up the enviroments variables in the rails code, you just have to set up in your way to run the application. You don't need to change the rails application.

### Set up PostgreSQL config

Available configurations

```Ruby
PG_DATABASE=...
PG_HOST=...
PG_USER=...
PG_PASSWORD=...
```

### Set up ElasticSearch config

Available configurations

```Ruby
ELASTICSEARCH_URL=...
```

### Set up RabbitMQ config

The RabbitMQ consumer performs using Sneakers gem. You will have to start the sneakers to  create an instance to start listening to the messages posted in RabbitMQ.

Available configurations

```Ruby
RABBITMQ_URL=...
RABBITMQ_EXCHANGE=...
RABBITMQ_QUEUE=...
```

#### Listening the messages

Start sneakers using this command:

```Ruby
WORKERS=Workers::LegislatorWorker bundle exec rake sneakers:run
```

### Set up Sidekiq/Redis config

Sidekiq is a tool to manage the async job. The application will run a job after receiving a RabbitMQ's message. Sidekiq uses the Redis to persist his queue, you must configure the Redis and connect to the application.

Available configurations

```Ruby
REDIS_URL=...
```

#### Run sidekiq

```Ruby
bundle exec sidekiq
```

### Set up Rails

You must run this command when run the first time the application, this command set up the Postgres database.

```Ruby
./bin/setup
```

### Run Rails

You should configure your application to run in PRODUCTION mode.
tips: you can use ngix + puma/unicorn

### To test if your application is working post message on RabbitMQ

Post a message in the RabbitMQ queue with this structure to present the data

```Ruby
{
  "name": "Legislator",
  "chamber": "house"
}
```

Check the result in the root's page of you application

`http://localhost:3000`

## Bonus

- The application should run in Production Mode. A tip to run the rails in this way is to set up Nginx and Puma.
- We like our software to have well-thought architecture. Think about more than just getting your solution working -- think about how you can best organize your code.
- You can change the rails application if you think you need. Document these changes in the README.
- Bonus: Deploy the application to 3 different containers, and load balance requests to this instances using nginx.
