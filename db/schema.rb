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

ActiveRecord::Schema.define(version: 20150704191636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer  "itinerary_id"
    t.integer  "node_id"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "events", ["itinerary_id"], name: "index_events_on_itinerary_id", using: :btree
  add_index "events", ["node_id"], name: "index_events_on_node_id", using: :btree

  create_table "itineraries", force: :cascade do |t|
    t.integer  "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "itineraries", ["trip_id"], name: "index_itineraries_on_trip_id", using: :btree

  create_table "nodes", force: :cascade do |t|
    t.string   "node_name"
    t.float    "lat"
    t.float    "long"
    t.string   "address"
    t.string   "feature"
    t.string   "subfeature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "destination"
    t.date     "start_date"
    t.date     "end_date"
    t.float    "budget"
    t.integer  "hours_per_day"
    t.string   "interest"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "trips", ["user_id"], name: "index_trips_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.date     "dob"
    t.string   "gender"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "guest"
  end

  add_foreign_key "events", "itineraries"
  add_foreign_key "events", "nodes"
  add_foreign_key "itineraries", "trips"
  add_foreign_key "trips", "users"
end
