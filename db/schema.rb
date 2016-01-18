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

ActiveRecord::Schema.define(version: 20160112024512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "body"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "biz_name"
    t.string   "e_address"
    t.string   "e_city"
    t.string   "e_state"
    t.string   "e_postal"
    t.string   "e_zip_full"
    t.string   "e_country"
    t.string   "loc_county"
    t.string   "loc_area_code"
    t.string   "loc_FIPS"
    t.string   "loc_MSA"
    t.string   "loc_PMSA"
    t.string   "loc_TZ"
    t.string   "loc_DST"
    t.string   "loc_LAT_centroid"
    t.string   "loc_LAT_poly"
    t.string   "loc_LONG_centroid"
    t.string   "loc_LONG_poly"
    t.string   "biz_phone"
    t.string   "metal_spikes"
    t.string   "play_five"
    t.string   "c_holes"
    t.string   "c_type"
    t.string   "year_built"
    t.string   "c_designer"
    t.string   "c_season"
    t.string   "guest_policy"
    t.string   "dress_code"
    t.string   "green_fees"
    t.string   "weekend_rates"
    t.string   "adv_tee"
    t.string   "start_time"
    t.string   "end_time"
  end

  create_table "forecasts", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.string   "temp"
    t.string   "conditions"
    t.string   "wind_speed"
    t.string   "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "forecast_id"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tee_time_id"
    t.integer  "course_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tee_times", force: :cascade do |t|
    t.decimal  "price",         precision: 6, scale: 2
    t.string   "date"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "num_of_guests"
    t.integer  "user_id"
    t.integer  "course_id"
    t.decimal  "weekend_rates", precision: 6, scale: 2
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
