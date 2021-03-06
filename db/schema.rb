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

ActiveRecord::Schema.define(version: 2020_12_17_055434) do

  create_table "merchants", force: :cascade do |t|
    t.string "owner"
    t.string "shopname"
    t.string "shoplocation"
    t.string "url"
    t.integer "visitor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["visitor_id"], name: "index_merchants_on_visitor_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.string "fullname"
    t.integer "nric"
    t.string "temperature"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "merchants", "visitors"
end
