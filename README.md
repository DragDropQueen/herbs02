# README

## Create database

From terminal, in your project directory
    $ psql -U gschool_user -d postgres -f scripts/create_database.sql
    $ sequel -m migrations postgres://gschool_user:password@localhost/herbs_development
    $ sequel -m migrations postgres://gschool_user:password@localhost/herbs_test