# Product Catalog

Little project in Rails that list products related to categories and their sub-categories.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Make sure you've got Ruby 2.7.2 installed on your machine.

### Installing

1. Clone repository and open it with an IDE or terminal of your choice.
```
git clone https://github.com/LakeSong/catalog.git catalog
```
2. Change to the main directory of the project.
3. Run bundle install in order to get all the required gems:
```
bundle install
```
4. Prepare your DB and populate it with data:
```
rake db:migrate db:seed
```
5. Open browser at localhost:3000 and checkout our catalog!
    

## Running the tests

Run the following commands:
    1. rake db:migrate db:test:prepare
    2. bundle exec rspec spec

    Simple tests to make sure data is valid and controller methods assign correct values.

## Production

Production build is available on Heroku, at: https://immense-earth-54793.herokuapp.com/