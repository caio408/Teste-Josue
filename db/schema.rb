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

ActiveRecord::Schema[8.0].define(version: 2024_12_23_143851) do
  create_table "additional_services", force: :cascade do |t|
    t.string "service_name"
    t.float "service_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.integer "client_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string "package_name"
    t.float "package_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "plans_id", null: false
    t.integer "additional_services_id"
    t.index ["additional_services_id"], name: "index_packages_on_additional_services_id"
    t.index ["plans_id"], name: "index_packages_on_plans_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "plan_name"
    t.float "plan_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "packages", "additional_services", column: "additional_services_id"
  add_foreign_key "packages", "plans", column: "plans_id"
end
