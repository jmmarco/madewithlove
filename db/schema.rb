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

ActiveRecord::Schema.define(version: 20161201172500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorited_meals", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "meal_id", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cuisine"
    t.integer  "chef_id"
    t.decimal  "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "seed_image"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "patron_id"
    t.integer  "meal_id"
    t.integer  "quantity"
    t.decimal  "total_price"
    t.string   "destination_address"
    t.datetime "delivery_time"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "status",              default: "pending"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "rating"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "avatar",                     default: "avatar.png", null: false
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.string   "bio"
    t.string   "street_address"
    t.integer  "zip_code"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "chef_avatar"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "updated_image_file_name"
    t.string   "updated_image_content_type"
    t.integer  "updated_image_file_size"
    t.datetime "updated_image_updated_at"
  end

end
