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

ActiveRecord::Schema.define(:version => 20130710204040) do

  create_table "meal_offer_searches", :force => true do |t|
    t.string   "neighborhood",        :null => false
    t.integer  "price_anchor",        :null => false
    t.string   "cuisine",             :null => false
    t.integer  "user_id",             :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "restaurant_offer_id"
    t.integer  "restaurant_id"
    t.integer  "selected_meal_id"
  end

  create_table "meals", :force => true do |t|
    t.integer  "user_id",       :null => false
    t.integer  "restaurant_id", :null => false
    t.integer  "menu_item_id",  :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "menu_items", :force => true do |t|
    t.string   "dish",                       :null => false
    t.string   "menu_item_image"
    t.string   "remote_menu_item_image_url"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "restaurant_id",              :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "restaurant_offers", :force => true do |t|
    t.string   "offer_restaurant_name"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.text     "address",          :null => false
    t.string   "restaurant_image"
    t.text     "neighborhood",     :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "price_anchor",     :null => false
    t.string   "name",             :null => false
    t.string   "cuisine",          :null => false
  end

  create_table "reviews", :force => true do |t|
    t.string   "comment"
    t.boolean  "return",     :null => false
    t.integer  "meal_id",    :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "first_name",                                :null => false
    t.string   "last_name",                                 :null => false
    t.boolean  "admin",                  :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
