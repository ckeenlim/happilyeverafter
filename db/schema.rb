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

ActiveRecord::Schema.define(version: 20160304050642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "type"
    t.integer  "category"
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "vendor_id"
  end

  create_table "todo_items", force: :cascade do |t|
    t.string   "item"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_todo_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "todo_item_id"
    t.datetime "completed_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "item"
    t.text     "description"
  end

  add_index "user_todo_items", ["todo_item_id"], name: "index_user_todo_items_on_todo_item_id", using: :btree
  add_index "user_todo_items", ["user_id"], name: "index_user_todo_items_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "officeNo"
    t.string   "homeNo"
    t.string   "cellNo"
    t.string   "cellNoAlt1"
    t.string   "cellNoAlt2"
    t.string   "cellNoAlt3"
    t.string   "cellNoAlt4"
    t.string   "emailAddress"
    t.string   "websiteUrl"
    t.string   "websiteUrlAlt1"
    t.string   "featuredVendorInd"
    t.string   "imageUrl"
    t.text     "vendorDesc"
    t.integer  "categoryId"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.json     "avatars"
  end

  add_foreign_key "posts", "users"
  add_foreign_key "user_todo_items", "todo_items"
  add_foreign_key "user_todo_items", "users"
end
