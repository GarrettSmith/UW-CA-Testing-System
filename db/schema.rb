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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120124020200) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "answers", :force => true do |t|
    t.float    "earned_marks"
    t.float    "time_taken"
    t.datetime "time_submitted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_test_id"
    t.integer  "question_id"
    t.string   "type"
    t.text     "text"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.string   "number"
    t.string   "department_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrolled_students", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "section_id"
  end

  create_table "multiple_choice_options", :force => true do |t|
    t.integer  "option_id"
    t.string   "option_type"
    t.boolean  "solution"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", :force => true do |t|
    t.string   "office_number"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.float    "possible_marks"
    t.text     "text"
    t.boolean  "bonus"
    t.string   "name"
    t.integer  "answerable_id"
    t.string   "answerable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "test_id"
    t.string   "type"
  end

  create_table "section_tests", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "time_submitted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section_id"
  end

  create_table "sections", :force => true do |t|
    t.integer  "number"
    t.string   "room_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "professor_id"
    t.integer  "course_id"
    t.integer  "semester_id"
  end

  create_table "semesters", :force => true do |t|
    t.date     "start_time"
    t.date     "end_time"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_tests", :force => true do |t|
    t.datetime "time_started"
    t.datetime "time_submitted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "enrolled_student_id"
    t.integer  "section_test_id"
  end

  create_table "students", :force => true do |t|
    t.string   "student_number"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_files", :force => true do |t|
    t.string   "type"
    t.boolean  "modifiable"
    t.boolean  "executable"
    t.boolean  "highlight_syntax"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.boolean  "recieve_email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["user_name"], :name => "index_users_on_user_name", :unique => true

end
