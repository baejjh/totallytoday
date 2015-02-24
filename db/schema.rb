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

ActiveRecord::Schema.define(version: 20150223210652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "tally_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["status_id"], name: "index_categories_on_status_id", using: :btree
  add_index "categories", ["tally_id"], name: "index_categories_on_tally_id", using: :btree

  create_table "statuses", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tallies", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status_id"
    t.string   "city"
    t.date     "date_completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tallies", ["status_id"], name: "index_tallies_on_status_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.text     "short_description"
    t.text     "quote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
