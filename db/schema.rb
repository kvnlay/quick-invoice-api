# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_13_220148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "company_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "invoice_id", null: false
    t.index ["invoice_id"], name: "index_customers_on_invoice_id"
  end

  create_table "customers_invoices", id: false, force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.bigint "customer_id", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "title"
    t.datetime "due_date"
    t.string "status"
    t.decimal "amount_paid"
    t.decimal "due_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.text "description"
    t.integer "quantity"
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "invoice_id", null: false
    t.index ["invoice_id"], name: "index_items_on_invoice_id"
  end

  create_table "taxes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type"
    t.integer "value"
    t.string "name"
    t.bigint "item_id", null: false
    t.index ["item_id"], name: "index_taxes_on_item_id"
  end

  add_foreign_key "customers", "invoices"
  add_foreign_key "items", "invoices"
  add_foreign_key "taxes", "items"
end
