#=======================================================================
#=======================================================================
# ** POPULATING YOUR LOCAL DATABASE WITH MDC'S DATA **
# Run 'rake populate_database:permits' (without quotes) to populate
# your database. Remember to migrate before you populate!
#=======================================================================
#=======================================================================

#=======================================================================
#=======================================================================
# ** GENERATE COMMAND **
# rails g model permit contractorzip:integer proposedusedescription permittype contractoraddress folionumber applicationtypecode:integer
# typecodedescription contractorcity contractorname proposedusecode:integer units:integer estimatedvalue:decimal floors:integer
# squarefeet:integer ownername contractorstate architectname issuedate:timestamp legaldescription1 permitnumber:integer
# legaldescription2 contractorphone jobsite categories:integer proposedusedetail
#=======================================================================
#=======================================================================

namespace :populate_database do
  desc "TODO"
  task permits: :environment do

    # Adjust the '$limit' value to choose the size of your table. Remove it to grab every row.
    response = HTTParty.get('https://opendata.miamidade.gov/resource/awsz-tanw.json?$limit=8000')
    data = response.parsed_response

    Permit.destroy_all
    data.each do |d|
     Permit.create d
   end

 end
end
