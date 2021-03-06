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

ActiveRecord::Schema.define(version: 20141029153712) do

  create_table "boat_main_models", force: true do |t|
    t.string   "name"
    t.string   "small_model_image"
    t.string   "large_model_image"
    t.text     "description"
    t.integer  "boat_brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",            default: true
  end

  create_table "boat_motor_packages", force: true do |t|
    t.integer  "boat_id"
    t.integer  "motor_id"
    t.integer  "price_in_cents"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
  end

  create_table "boat_standard_features", force: true do |t|
    t.integer "boat_id"
    t.integer "standard_feature_id"
  end

  create_table "boat_upgrade_options", force: true do |t|
    t.integer  "boat_id"
    t.integer  "upgrade_option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boats", force: true do |t|
    t.integer  "brand_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "year"
    t.integer  "price_in_cents"
    t.text     "message"
    t.integer  "series_id"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",      default: true
  end

  create_table "motors", force: true do |t|
    t.string   "name"
    t.string   "hp"
    t.integer  "shaft"
    t.string   "motor_type"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standard_features", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "upgrade_options", force: true do |t|
    t.string   "name"
    t.integer  "price_in_cents"
    t.integer  "cost_in_cents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
