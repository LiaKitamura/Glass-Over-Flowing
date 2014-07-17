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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140715031715) do
=======
ActiveRecord::Schema.define(version: 20140716003858) do
>>>>>>> inception

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: true do |t|
    t.string   "category"
    t.string   "style"
    t.string   "name"
    t.string   "brewed_by"
    t.float    "ABV"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "style_id"
    t.text     "beer_description"
<<<<<<< HEAD
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "resources_category_id"
    t.text     "category_description"
=======
    t.string   "slug"
>>>>>>> inception
  end

  add_index "beers", ["slug"], name: "index_beers_on_slug", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "resources_category_id"
    t.text     "category_description"
    t.string   "slug"
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true, using: :btree

  create_table "favorites", force: true do |t|
    t.integer  "favorable_id"
    t.string   "favorable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",        null: false
  end

  add_index "favorites", ["favorable_id", "favorable_type"], name: "index_favorites_on_favorable_id_and_favorable_type", using: :btree

<<<<<<< HEAD
=======
  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

>>>>>>> inception
  create_table "styles", force: true do |t|
    t.string   "style_name"
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "resources_id"
    t.text     "style_description"
<<<<<<< HEAD
  end

  add_index "styles", ["category_id"], name: "index_styles_on_category_id", using: :btree
=======
    t.string   "slug"
  end

  add_index "styles", ["category_id"], name: "index_styles_on_category_id", using: :btree
  add_index "styles", ["slug"], name: "index_styles_on_slug", unique: true, using: :btree
>>>>>>> inception

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name",                                null: false
    t.integer  "role",                   default: 0,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role"], name: "index_users_on_role", using: :btree

end
