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

ActiveRecord::Schema.define(version: 20150927031809) do

  create_table "abilities", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ability_ups", force: :cascade do |t|
    t.integer  "level_up_id"
    t.integer  "ability_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "ability_ups", ["ability_id"], name: "index_ability_ups_on_ability_id"
  add_index "ability_ups", ["level_up_id"], name: "index_ability_ups_on_level_up_id"

  create_table "charactors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "criticals", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "level_ups", force: :cascade do |t|
    t.integer  "charactor_id"
    t.integer  "level"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "level_ups", ["charactor_id"], name: "index_level_ups_on_charactor_id"

  create_table "roll_types", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_ups", force: :cascade do |t|
    t.integer  "level_up_id"
    t.integer  "skill_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "skill_ups", ["level_up_id"], name: "index_skill_ups_on_level_up_id"
  add_index "skill_ups", ["skill_id"], name: "index_skill_ups_on_skill_id"

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "timing_id"
    t.integer  "roll_type_id"
    t.integer  "target_id"
    t.integer  "range_id"
    t.integer  "cost"
    t.integer  "sl_limit"
    t.text     "effect"
    t.integer  "critical_id"
    t.boolean  "is_magic"
    t.integer  "klass_id"
    t.integer  "race_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "skills", ["critical_id"], name: "index_skills_on_critical_id"
  add_index "skills", ["klass_id"], name: "index_skills_on_klass_id"
  add_index "skills", ["race_id"], name: "index_skills_on_race_id"
  add_index "skills", ["range_id"], name: "index_skills_on_range_id"
  add_index "skills", ["roll_type_id"], name: "index_skills_on_roll_type_id"
  add_index "skills", ["target_id"], name: "index_skills_on_target_id"
  add_index "skills", ["timing_id"], name: "index_skills_on_timing_id"

  create_table "targets", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timings", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
