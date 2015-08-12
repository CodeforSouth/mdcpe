# MDCPE (Miami-Dade County Permit Estimator)

## What
![Site](http://i.imgur.com/QLYcRCj.png)
The Miami-Dade County Permit Estimator is an open source project for sorting, calculating
and managing the open permit data from Miami-Dade County’s database. The purpose of
this project is to give individuals and businesses a clearer understanding of permit
pricing and availability by offering a more human-friendly interface for accessing Miami-Dade County’s public permit data.

#### Status
The project as of August 13, 2015 is in its first iteration.

#### Link
A live demo of this project can be found at www.mdcpe.co

## Who
The creators of this project are [Steve Toro](github.com/stevetoro), [Christina Vinces](github.com/christinavinces) and [Ricky Gonzalez Jr.](github.com/RickyGonzJr)

A big thank you to the following people and organizations for their help in the creation of this project:

Ernie Hsiung, Mike Sarasti, Ed Toro & Code for Miami

## How
#### Install
To set up your local database with Miami-Dade County’s data, please follow the
instructions below:

A rake task as been included (listed as ‘populate_database.rake’) with this
project. This task is responsible for populating your local database with county’s
data.


1. Open your terminal application and run `git clone https://github.com/RickyGonzJr/mdcpe` to clone this project onto your computer.

2. `cd` into your mdcpe folder.

3. Run `rake db:migrate` to create your table.

4. Run `rake populate_database:permits` to populate your table with Miami-Dade County’s permit data. This process will take some time. You can limit how many rows of data you decide to pull down by adjusting the `$limit` value in the HTTParty response. If you’d like to pull down all of the data, simply remove this value.

![Instructions](http://i.imgur.com/oexvF9u.png)

## License
This application is freely available under the MIT License: https://github.com/RickyGonzJr/mdcpe/blob/master/LICENSE.md
