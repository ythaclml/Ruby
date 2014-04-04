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

ActiveRecord::Schema.define(version: 20140404000834) do

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.date     "match_date"
    t.integer  "stage"
    t.integer  "status"
    t.string   "local"
    t.string   "visit"
    t.string   "score"
    t.string   "loser"
    t.string   "winner"
    t.string   "string"
    t.boolean  "draw"
    t.string   "group_id"
    t.string   "stadium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stadia", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.date     "construct_date"
    t.integer  "max_cap"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "coach"
    t.string   "flag"
    t.string   "uniform"
    t.string   "history"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
