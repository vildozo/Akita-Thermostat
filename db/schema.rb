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

ActiveRecord::Schema.define(version: 20140522142632) do

  create_table "history_thermostats", force: true do |t|
    t.integer  "temperature"
    t.integer  "humidity"
    t.integer  "thermostat_id"
    t.integer  "saving"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "history_thermostats", ["thermostat_id"], name: "index_history_thermostats_on_thermostat_id"

  create_table "locations", force: true do |t|
    t.string   "property"
    t.string   "room"
    t.string   "city"
    t.string   "address"
    t.integer  "thermostat_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["thermostat_id"], name: "index_locations_on_thermostat_id"
  add_index "locations", ["user_id"], name: "index_locations_on_user_id"

  create_table "planners", force: true do |t|
    t.string   "week_day"
    t.integer  "max_temperature"
    t.integer  "min_temperature"
    t.string   "schedule"
    t.integer  "thermostat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "planners", ["thermostat_id"], name: "index_planners_on_thermostat_id"

  create_table "static_pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thermostats", force: true do |t|
    t.string   "serial"
    t.integer  "user_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "current_temperature"
    t.boolean  "enable"
    t.string   "room"
    t.integer  "humidity"
    t.float    "normal_cost"
    t.float    "current_cost"
  end

  add_index "thermostats", ["location_id"], name: "index_thermostats_on_location_id"
  add_index "thermostats", ["user_id"], name: "index_thermostats_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.integer  "role"
    t.boolean  "enable"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
