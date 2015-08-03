# Use the following command to populate the database with the MDC permits data
# rails g model permit contractorzip:integer proposedusedescription permittype contractoraddress folionumber applicationtypecode:integer typecodedescription contractorcity contractorname proposedusecode:integer units:integer estimatedvalue:decimal floors:integer squarefeet:integer ownername contractorstate architectname issuedate:timestamp legaldescription1 permitnumber:integer legaldescription2 contractorphone jobsite categories:integer proposedusedetail

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
