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

ActiveRecord::Schema.define(version: 2019_02_18_223606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.integer "organization_id"
    # t.index ["organization_id"], name: "index_addresses_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "organization_name"
    t.string "organization_phone"
    t.string "domain"
    t.integer "people_count"
    t.integer "address_id"
    # t.index ["address_id"], name: "index_organizations_on_address_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "job_title"
    t.string "email_address"
    t.string "phone"
    t.integer "organization_id"
    # t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  add_foreign_key "addresses", "organizations"
  add_foreign_key "organizations", "addresses"
  add_foreign_key "users", "organizations"
end
