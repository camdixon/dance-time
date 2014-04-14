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

ActiveRecord::Schema.define(version: 20140412151711) do

  create_table "lessons", force: true do |t|
    t.integer  "student_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "scheduled_on"
    t.time     "time_of_day"
    t.boolean  "cancelled"
    t.boolean  "late"
    t.boolean  "reschedule"
    t.integer  "room"
    t.string   "day"
  end

  create_table "students", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "cell_phone"
    t.string  "home_phone"
    t.string  "email"
    t.string  "partner_first_name"
    t.string  "partner_last_name"
    t.string  "partner_cell_phone"
    t.string  "partner_home_phone"
    t.string  "partner_email"
    t.text    "description"
    t.string  "image_url"
    t.boolean "active"
    t.string  "type"
  end

  create_table "studios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "image_url"
    t.string   "logo_url"
  end

  create_table "users", force: true do |t|
    t.string  "name"
    t.string  "role"
    t.string  "email"
    t.string  "image_url"
    t.string  "password_digest"
    t.integer "studio_id"
  end

end
