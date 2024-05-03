# Flutter-Serverpod-Architecture

This is a sample project to show how to use Serverpod with Flutter.

## Generating code

Whenever you change your code in either the `endpoints` or `models` directory, you will need to regenerate the classes managed by Serverpod. Do this by running `serverpod generate`.

```bash
cd serverpod_architecture_server
serverpod generate
```

## Starting the server

Make sure that [Docker Desktop](https://www.docker.com/products/docker-desktop/) is running, then start your Docker containers with `docker compose up --build --detach`. It will start Postgres and Redis. Then, run `dart bin/main.dart --apply-migrations` to start your server.

```bash
cd serverpod_architecture_server
docker compose up --build --detach
dart bin/main.dart --apply-migrations
```

> If you need to stop the Docker containers at some point, just run `docker compose stop` or use the Docker Desktop application. You can also use Docker Desktop to start, stop, and manage your containers.

## Running the demo app

Start the default demo app by changing the directory into the Flutter package that was created and running `flutter run`.

```bash
cd serverpod_architecture_flutter
flutter run -d chrome
```

## Migrations

With database migrations, Serverpod makes it easy to evolve your database schema. When you make changes to your project that should be reflected in your database, you need to create a migration. A migration is a set of SQL queries that are run to update the database. To create a migration, run `serverpod create-migration` in the home directory of the server.

```bash
cd serverpod_architecture_server
serverpod create-migration
```
