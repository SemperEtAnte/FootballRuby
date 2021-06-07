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

ActiveRecord::Schema.define(version: 2021_06_07_204931) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.float "points"
    t.string "conf"
    t.index ["name"], name: "index_countries_on_name", unique: true
    t.index ["short_name"], name: "index_countries_on_short_name", unique: true
  end

  create_table "football_clubs", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.float "one"
    t.float "two"
    t.float "three"
    t.float "four"
    t.float "five"
    t.float "O"
    t.index ["country_id"], name: "index_football_clubs_on_country_id"
  end

end
