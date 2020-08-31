# Example project with GoodJob and Apartment

## Usage of multiple schemas with GoodJob (issues)

After updating from 1.1.2 GoodJob stopped processing jobs with this setup.
Either jobs are not queried or when it does `.owns_advisory_lock?` is false.

## Instructions

`bin/rails db:create db:schema:load db:seed`

This will create the public and `anotherschema`.

## Schedule a job

bin/rails c

ExampleJob.perform_later

## Run the executable

bundle exec good_job start

## Switch back to good_job 1.1.2 and run again

Uncomment gemfile to pull from 1.1.2

bundle install

bundle exec good_job start

## See that jobs got processed

bin/rails c

GoodJob::Job.last 

^ see that it's performed