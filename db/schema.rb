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

ActiveRecord::Schema.define(version: 20160815204252) do

  create_table "events", force: :cascade do |t|
    t.integer  "nurse_id"
    t.integer  "nurse"
    t.integer  "event_id"
    t.datetime "date"
    t.boolean  "confirmed"
    t.string   "shift"
  end

  create_table "nurses", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.boolean  "authorized"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "password_digest"
    t.string   "api_authtoken"
    t.datetime "authtoken_expiry"
  end

end
