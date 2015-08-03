# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150803144139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "permits", force: :cascade do |t|
    t.integer  "contractorzip"
    t.string   "proposedusedescription"
    t.string   "permittype"
    t.string   "contractoraddress"
    t.string   "folionumber"
    t.integer  "applicationtypecode"
    t.string   "typecodedescription"
    t.string   "contractorcity"
    t.string   "contractorname"
    t.integer  "proposedusecode"
    t.integer  "units"
    t.decimal  "estimatedvalue"
    t.integer  "floors"
    t.integer  "squarefeet"
    t.string   "ownername"
    t.string   "contractorstate"
    t.string   "architectname"
    t.datetime "issuedate"
    t.string   "legaldescription1"
    t.integer  "permitnumber"
    t.string   "legaldescription2"
    t.string   "contractorphone"
    t.string   "jobsite"
    t.integer  "categories"
    t.string   "proposedusedetail"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
