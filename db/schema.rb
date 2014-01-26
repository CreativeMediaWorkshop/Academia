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

ActiveRecord::Schema.define(version: 20140126023208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.string   "commenter",  null: false
    t.string   "title",      null: false
    t.text     "content"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["course_id"], name: "index_comments_on_course_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "title",                      null: false
    t.text     "description"
    t.integer  "seiue_id",                   null: false
    t.boolean  "if_open",     default: true
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "credit"
  end

  create_table "gpas", force: true do |t|
    t.integer  "gpa",                    null: false
    t.integer  "term",       default: 0
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gpas", ["course_id"], name: "index_gpas_on_course_id", using: :btree

  create_table "in_and_outs", force: true do |t|
    t.integer  "term",       default: 0
    t.integer  "in"
    t.integer  "out"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "in_and_outs", ["course_id"], name: "index_in_and_outs_on_course_id", using: :btree

end
