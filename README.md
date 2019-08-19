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
https://www.programmableweb.com/category/countries/api
* Deployment instructions

* ...
rails new world_travel_api
rails db:create
rails g migration add_countries_table

copy countries(name) from '/Users/Guest/Desktop/world_travel_api/countries.csv' DELIMITER ',';
