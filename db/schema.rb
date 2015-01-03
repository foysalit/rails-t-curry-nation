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

ActiveRecord::Schema.define(version: 20150103195751) do

  create_table "foods", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "recipe_foods", force: :cascade do |t|
    t.integer "recipe_id", limit: 4
    t.integer "food_id",   limit: 4
    t.string  "amount",    limit: 255
  end

  add_index "recipe_foods", ["food_id"], name: "index_recipe_foods_on_food_id", using: :btree
  add_index "recipe_foods", ["recipe_id"], name: "index_recipe_foods_on_recipe_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
