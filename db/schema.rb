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

ActiveRecord::Schema.define(version: 20190320212916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_templates", force: :cascade do |t|
    t.integer "category_id"
    t.integer "template_id"
  end

  add_index "categories_templates", ["category_id"], name: "index_categories_templates_on_category_id", using: :btree
  add_index "categories_templates", ["template_id"], name: "index_categories_templates_on_template_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "po"
    t.string   "invoice_number"
    t.datetime "invoice_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "model_id"
    t.integer  "brand_id"
    t.integer  "invoice_id"
    t.integer  "parent_id"
    t.string   "serial_number"
    t.string   "barcode"
    t.string   "country_of_orgin"
    t.decimal  "price",            precision: 8, scale: 2
    t.decimal  "weight",           precision: 5, scale: 2
    t.string   "state"
    t.text     "note"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "items", ["brand_id"], name: "index_items_on_brand_id", using: :btree
  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree
  add_index "items", ["invoice_id"], name: "index_items_on_invoice_id", using: :btree
  add_index "items", ["model_id"], name: "index_items_on_model_id", using: :btree
  add_index "items", ["parent_id"], name: "index_items_on_parent_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "templates", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "invoices"
  add_foreign_key "items", "models"
end
