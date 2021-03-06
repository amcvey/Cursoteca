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

ActiveRecord::Schema.define(version: 20150729223050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "rut"
    t.string   "name"
    t.string   "business_name"
    t.string   "business_rotation"
    t.integer  "bank_account"
    t.string   "email"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "company_id"
  end

  add_index "courses", ["company_id"], name: "index_courses_on_company_id", using: :btree

  create_table "inscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "version_course_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "purchased_course_id"
  end

  add_index "inscriptions", ["purchased_course_id"], name: "index_inscriptions_on_purchased_course_id", using: :btree
  add_index "inscriptions", ["user_id"], name: "index_inscriptions_on_user_id", using: :btree
  add_index "inscriptions", ["version_course_id"], name: "index_inscriptions_on_version_course_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.string   "order_id"
    t.string   "transaction_id"
    t.integer  "amount"
    t.string   "authorization"
    t.integer  "card_last_numbers"
    t.boolean  "status"
    t.string   "session_id"
    t.string   "payment_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "purchased_courses", force: :cascade do |t|
    t.datetime "date"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "payment_id"
  end

  add_index "purchased_courses", ["payment_id"], name: "index_purchased_courses_on_payment_id", using: :btree

  create_table "subsidiaries", force: :cascade do |t|
    t.string   "address"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subsidiaries", ["course_id"], name: "index_subsidiaries_on_course_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "version_courses", force: :cascade do |t|
    t.integer  "course_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "room"
    t.integer  "session_number"
    t.integer  "price"
    t.integer  "commission"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "version_courses", ["course_id"], name: "index_version_courses_on_course_id", using: :btree

  add_foreign_key "courses", "companies"
  add_foreign_key "inscriptions", "purchased_courses"
  add_foreign_key "inscriptions", "users"
  add_foreign_key "inscriptions", "version_courses"
  add_foreign_key "purchased_courses", "payments"
  add_foreign_key "subsidiaries", "courses"
  add_foreign_key "version_courses", "courses"
end
