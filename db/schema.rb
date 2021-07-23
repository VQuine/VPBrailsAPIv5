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

ActiveRecord::Schema.define(version: 2021_07_23_180140) do

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.string "name"
    t.string "city"
    t.string "state"
    t.integer "prayer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prayer_id"], name: "index_comments_on_prayer_id"
  end

  create_table "prayers", force: :cascade do |t|
    t.string "body"
    t.integer "counter", default: 0
    t.string "human_name", default: "ANONYMOUS"
    t.string "human_city"
    t.string "human_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "prayers"
end
