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

ActiveRecord::Schema.define(version: 20150927084643) do

  create_table "abilities", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_ability_ups", force: :cascade do |t|
    t.integer  "level_up_id"
    t.integer  "ability_id"
    t.integer  "number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "base_ability_ups", ["ability_id"], name: "index_base_ability_ups_on_ability_id"
  add_index "base_ability_ups", ["level_up_id"], name: "index_base_ability_ups_on_level_up_id"

  create_table "bonuses", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charactor_items", force: :cascade do |t|
    t.integer  "charactor_id"
    t.integer  "item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "charactor_items", ["charactor_id"], name: "index_charactor_items_on_charactor_id"
  add_index "charactor_items", ["item_id"], name: "index_charactor_items_on_item_id"

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

  create_table "item_bonuses", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "bonus_id"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "item_bonuses", ["bonus_id"], name: "index_item_bonuses_on_bonus_id"
  add_index "item_bonuses", ["item_id"], name: "index_item_bonuses_on_item_id"

  create_table "item_require_klasses", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "klass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "item_require_klasses", ["item_id"], name: "index_item_require_klasses_on_item_id"
  add_index "item_require_klasses", ["klass_id"], name: "index_item_require_klasses_on_klass_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "level"
    t.integer  "weight"
    t.integer  "equiped_id"
    t.integer  "price"
    t.string   "inspect_rate"
    t.boolean  "is_consumued"
    t.integer  "timing_id"
    t.text     "comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"
  add_index "items", ["equiped_id"], name: "index_items_on_equiped_id"
  add_index "items", ["timing_id"], name: "index_items_on_timing_id"

  create_table "klasses", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.boolean  "is_main"
    t.integer  "initial_hp"
    t.integer  "initial_mp"
    t.integer  "level_up_mp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "klss_abilities", force: :cascade do |t|
    t.integer  "klass_id"
    t.integer  "ability_id"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "klss_abilities", ["ability_id"], name: "index_klss_abilities_on_ability_id"
  add_index "klss_abilities", ["klass_id"], name: "index_klss_abilities_on_klass_id"

  create_table "level_ups", force: :cascade do |t|
    t.integer  "charactor_id"
    t.integer  "level"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "level_ups", ["charactor_id"], name: "index_level_ups_on_charactor_id"

  create_table "main_klasses", force: :cascade do |t|
    t.integer  "charactor_id"
    t.integer  "klass_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "main_klasses", ["charactor_id"], name: "index_main_klasses_on_charactor_id"
  add_index "main_klasses", ["klass_id"], name: "index_main_klasses_on_klass_id"

  create_table "race_abilities", force: :cascade do |t|
    t.integer  "race_id"
    t.integer  "ability_id"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "race_abilities", ["ability_id"], name: "index_race_abilities_on_ability_id"
  add_index "race_abilities", ["race_id"], name: "index_race_abilities_on_race_id"

  create_table "races", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roll_types", force: :cascade do |t|
    t.string   "label"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_bonuses", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "bonus_id"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skill_bonuses", ["bonus_id"], name: "index_skill_bonuses_on_bonus_id"
  add_index "skill_bonuses", ["skill_id"], name: "index_skill_bonuses_on_skill_id"

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
