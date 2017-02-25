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

ActiveRecord::Schema.define(version: 20170225174349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "riders", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "name"
    t.string   "level"
    t.integer  "strava_id"
    t.decimal  "ytd_distance"
    t.decimal  "ytd_time"
    t.integer  "ytd_elevation"
    t.integer  "ytd_rides"
    t.decimal  "all_time_distance"
    t.decimal  "all_time_time"
    t.integer  "all_time_elevation"
    t.integer  "all_time_rides"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.decimal  "ytd_mph",            precision: 5, scale: 1
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "captain_email"
    t.integer  "year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "start_time"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

end
