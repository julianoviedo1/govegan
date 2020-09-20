# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Local debug
### PostgreSQL
#### Launch
```bash
docker run --name govegan -e POSTGRES_USER=govegan -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432 postgres
```

### Ruby commands
```bash
# bundles
sudo gem install bundler
bundle install --path vendor/bundle

sudo gem install rails # rails

yarn install # yarn
rake db:create # db creation
rake db:migrate # db migration
rake db:seed # db seed
```

### Settings
**.env:**
```ini
CLOUDINARY_URL={}
GOVEGAN_DATABASE_HOST={}
GOVEGAN_DATABASE_USER={}
GOVEGAN_DATABASE_PASSWORD={}
GOVEGAN_DATABASE_PORT={}
```


rails generate migration null_user_id_on_cart

ruby script/generate migration AddPartNumberToProducts


```bash
docker pull postgres # bajar imagen
docker image ls # listar imagenes

docker build -t govegan /home/julianoviedo1/code/govegan -f /home/julianoviedo1/code/govegan/Dockerfile
docker build -t govegan .

docker run -d -e POSTGRES_PASSWORD=mipass -p 5432 postgres 

docker logs CONTAINER_ID
docker logs -f CONTAINER_ID # -f = follow

docker run --entrypoint bash govegan
```
