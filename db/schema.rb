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

ActiveRecord::Schema.define(version: 20151213132802) do

  create_table "administrators", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "expertise_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "medics", ["expertise_id"], name: "index_medics_on_expertise_id"

  create_table "pacients", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.integer  "gender_id"
    t.integer  "medic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pacients", ["gender_id"], name: "index_pacients_on_gender_id"
  add_index "pacients", ["medic_id"], name: "index_pacients_on_medic_id"

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

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
