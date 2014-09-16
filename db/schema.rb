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

ActiveRecord::Schema.define(version: 20140916145103) do

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

  create_table "choices", force: true do |t|
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "question_id"
  end

  add_index "choices", ["question_id"], name: "index_choices_on_question_id"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "courses", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "course_number"
    t.string   "course_title"
    t.string   "course_hours"
    t.string   "course_credits"
    t.string   "language"
    t.string   "term"
    t.boolean  "new_course"
    t.integer  "program_id"
    t.integer  "year_id"
  end

  add_index "courses", ["program_id"], name: "index_courses_on_program_id"
  add_index "courses", ["year_id"], name: "index_courses_on_year_id"

  create_table "programs", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programs", ["country_id"], name: "index_programs_on_country_id"

# Could not dump table "questions" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "rich_rich_files", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        default: "file"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.integer  "tab_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["tab_id"], name: "index_sections_on_tab_id"

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

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "years", force: true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
