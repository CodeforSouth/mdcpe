class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.integer :contractorzip
      t.string :proposedusedescription
      t.string :permittype
      t.string :contractoraddress
      t.string :folionumber
      t.integer :applicationtypecode
      t.string :typecodedescription
      t.string :contractorcity
      t.string :contractorname
      t.integer :proposedusecode
      t.integer :units
      t.decimal :estimatedvalue
      t.integer :floors
      t.integer :squarefeet
      t.string :ownername
      t.string :contractorstate
      t.string :architectname
      t.timestamp :issuedate
      t.string :legaldescription1
      t.integer :permitnumber
      t.string :legaldescription2
      t.string :contractorphone
      t.string :jobsite
      t.integer :categories
      t.string :proposedusedetail

      t.timestamps null: false
    end
  end
end
