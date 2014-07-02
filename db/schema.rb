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

ActiveRecord::Schema.define(version: 20140643151643) do

  create_table "apps", force: true do |t|
    t.string   "name"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "apps", ["service_id"], name: "index_apps_on_service_id"

  create_table "apps_users", id: false, force: true do |t|
    t.integer "app_id"
    t.integer "user_id"
  end

  create_table "identities", force: true do |t|
    t.string   "uid"
    t.integer  "service_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["service_id"], name: "index_identities_on_service_id"
  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.boolean  "is_dynamic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "avatar_url"
    t.string   "heroku_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
