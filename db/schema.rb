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

ActiveRecord::Schema.define(version: 20140514175633) do

  create_table "answers", force: true do |t|
    t.text     "answer"
    t.integer  "question_id"
    t.integer  "program_id"
    t.integer  "year_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["program_id"], name: "index_answers_on_program_id"
  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["year_id"], name: "index_answers_on_year_id"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programs", ["country_id"], name: "index_programs_on_country_id"

  create_table "questions", force: true do |t|
    t.text     "question"
    t.integer  "tab_id"
    t.integer  "type_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["tab_id"], name: "index_questions_on_tab_id"
  add_index "questions", ["type_id"], name: "index_questions_on_type_id"

  create_table "tabs", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", force: true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
