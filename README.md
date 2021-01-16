# Product Catalog

Little project in Rails that lists products related to categories and their sub-categories.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Make sure you've got Ruby 2.7.2 installed on your machine.

### Installing

1. Clone repository and open it with an IDE or terminal of your choice.
```
git clone https://github.com/LakeSong/catalog.git
```
2. Change to the main directory of the project.

3. Run bundle install in order to get all the required gems:
```
bundle install
```
4. Prepare the database and populate it with data:
```
rake db:migrate db:seed
```
5. Open your browser at **localhost:3000** and check out the catalog!
    

## Running the tests

Run the following commands:
1. Prepare the test database:
```
rake db:migrate db:test:prepare
```
2. Run the following command to execute all tests:
```
bundle exec rspec spec
```

Simple tests to make sure data is valid and controller methods assign correct values.

## Production

Production build is available on Heroku, at https://immense-earth-54793.herokuapp.com/