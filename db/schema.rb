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

ActiveRecord::Schema.define(:version => 20130926043702) do

  create_table "portfolio", :force => true do |t|
    t.decimal  "value"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end


  create_table "alerts", :force => true do |t|
    t.string   "name"
    t.decimal  "value"
    t.string   "condition"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
  
  create_table "instrument_alerts", :force => true do |t|
    t.integer  "instrument_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false    
  end
  
  add_index "instrument_alerts", ["instrument_id"], :name => "index_instrument_alerts_on_instrument_id"
  
  create_table "portfolio_alerts", :force => true do |t|
    t.integer  "portfolio_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
  
  add_index "portfolio_alerts", ["portfolio_id"], :name => "index_portfolio_alerts_on_portfolio_id"
  

  create_table "bonds", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "currencies", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "deposits", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
  
 create_table "materials", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end


  create_table "instruments", :force => true do |t|
    t.string   "name"
    t.string   "shortname"
    t.integer  "amount"
    t.decimal  "value"
    t.date     "buydate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "heir_id"
    t.string   "heir_type"
  end
  
  create_table "instrument_value_histories", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "instruments", ["user_id"], :name => "index_instruments_on_user_id"







  create_table "portfolio_value_histories", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rights", :force => true do |t|
    t.integer  "numberOfportfolios"
    t.integer  "numberOfinstruments"
    t.integer  "user_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "shares", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "value_histories", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
