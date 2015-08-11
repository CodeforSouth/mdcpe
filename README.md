# MPE (Miami-Dade County Permit Estimator)

## What
The Miami-Dade County Permit Estimator is an open source project for sorting, calculating
and managing the open permit data from Miami-Dade County’s database. The purpose of
this project is to give individuals and businesses a clearer understanding of permit
prices.

#### Status
The project as of August 13, 2015 is in its first iteration.

## Who
The creators of this project are Steve Toro, Christina Vinces and Ricky Gonzalez Jr.

## How
#### Install
To set up your local database with Miami-Dade County’s data, please following the
instructions below:

A rake task as been included (listed as ‘populate_database.rake’) with this
project. This task is responsible for populating your local database with county’s
data.

![Instructions](http://i.imgur.com/cLGOUO9.png)

1. Inside populate_database.rake is a rails generate command for generating your model
(this project defaults to the name ‘Permit’ for the model).

2. Run the rails g command exactly as printed to create your database.

3. Once your Permit model is created, execute the populate_database.rake task to
populate your local database. This may take some time.
