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

ActiveRecord::Schema.define(version: 20150209170202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "picture_url"
  end

  create_table "couples", force: true do |t|
    t.string   "a_fname"
    t.string   "a_lname"
    t.integer  "a_age"
    t.string   "a_gender"
    t.string   "a_email"
    t.string   "b_fname"
    t.string   "b_lname"
    t.integer  "b_age"
    t.string   "b_gender"
    t.string   "b_email"
    t.string   "city"
    t.string   "description"
    t.text     "picture_url"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "date_nights", force: true do |t|
    t.integer  "initiator_id"
    t.integer  "receiver_id"
    t.integer  "event_id"
    t.datetime "start_date"
    t.string   "meeting_location"
    t.boolean  "date_occurred"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drinks", force: true do |t|
    t.string   "base_alcohol"
    t.string   "recommended_drink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "picture_url"
  end

  create_table "events", force: true do |t|
    t.integer  "food_id"
    t.integer  "drink_id"
    t.integer  "activity_id"
    t.string   "event_theme"
    t.integer  "couple_id"
    t.integer  "times_favorited"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorites", force: true do |t|
    t.integer  "event_id"
    t.integer  "couple_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.string   "cuisine"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "picture_url"
  end

end
