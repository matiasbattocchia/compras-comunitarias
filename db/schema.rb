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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130126190929) do

  create_table "order_items", :force => true do |t|
    t.integer  "quantity"
    t.integer  "order_id"
    t.integer  "prices_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "order_items", ["order_id"], :name => "index_order_items_on_order_id"
  add_index "order_items", ["prices_id"], :name => "index_order_items_on_prices_id"

  create_table "orders", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prices", :force => true do |t|
    t.integer  "purchase_id"
    t.integer  "product_id"
    t.decimal  "provisional"
    t.decimal  "cost"
    t.decimal  "sale"
    t.decimal  "purchase"
    t.decimal  "crate"
    t.boolean  "preselected"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "prices", ["product_id"], :name => "index_prices_on_product_id"
  add_index "prices", ["purchase_id"], :name => "index_prices_on_purchase_id"

  create_table "products", :force => true do |t|
    t.string   "description"
    t.integer  "quantity"
    t.decimal  "weight"
    t.integer  "supplier_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "products", ["supplier_id"], :name => "index_products_on_supplier_id"

  create_table "purchases", :force => true do |t|
    t.date     "date"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
