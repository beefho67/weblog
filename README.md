## Run weblog on docker container locally
* [Use docker compose](https://docs.docker.com/compose/rails/)
* [Tutorial in Chinese](https://5xruby.tw/posts/deploying-your-docker-rails-app/)

## Deploy weblog to Google Cloud Compute Engine
1. [Running Docker Compose with Docker](https://cloud.google.com/community/tutorials/docker-compose-on-container-optimized-os)
2. tar the weblog folder and scp to the created Google Cloud Compute Engine instance
3. Untar the weblog tar ball
4. build the docker image using docker-compose
   ```ruby
   docker-compose run web rails new . --force --no-deps --database=postgresql
   ```
   and
   ```ruby
   docker-compose build
   ```
5. Run the app by
   ```ruby
   docker-compose up
   ```
       

