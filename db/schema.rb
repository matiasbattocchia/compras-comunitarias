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

ActiveRecord::Schema.define(:version => 20121004203937) do

  create_table "attendances", :force => true do |t|
    t.integer  "meeting_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "attendances", ["meeting_id"], :name => "index_attendances_on_meeting_id"

  create_table "basic_units", :force => true do |t|
    t.string   "name"
    t.string   "commune"
    t.string   "neighborhood"
    t.string   "address"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "bundles", :force => true do |t|
    t.string   "product"
    t.integer  "size"
    t.decimal  "weight"
    t.decimal  "cost"
    t.decimal  "crate_cost"
    t.decimal  "with_freight_cost"
    t.decimal  "price"
    t.string   "status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "feed_tables", :force => true do |t|
    t.decimal  "balance"
    t.string   "unload_address"
    t.string   "sale_address"
    t.time     "open_time"
    t.time     "close_time"
    t.string   "modality"
    t.string   "other_activities"
    t.integer  "basic_unit_id"
    t.integer  "attendance_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "feed_tables", ["attendance_id"], :name => "index_feed_tables_on_attendance_id"
  add_index "feed_tables", ["basic_unit_id"], :name => "index_feed_tables_on_basic_unit_id"

  create_table "line_bundles", :force => true do |t|
    t.integer  "bundle_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "line_bundles", ["bundle_id"], :name => "index_line_bundles_on_bundle_id"
  add_index "line_bundles", ["order_id"], :name => "index_line_bundles_on_order_id"

  create_table "meetings", :force => true do |t|
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "order_line_products", :force => true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "order_line_products", ["order_id"], :name => "index_order_line_products_on_order_id"
  add_index "order_line_products", ["product_id"], :name => "index_order_line_products_on_product_id"

  create_table "orders", :force => true do |t|
    t.integer  "feed_table_id"
    t.decimal  "weight"
    t.decimal  "cost"
    t.decimal  "crate_cost"
    t.decimal  "with_freight_cost"
    t.decimal  "price"
    t.integer  "bundles"
    t.integer  "crates"
    t.string   "status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "orders", ["feed_table_id"], :name => "index_orders_on_feed_table_id"

  create_table "payments", :force => true do |t|
    t.decimal  "amount"
    t.integer  "feed_table_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "payments", ["feed_table_id"], :name => "index_payments_on_feed_table_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "weight"
    t.integer  "quantity"
    t.decimal  "cost"
    t.integer  "freight_modifier"
    t.integer  "price_modifier"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
