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

ActiveRecord::Schema.define(version: 20160721044744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "purchases", force: :cascade do |t|
    t.integer  "product_id", null: false
    t.integer  "user_id",    null: false
    t.boolean  "status",     null: false
    t.integer  "quantity",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 50, null: false
    t.string   "email",      limit: 30, null: false
    t.string   "address",    limit: 50, null: false
    t.string   "password",   limit: 20, null: false
    t.integer  "cc_number",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
