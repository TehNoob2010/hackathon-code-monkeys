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

ActiveRecord::Schema.define(version: 2018_08_11_141054) do

  create_table "chat_sessions", force: :cascade do |t|
    t.integer "student_id"
    t.integer "tutor_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_chat_sessions_on_student_id"
    t.index ["tutor_id"], name: "index_chat_sessions_on_tutor_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.float "rating"
    t.integer "rating_count"
    t.integer "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutor_id"], name: "index_courses_on_tutor_id"
  end

  create_table "students", force: :cascade do |t|
    t.float "rating"
    t.integer "rating_count"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "tutors", force: :cascade do |t|
    t.float "rating"
    t.integer "rating_count"
    t.string "linkedin_ID"
    t.integer "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tutors_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "s_number"
    t.string "gender"
    t.string "skype_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
