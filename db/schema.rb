# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_06_194653) do
  create_table "appointments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "user_role"
    t.integer "hospital_id", null: false
    t.integer "test_center_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_appointments_on_hospital_id"
    t.index ["test_center_id"], name: "index_appointments_on_test_center_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hospitals_on_user_id"
  end

  create_table "test_centers", force: :cascade do |t|
    t.string "name"
    t.integer "hospital_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_test_centers_on_hospital_id"
    t.index ["user_id"], name: "index_test_centers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.integer "role"
    t.integer "hospital_id", null: false
    t.integer "test_center_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_users_on_hospital_id"
    t.index ["test_center_id"], name: "index_users_on_test_center_id"
  end

  add_foreign_key "appointments", "hospitals"
  add_foreign_key "appointments", "test_centers"
  add_foreign_key "appointments", "users"
  add_foreign_key "hospitals", "users"
  add_foreign_key "test_centers", "hospitals"
  add_foreign_key "test_centers", "users"
  add_foreign_key "users", "hospitals"
  add_foreign_key "users", "test_centers"
end
