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

ActiveRecord::Schema.define(version: 20140924084650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concepts", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "home_id"
    t.integer  "concept_id"
    t.integer  "food_id"
    t.integer  "rent_id"
    t.integer  "space_id"
    t.integer  "activity_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "photos", ["activity_id"], name: "index_photos_on_activity_id", using: :btree
  add_index "photos", ["concept_id"], name: "index_photos_on_concept_id", using: :btree
  add_index "photos", ["food_id"], name: "index_photos_on_food_id", using: :btree
  add_index "photos", ["home_id"], name: "index_photos_on_home_id", using: :btree
  add_index "photos", ["location_id"], name: "index_photos_on_location_id", using: :btree
  add_index "photos", ["rent_id"], name: "index_photos_on_rent_id", using: :btree
  add_index "photos", ["space_id"], name: "index_photos_on_space_id", using: :btree

  create_table "rents", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spaces", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
