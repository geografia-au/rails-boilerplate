# Docker-based Rails boilerplate

This boilerplate allows Docker-based development environment. It has the following goals:

* Testing Continuous Integration
* Continuous Delivery Pipeline
* Deployment to AWS ECS
* Use AWS RDS for Production Database

This includes:

* Postgresql 9.6
* Rails 5


## Development

After cloning repository:

```bash
# 1. build
docker-compose build .

# 2. start
docker-compose up

# 3. setup
docker-compose run app rake db:setup

# 4. test
docker-compose run app rake test
```
