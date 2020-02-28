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

ActiveRecord::Schema.define(version: 2020_02_27_075509) do

  create_table "polls", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "edad"
    t.string "sexo"
    t.integer "question1"
    t.integer "question2"
    t.integer "question3"
    t.integer "question4"
    t.integer "question5"
    t.integer "question6"
    t.integer "question7"
    t.integer "question8"
    t.integer "question9"
    t.integer "question10"
    t.integer "question11"
    t.integer "question12"
    t.integer "question13"
    t.integer "question14"
    t.integer "question15"
    t.integer "question16"
    t.integer "question17"
    t.integer "question18"
    t.integer "question19"
    t.integer "question20"
    t.integer "question21"
    t.integer "question22"
    t.integer "question23"
    t.integer "question24"
    t.integer "question25"
    t.integer "question26"
    t.integer "question27"
    t.integer "question28"
    t.string "question29"
    t.string "question30"
    t.string "question31"
    t.string "question32"
    t.string "question33"
    t.string "question34"
    t.string "question35"
    t.string "question36"
    t.string "question37"
    t.string "question38"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
