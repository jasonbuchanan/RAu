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

ActiveRecord::Schema.define(version: 20131104000351) do

  create_table "entries", force: true do |t|
    t.text     "text",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "location_id"
    t.integer  "pog_id"
  end

  add_index "entries", ["location_id"], name: "index_entries_on_location_id"
  add_index "entries", ["pog_id", "created_at"], name: "index_entries_on_pog_id_and_created_at"
  add_index "entries", ["pog_id"], name: "index_entries_on_pog_id"
  add_index "entries", ["user_id", "created_at"], name: "index_entries_on_user_id_and_created_at"
  add_index "entries", ["user_id"], name: "index_entries_on_user_id"

  create_table "locations", force: true do |t|
    t.integer  "latitude"
    t.integer  "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pogs", force: true do |t|
    t.string   "serialcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pogs", ["serialcode"], name: "index_pogs_on_serialcode", unique: true

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
