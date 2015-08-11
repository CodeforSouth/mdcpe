#=======================================================================
#=======================================================================
#=======================================================================
# ** POPULATING YOUR LOCAL DATABASE WITH MDC'S DATA **
#
# Run the following task using the rails generate code provided below.
# This will set up your local database with the same columns as
# listed on Miami-Dade County's permit database.
#
#=======================================================================
#=======================================================================
#=======================================================================

#=======================================================================
#=======================================================================
# ** GENERATE COMMAND **
# rails g model permit contractorzip:integer proposedusedescription permittype contractoraddress folionumber applicationtypecode:integer
# typecodedescription contractorcity contractorname proposedusecode:integer units:integer estimatedvalue:decimal floors:integer
# squarefeet:integer ownername contractorstate architectname issuedate:timestamp legaldescription1 permitnumber:integer
# legaldescription2 contractorphone jobsite categories:integer proposedusedetail
#
# Once you have successfully generated your Permit model, run the
# rake task 'populate_database' to begin the process. You may set
# your row limit by changing the '$limit' value.
#
#=======================================================================
#=======================================================================

namespace :populate_database do
  desc "TODO"
  task permits: :environment do

    response = HTTParty.get('https://opendata.miamidade.gov/resource/awsz-tanw.json?$limit=50000')
    data = response.parsed_response

    Permit.destroy_all
    data.each do |d|
     Permit.create d
   end

 end
end
