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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160604204627) do

  create_table "attachments", force: :cascade do |t|
    t.string   "name"
    t.text     "descr"
    t.integer  "doc_id"
    t.string   "doc_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "board_translations", force: :cascade do |t|
    t.integer  "board_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.text     "descr"
  end

  add_index "board_translations", ["board_id"], name: "index_board_translations_on_board_id"
  add_index "board_translations", ["locale"], name: "index_board_translations_on_locale"

  create_table "boards", force: :cascade do |t|
    t.string   "pn"
    t.string   "name"
    t.text     "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "combination_translations", force: :cascade do |t|
    t.integer  "combination_id", null: false
    t.string   "locale",         null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "descr"
  end

  add_index "combination_translations", ["combination_id"], name: "index_combination_translations_on_combination_id"
  add_index "combination_translations", ["locale"], name: "index_combination_translations_on_locale"

  create_table "combinations", force: :cascade do |t|
    t.integer  "sensor_id"
    t.integer  "board_id"
    t.text     "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "combinations", ["board_id"], name: "index_combinations_on_board_id"
  add_index "combinations", ["sensor_id"], name: "index_combinations_on_sensor_id"

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensor_families", force: :cascade do |t|
    t.string   "name"
    t.text     "descr"
    t.integer  "technology_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "sensor_families", ["technology_id"], name: "index_sensor_families_on_technology_id"

  create_table "sensor_family_translations", force: :cascade do |t|
    t.integer  "sensor_family_id", null: false
    t.string   "locale",           null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "name"
    t.text     "descr"
  end

  add_index "sensor_family_translations", ["locale"], name: "index_sensor_family_translations_on_locale"
  add_index "sensor_family_translations", ["sensor_family_id"], name: "index_sensor_family_translations_on_sensor_family_id"

  create_table "sensor_translations", force: :cascade do |t|
    t.integer  "sensor_id",  null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.text     "descr"
  end

  add_index "sensor_translations", ["locale"], name: "index_sensor_translations_on_locale"
  add_index "sensor_translations", ["sensor_id"], name: "index_sensor_translations_on_sensor_id"

  create_table "sensors", force: :cascade do |t|
    t.string   "pn"
    t.string   "name"
    t.text     "descr"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.integer  "sensor_family_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "sensors", ["manufacturer_id"], name: "index_sensors_on_manufacturer_id"
  add_index "sensors", ["sensor_family_id"], name: "index_sensors_on_sensor_family_id"

  create_table "technologies", force: :cascade do |t|
    t.string   "name"
    t.text     "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
