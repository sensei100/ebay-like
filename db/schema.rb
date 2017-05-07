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

ActiveRecord::Schema.define(version: 20170507175130) do

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.integer  "category_id"
    t.text     "description", limit: 65535
    t.integer  "condition"
    t.float    "price",       limit: 24
    t.integer  "format"
    t.integer  "brand_id"
    t.float    "screen_size", limit: 24
    t.integer  "color"
    t.integer  "memory"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
