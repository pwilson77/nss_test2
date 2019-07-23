# NSS_TEST2

## DESCRIPTION

This project loads Microsoft Excel file data and uploads it into the Ruby On Rails Database.

### Dependencies

1. Install a redis-server

### To run this project

1. git clone this repo
2. Do a bundle install **_bundle install_** to install required gems.
3. Migrate the database **_rails db:migrate_**
4. Open terminal and type **sidekiq** to run the Sidekiq gem that handles the task queue.
5. Run server **_ rails s_**
