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

ActiveRecord::Schema.define(version: 20160930035942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.string   "due_month"
    t.integer  "status"
    t.integer  "user_id"
    t.decimal  "value",      precision: 8, scale: 2, default: "0.0"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.index ["user_id"], name: "index_bills_on_user_id", using: :btree
  end

  create_table "building_locations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "building_messages", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "message_description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "message_title"
    t.index ["user_id"], name: "index_building_messages_on_user_id", using: :btree
  end

  create_table "devices", force: :cascade do |t|
    t.string   "name"
    t.string   "token"
    t.boolean  "enabled",    default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_number"
    t.string   "delivery_address"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.date     "maintenance_date"
    t.integer  "building_location_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["building_location_id"], name: "index_products_on_building_location_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "building_location_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "start_hour"
    t.integer  "end_hour"
    t.date     "event_date"
    t.integer  "guest_quantity",       default: 0
    t.string   "reservation_name"
    t.integer  "status",               default: 1
    t.index ["building_location_id"], name: "index_reservations_on_building_location_id", using: :btree
    t.index ["user_id"], name: "index_reservations_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.integer  "gender"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "email"
    t.string   "auth_token"
    t.string   "password_digest"
    t.string   "profile_image_id"
    t.string   "profile_image_filename"
    t.integer  "profile_image_size"
    t.string   "profile_image_content_type"
    t.string   "apartment"
  end

  add_foreign_key "bills", "users"
  add_foreign_key "building_messages", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "building_locations"
  add_foreign_key "reservations", "building_locations"
  add_foreign_key "reservations", "users"
end
