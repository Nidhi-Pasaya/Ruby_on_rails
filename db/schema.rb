# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_13_091223) do

  create_table "student_profiles", force: :cascade do |t|
    t.integer "age"
    t.string "email"
    t.string "address"
    t.integer "mobile"
    t.integer "Student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.index ["Student_id"], name: "index_student_profiles_on_Student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.integer "mark1"
    t.integer "mark2"
    t.integer "mark3"
    t.float "total"
    t.float "percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "student_profiles", "Students"
end
