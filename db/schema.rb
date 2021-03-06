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

ActiveRecord::Schema.define(version: 20160404231036) do

  create_table "administrators", force: :cascade do |t|
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
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true

  create_table "age_groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "diagnosed_disorders", force: :cascade do |t|
    t.integer  "disorder_id"
    t.integer  "diagnosis_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "diagnosed_disorders", ["diagnosis_id"], name: "index_diagnosed_disorders_on_diagnosis_id"
  add_index "diagnosed_disorders", ["disorder_id"], name: "index_diagnosed_disorders_on_disorder_id"

  create_table "diagnoses", force: :cascade do |t|
    t.text     "obs"
    t.date     "date"
    t.integer  "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "diagnoses", ["pacient_id"], name: "index_diagnoses_on_pacient_id"

  create_table "disorder_groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "disorders", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "disorder_group_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "disorders", ["disorder_group_id"], name: "index_disorders_on_disorder_group_id"

  create_table "expertises", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "medics", force: :cascade do |t|
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
    t.string   "name"
    t.integer  "expertise_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "medics", ["email"], name: "index_medics_on_email", unique: true
  add_index "medics", ["reset_password_token"], name: "index_medics_on_reset_password_token", unique: true

  create_table "pacients", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.integer  "gender_id"
    t.integer  "medic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "pacients", ["gender_id"], name: "index_pacients_on_gender_id"
  add_index "pacients", ["medic_id"], name: "index_pacients_on_medic_id"
  add_index "pacients", ["user_id"], name: "index_pacients_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presented_testimonies", force: :cascade do |t|
    t.integer  "pacient_id"
    t.integer  "testimony_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "presented_testimonies", ["pacient_id"], name: "index_presented_testimonies_on_pacient_id"
  add_index "presented_testimonies", ["testimony_id"], name: "index_presented_testimonies_on_testimony_id"

  create_table "testimonies", force: :cascade do |t|
    t.string   "title"
    t.text     "testimony"
    t.integer  "disorder_id"
    t.integer  "age_group_id"
    t.integer  "gender_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "testimonies", ["age_group_id"], name: "index_testimonies_on_age_group_id"
  add_index "testimonies", ["disorder_id"], name: "index_testimonies_on_disorder_id"
  add_index "testimonies", ["gender_id"], name: "index_testimonies_on_gender_id"

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

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.integer  "age_group_id"
    t.integer  "gender_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "medic_id"
  end

  add_index "videos", ["age_group_id"], name: "index_videos_on_age_group_id"
  add_index "videos", ["gender_id"], name: "index_videos_on_gender_id"
  add_index "videos", ["medic_id"], name: "index_videos_on_medic_id"

end
