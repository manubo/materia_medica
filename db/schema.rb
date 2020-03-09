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

ActiveRecord::Schema.define(version: 2020_03_09_071234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.datetime "created_at", precision: 0, null: false
    t.datetime "updated_at", precision: 0, null: false
    t.integer "sorting", default: 0, null: false
    t.index ["sorting"], name: "categories_sorting_index"
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "remedy_id", null: false
    t.bigint "category_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 0, null: false
    t.datetime "updated_at", precision: 0, null: false
    t.index ["category_id"], name: "entries_category_id_index"
    t.index ["remedy_id", "category_id"], name: "entries_remedy_id_category_id_index", unique: true
    t.index ["remedy_id"], name: "entries_remedy_id_index"
  end

  create_table "remedies", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "acronym", limit: 255
    t.datetime "created_at", precision: 0, null: false
    t.datetime "updated_at", precision: 0, null: false
    t.index ["acronym"], name: "remedies_acronym_index", unique: true
  end

  add_foreign_key "entries", "categories", on_delete: :cascade
  add_foreign_key "entries", "remedies", on_delete: :cascade
end
