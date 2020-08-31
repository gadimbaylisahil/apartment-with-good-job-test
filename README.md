# Example project with GoodJob and Apartment

## Usage of multiple schemas with GoodJob (issues)

After updating from 1.1.2 GoodJob stopped processing jobs with this setup.
Either jobs are not queried or when it does `.owns_advisory_lock?` is false.

## Instructions

`bin/rails db:create db:schema:load db:seed`

This will create the public and `anotherschema`.


