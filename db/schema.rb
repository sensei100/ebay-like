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

ActiveRecord::Schema.define(version: 20170507182409) do

  create_table "bookmarks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                     null: false
    t.string   "user_type"
    t.string   "document_id"
    t.string   "document_type"
    t.binary   "title",         limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["document_id"], name: "index_bookmarks_on_document_id", using: :btree
    t.index ["user_id"], name: "index_bookmarks_on_user_id", using: :btree
  end

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

  create_table "searches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.binary   "query_params", limit: 65535
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["user_id"], name: "index_searches_on_user_id", using: :btree
  end

end
