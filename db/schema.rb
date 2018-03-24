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

ActiveRecord::Schema.define(version: 20180324030420) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "advisor_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.date     "submitted_at"
    t.text     "description"
    t.string   "industry"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "advising_type"
    t.index ["company_id"], name: "index_advisor_requests_on_company_id"
    t.index ["user_id"], name: "index_advisor_requests_on_user_id"
  end

  create_table "coaching_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "submitted_at"
    t.text     "description"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "coaching_type"
    t.index ["user_id"], name: "index_coaching_requests_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "size"
    t.string   "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_inquiries_on_company_id"
  end

  create_table "speaking_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "event_name"
    t.datetime "event_date"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_speaking_requests_on_user_id"
  end

  create_table "swag_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "quantity"
    t.string   "gender"
    t.string   "size"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "item"
    t.text     "description"
    t.index ["user_id"], name: "index_swag_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.string   "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "phone"
    t.string   "address"
  end

  create_table "writing_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.date     "submitted_at"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "writing_type"
    t.index ["company_id"], name: "index_writing_requests_on_company_id"
    t.index ["user_id"], name: "index_writing_requests_on_user_id"
  end

end
